using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Threading;
using Quartz;
using Newtonsoft.Json;
using log4net;
using eWorld.EMPI.Model.Enums;
using eWorld.EMPI.Configuration;
using eWorld.EMPI.Job.Util;
using eWorld.EMPI.Job.Exceptions;
using eWorld.EMPI.Model.DTO;
using System.Net;
using System.Xml;
using eWorld.EMPI.Model;
using System.IO;

namespace eWorld.EMPI.Job
{
    [DisallowConcurrentExecution]
    public class IDCASExamInfoToEMPI : IInterruptableJob
    {
        /// <summary>
        /// 当前线程句柄
        /// </summary>
        private volatile Thread threadHandler = null;
        private readonly ILog _logger;
        /// <summary>
        /// 每次采集几条任务
        /// </summary>
        private int taskRowsForEachJob;
        /// <summary>
        /// 起始采集时间
        /// </summary>
        private DateTime? startObservationDate = null;
        private List<Hospital> hospitals;

        public IDCASExamInfoToEMPI()
        {
            _logger = LogManager.GetLogger(GetType());
        }
        public void Execute(IJobExecutionContext context)
        {
            GetJobParams();

            _logger.Info("执行云归档患者信息同步任务");
            try
            {
                PatientExamListQuery query = new PatientExamListQuery
                {
                    ObservationDate = this.startObservationDate,
                    RowCount = this.taskRowsForEachJob
                };
                var examresult = WebApiRequestHelper.GetPatientExamList(query);
                if (examresult != null && examresult.Count <= 0)
                {
                    // 查不到数据了
                    throw new EmptyResultException();
                }
                _logger.DebugFormat("总共查询到{0}待注册的患者主索引记录", examresult.Count);

                int nIndex = 1;
                foreach (var item in examresult)
                {
                    _logger.InfoFormat("同步第{0}条ObservationRequest记录，ObservationUID={1}", nIndex, item.ObservationRequest.ObservationUID);
                    try
                    {
                        if (CollectExam(item))
                        {
                            UpdateCollectState(item.ObservationRequest.ObservationUID, 1);//更新已注册标示                           
                        }
                        else
                        {
                            UpdateCollectState(item.ObservationRequest.ObservationUID, 2);//更新注册失败标示         
                        }
                        nIndex++;
                    }
                    catch (Exception ex)
                    {
                        UpdateCollectState(item.ObservationRequest.ObservationUID, 2);//更新注册失败标示         
                        _logger.Error($"同步第{nIndex}条ObservationRequest记录，出现异常：{JsonConvert.SerializeObject(item)}", ex);
                        continue;
                    }
                }
            }
            catch (EmptyResultException)
            {
                int s = 1000 * 60 * 2;
                _logger.InfoFormat("未查询到待同步的患者信息，休眠{0}", s);
                Thread.Sleep(s);
            }
            catch (Exception e)
            {
                _logger.Error($"执行同步患者信息到主索引库，出现异常：{e.Message}", e);
            }
        }
        public void Interrupt()
        {
            if (this.threadHandler != null)
            {
                this.threadHandler.Interrupt();
            }
        }

        /// <summary>
        /// 采集检查
        /// </summary>
        /// <returns></returns>
        private bool CollectExam(PatientExamListDTO item)
        {
            bool bSuccess = false;
            try
            {
                _logger.DebugFormat("开始采集检查记录, observationUID={0}", item.ObservationRequest.ObservationUID);

                if (item.PatientIndex != null && item.ObservationRequest != null)
                {
                    _logger.Debug("获取检查文档信息");
                    List<ExamDocument> examDocuments = WebApiRequestHelper.GetExamDocuments(item.ObservationRequest.ObservationUID);
                    if (examDocuments != null)
                    {
                        string xml = BuildExamInfo(item, examDocuments);

                        //_logger.InfoFormat("构造xml:{0}", xml);

                        var result = WebApiRequestHelper.RegistryExam(xml);
                        if (result.code == ResultCodeEnum.Success)
                        {
                            _logger.InfoFormat("注册检查{0}成功:RepositoryUniqueId = {1}", item.ObservationRequest.ObservationUID, result.msg);

                            bSuccess = true;
                        }
                        else
                        {
                            _logger.Error("注册检查失败");
                        }
                    }
                }
                else
                {
                    _logger.Error($"调用RegistPatientExam出错, ObservationUID:{item.ObservationRequest.ObservationUID}，患者检查信息不完整");
                }
            }
            catch (Exception ex)
            {
                _logger.Error($"调用RegistPatientExam出错, ObservationUID:{item.ObservationRequest.ObservationUID}", ex);
            }

            return bSuccess;
        }

        /// <summary>
        /// 更新采集状态
        /// </summary>
        /// <param name="model"></param>
        private void UpdateCollectState(Guid observationUID, short pushState)
        {
            var result = WebApiRequestHelper.UpdateAcquisitionStatus(new UpdateAcquisitionStatusQuery()
            {
                ObservationUID = observationUID,
                PushState = pushState
            });

            if (result.code != ResultCodeEnum.Success)
            {
                throw new ApplicationException($"{result.msg}");
            }

            _logger.InfoFormat("更新检查：{0} 采集状态为{1}", observationUID, pushState);
        }

        /// <summary>
        /// 获取任务参数
        /// </summary>
        /// <param name="context"></param>
        private void GetJobParams()
        {
            var TaskRowsForEachJob = AppConfig.GetConfig("TaskRowsForEachJob");//每次查询条数
            if (!string.IsNullOrWhiteSpace(TaskRowsForEachJob))
            {
                this.taskRowsForEachJob = Convert.ToInt32(TaskRowsForEachJob);
            }
            else
            {
                this.taskRowsForEachJob = 50;
            }

            var StartObservationDate = AppConfig.GetConfig("StartObservationDate");
            if (!string.IsNullOrWhiteSpace(StartObservationDate))
            {
                this.startObservationDate = Convert.ToDateTime(StartObservationDate);
            }
            else
            {
                this.startObservationDate = DateTime.Now.AddMonths(-1);
            }

            try
            {
                hospitals = JsonConvert.DeserializeObject<List<Hospital>>(File.ReadAllText("./hospitals.json", Encoding.UTF8));
            }
            catch (Exception ex)
            {
                _logger.Error("读取医院配置异常", ex);

                hospitals = new List<Hospital>();
            }
        }

        private const string xmlns_value = "urn:ihe:iti:xds-b:2007";
        private const string xmlns_lcm_name = "lcm";
        private const string xmlns_lcm_value = "urn:oasis:names:tc:ebxml-regrep:xsd:lcm:3.0";
        private const string xmlns_rim_name = "rim";
        private const string xmlns_rim_value = "urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0";

        private string BuildExamInfo(PatientExamListDTO exam, List<ExamDocument> examDocuments)
        {
            _logger.InfoFormat($"创建注册检查XML信息：PatientExamListDTO：{exam}，examDocuments：{examDocuments}");
            XmlDocument doc = new XmlDocument();

            XmlElement provideAndRegisterDocumentSetRequest = doc.CreateElement("ProvideAndRegisterDocumentSetRequest");
            provideAndRegisterDocumentSetRequest.SetAttribute("xmlns:xsi", "http://www.w3.org/2001/XMLSchema-instance");
            provideAndRegisterDocumentSetRequest.SetAttribute("xsi:schemaLocation", "urn:ihe:iti:xds-b:2007 ../../schema/IHE/XDS.b_DocumentRepository.xsd");
            provideAndRegisterDocumentSetRequest.SetAttribute("xmlns", xmlns_value);
            provideAndRegisterDocumentSetRequest.SetAttribute($"xmlns:{xmlns_lcm_name}", xmlns_lcm_value);
            provideAndRegisterDocumentSetRequest.SetAttribute($"xmlns:{xmlns_rim_name}", xmlns_rim_value);
            provideAndRegisterDocumentSetRequest.SetAttribute("xmlns:rs", "urn:oasis:names:tc:ebxml-regrep:xsd:rs:3.0");

            XmlElement submitObjectsRequest = doc.CreateElement(xmlns_lcm_name, "SubmitObjectsRequest", xmlns_lcm_value);
            XmlElement registryObjectList = doc.CreateElement(xmlns_rim_name, "RegistryObjectList", xmlns_rim_value);

            XmlElement objectRefNode;
            for (int i = 0; i < 19; i++)
            {
                objectRefNode = doc.CreateElement("ObjectRef");
                objectRefNode.SetAttribute("id", $"urn:uuid:{Guid.NewGuid()}");
                objectRefNode.SetAttribute("xmlns", xmlns_value);
                registryObjectList.AppendChild(objectRefNode);
            }

            string sourcePatientId = exam.PatientIndex.PatientID;
            string[] sourcePatientInfo = new string[] {
                $"PID-3|{exam.PatientIndex.PatientID}",
                $"PID-5|{exam.PatientIndex.Name}",
                $"PID-7|{exam.PatientIndex.BirthDate?.ToString("yyyyMMdd")}",
                $"PID-8|{(exam.PatientIndex.Sex==null?"":exam.PatientIndex.Sex=="男"?"M":"F")}",
                $"PID-11|{exam.PatientIndex.AddressDetail}",
                $"PID-20|{exam.PatientIndex.InsuranceID}",
                "PID-21|2",
                $"PID-22|{exam.PatientIndex.IDCardNO}",
                "PID-23|1",
                $"PID-24|{exam.PatientVisit.Age}",
                $"PID-25|{exam.PatientVisit.AgeUnit}"
            };

            Dictionary<string, string> codingSchemeList = new Dictionary<string, string>()
            {
                {"检查报告", "S.05.002" }, // 固定值
                {"普通", "0" }, // 固定值
                {"医疗机构信息基础模版", "MT17" }, // 固定值
                {exam.ObservationRequest.OrganizationName, "A100" },
                {exam.ObservationRequest.ClinicDiagnosis, "06" },
                {"特殊检查及治疗同意书", "1" }, // 固定值
            };

            XmlElement registryPackage = doc.CreateElement(xmlns_rim_name, "RegistryPackage", xmlns_rim_value);
            registryPackage.SetAttribute("id", "提交集名称1");
            registryPackage.AppendChild(BuildSlotNode(doc, "submissionTime", "20101230"));
            registryPackage.AppendChild(BuildNameNode(doc, "Name", "提交集标题"));
            registryPackage.AppendChild(BuildNameNode(doc, "Description", "s.Remark"));

            XmlElement extrinsicObject;
            XmlElement classificationNode;
            XmlElement externalIdentifierNode;
            XmlElement documentNode;
            for (int i = 0; i < examDocuments.Count; i++)
            {
                string docId = examDocuments[i].FileUID;
                string docName = examDocuments[i].OriginalFileName;
                string docDescription = "";
                string documentType = examDocuments[i].TypeCode;
                string docMimeType = examDocuments[i].MimeType;
                string docUrl = examDocuments[i].FileRelativePath;
                string docCreationTime = examDocuments[i].FileCreateTime.ToString("yyyyMMdd");

                extrinsicObject = doc.CreateElement(xmlns_rim_name, "ExtrinsicObject", xmlns_rim_value);
                extrinsicObject.SetAttribute("id", docId);
                extrinsicObject.SetAttribute("mimeType", docMimeType);
                extrinsicObject.SetAttribute("objectType", $"urn:uuid:{Guid.NewGuid()}");

                extrinsicObject.AppendChild(BuildSlotNode(doc, "creationTime", docCreationTime));
                extrinsicObject.AppendChild(BuildSlotNode(doc, "languageCode", "zh-cn"));
                extrinsicObject.AppendChild(BuildSlotNode(doc, "serviceStartTime", "20101010120000"));
                extrinsicObject.AppendChild(BuildSlotNode(doc, "serviceStopTime", "20101010120000"));
                extrinsicObject.AppendChild(BuildSlotNode(doc, "sourcePatientId", sourcePatientId));
                extrinsicObject.AppendChild(BuildSlotNode(doc, "sourcePatientInfo", sourcePatientInfo));

                extrinsicObject.AppendChild(BuildNameNode(doc, "Name", docName));
                extrinsicObject.AppendChild(BuildNameNode(doc, "Description", docDescription));

                classificationNode = doc.CreateElement(xmlns_rim_name, "Classification", xmlns_rim_value);
                classificationNode.SetAttribute("id", "27ea0f9b-86ee-4d4c-8c20-efcc9aaa1fed");
                classificationNode.SetAttribute("classificationScheme", "urn:uuid:93606bcf-9494-43ec-9b4e-a7748d1a838d");
                classificationNode.SetAttribute("classifiedObject", docId);
                classificationNode.SetAttribute("nodeRepresentation", "");
                classificationNode.AppendChild(BuildSlotNode(doc, "authorPerson", ""));
                classificationNode.AppendChild(BuildSlotNode(doc, "authorInstitution", exam.ObservationRequest.OrganizationName));
                classificationNode.AppendChild(BuildSlotNode(doc, "authorRole", ""));
                classificationNode.AppendChild(BuildSlotNode(doc, "authorSpecialty", ""));
                extrinsicObject.AppendChild(classificationNode);

                foreach (var item in codingSchemeList)
                {
                    classificationNode = doc.CreateElement(xmlns_rim_name, "Classification", xmlns_rim_value);
                    classificationNode.SetAttribute("id", Guid.NewGuid().ToString());
                    classificationNode.SetAttribute("classificationScheme", $"urn:uuid:{Guid.NewGuid()}");
                    classificationNode.SetAttribute("classifiedObject", docId);
                    classificationNode.SetAttribute("nodeRepresentation", item.Value);
                    classificationNode.AppendChild(BuildSlotNode(doc, "codingScheme", item.Key));
                    classificationNode.AppendChild(BuildNameNode(doc, "Name", item.Value));
                    extrinsicObject.AppendChild(classificationNode);
                }

                externalIdentifierNode = doc.CreateElement(xmlns_rim_name, "ExternalIdentifier", xmlns_rim_value);
                externalIdentifierNode.SetAttribute("id", "urn:uuid:62042122-e0ee-4a23-a080-1c9961dfaeaa");
                externalIdentifierNode.SetAttribute("registryObject", docId);
                externalIdentifierNode.SetAttribute("identificationScheme", "urn:uuid:58a6f841-87b3-4a3e-92fd-a8ffeff98427");
                externalIdentifierNode.SetAttribute("value", "G0000044729");
                externalIdentifierNode.AppendChild(BuildNameNode(doc, "Name", "XDSDocumentEntry.patientId"));
                extrinsicObject.AppendChild(externalIdentifierNode);

                externalIdentifierNode = doc.CreateElement(xmlns_rim_name, "ExternalIdentifier", xmlns_rim_value);
                externalIdentifierNode.SetAttribute("id", "urn:uuid:e3af122c-69b7-4821-af49-054958e62c6d");
                externalIdentifierNode.SetAttribute("registryObject", docId);
                externalIdentifierNode.SetAttribute("identificationScheme", "urn:uuid:2e82c1f6-a085-4c72-9da3-8640a32e42ab");
                externalIdentifierNode.SetAttribute("value", "4847864a-d8c6-42b8-88c0-ef2692544e23");
                extrinsicObject.AppendChild(externalIdentifierNode);

                externalIdentifierNode = doc.CreateElement(xmlns_rim_name, "ExternalIdentifier", xmlns_rim_value);
                externalIdentifierNode.SetAttribute("id", $"urn:uuid:$ERAD_DOCUMENT_EXTERNAL_IDENTIFIER_PATIENT_ID$");
                externalIdentifierNode.SetAttribute("registryObject", "$ERAD_DOCUMENT_ID$");
                externalIdentifierNode.SetAttribute("identificationScheme", $"urn:uuid:{Guid.NewGuid()}");
                externalIdentifierNode.SetAttribute("value", ""); //此次注册的所有文档的父ID
                externalIdentifierNode.AppendChild(BuildNameNode(doc, "Name", "XDSDocumentEntry.patientId"));
                extrinsicObject.AppendChild(externalIdentifierNode);

                externalIdentifierNode = doc.CreateElement(xmlns_rim_name, "ExternalIdentifier", xmlns_rim_value);
                externalIdentifierNode.SetAttribute("id", $"urn:uuid:uuid");
                externalIdentifierNode.SetAttribute("registryObject", docId);
                externalIdentifierNode.SetAttribute("identificationScheme", $"urn:uuid:{Guid.NewGuid()}");
                externalIdentifierNode.SetAttribute("value", docId); //文档uniqueId
                externalIdentifierNode.AppendChild(BuildNameNode(doc, "Name", "XDSDocumentEntry.uniqueId"));
                extrinsicObject.AppendChild(externalIdentifierNode);

                registryObjectList.AppendChild(extrinsicObject);

                documentNode = doc.CreateElement("Document");
                documentNode.SetAttribute("id", docId);
                documentNode.SetAttribute("documentType", documentType);
                documentNode.InnerText = docUrl;
                provideAndRegisterDocumentSetRequest.AppendChild(documentNode);
            }

            classificationNode = doc.CreateElement(xmlns_rim_name, "Classification", xmlns_rim_value);
            classificationNode.SetAttribute("id", Guid.NewGuid().ToString());
            classificationNode.SetAttribute("classificationScheme", Guid.NewGuid().ToString());
            classificationNode.SetAttribute("classifiedObject", "提交集名称1");
            classificationNode.SetAttribute("nodeRepresentation", "");
            classificationNode.AppendChild(BuildSlotNode(doc, "authorPerson", "作者名称"));
            classificationNode.AppendChild(BuildSlotNode(doc, "authorInstitution", "S部门"));
            classificationNode.AppendChild(BuildSlotNode(doc, "authorRole", "S角色"));
            classificationNode.AppendChild(BuildSlotNode(doc, "authorSpecialty", "S专业"));
            registryPackage.AppendChild(classificationNode);

            classificationNode = doc.CreateElement(xmlns_rim_name, "Classification", xmlns_rim_value);
            classificationNode.SetAttribute("id", Guid.NewGuid().ToString());
            classificationNode.SetAttribute("classificationScheme", Guid.NewGuid().ToString());
            classificationNode.SetAttribute("classifiedObject", "提交集名称1");
            classificationNode.SetAttribute("nodeRepresentation", "EMR040001");
            classificationNode.AppendChild(BuildSlotNode(doc, "codingScheme", "检查记录"));
            string mzzybz = "9";
            if (exam.ObservationRequest != null)
            {
                switch (exam.ObservationRequest.PatientClass)
                {
                    case "门诊":
                        mzzybz = "1";
                        break;
                    case "住院":
                        mzzybz = "2";
                        break;
                    case "急诊":
                        mzzybz = "3";
                        break;
                    case "体检":
                        mzzybz = "4";
                        break;
                    default:
                        mzzybz = "9";
                        break;
                }


            }
            classificationNode.AppendChild(BuildSlotNode(doc, "YNJCH", exam.ObservationRequest.AccessionNumber)); //院内检查号
            classificationNode.AppendChild(BuildSlotNode(doc, "wjz", exam.ObservationRequest.CriticalValue)); //危急值
            classificationNode.AppendChild(BuildSlotNode(doc, "mzzybz", mzzybz)); //门住院标志
            classificationNode.AppendChild(BuildSlotNode(doc, "mzjzlsh", exam.PatientVisit?.OutPatientNO)); //门诊就诊流水号
            classificationNode.AppendChild(BuildSlotNode(doc, "zyjzlsh", exam.PatientVisit?.InPatientNO)); //住院就诊流水号
            classificationNode.AppendChild(BuildSlotNode(doc, "zybah", exam.PatientVisit?.MedRecNO)); //住院病案号
            classificationNode.AppendChild(BuildSlotNode(doc, "bszy", exam.ObservationRequest.RelevantClinicalInfo)); //病史摘要
            classificationNode.AppendChild(BuildSlotNode(doc, "bz", exam.ObservationRequest.Reason)); //备注
            classificationNode.AppendChild(BuildSlotNode(doc, "jcgz", exam.ObservationRequest.Attention)); //检查告知
            classificationNode.AppendChild(BuildSlotNode(doc, "jcsqksbzbm", hospitals.FirstOrDefault(x => x.Name == exam.ObservationRequest.RequestDeptName)?.Code)); //检查申请科室标准编码 exam.ObservationRequest.RequestDeptID
            classificationNode.AppendChild(BuildSlotNode(doc, "jcsqksynbm", exam.ObservationRequest.RequestDeptID)); //检查申请科室院内编码
            classificationNode.AppendChild(BuildSlotNode(doc, "jcsqksynmc", exam.ObservationRequest.RequestDeptName)); //检查申请科室名称
            classificationNode.AppendChild(BuildSlotNode(doc, "jcsqysgh", exam.ObservationRequest.ProviderID)); //检查申请医生工号
            classificationNode.AppendChild(BuildSlotNode(doc, "jcsqys", exam.ObservationRequest.ProviderName)); //检查申请医生姓名
            classificationNode.AppendChild(BuildSlotNode(doc, "jcsqbm", hospitals.FirstOrDefault(x => x.Name == exam.ObservationRequest.RequestOrgName)?.Code)); //检查申请机构编码
            classificationNode.AppendChild(BuildSlotNode(doc, "jcsqmc", exam.ObservationRequest.RequestOrgName)); //检查申请机构名称
            classificationNode.AppendChild(BuildSlotNode(doc, "jbzdmc", exam.ObservationRequest.ClinicDiagnosis)); //疾病诊断名称
            classificationNode.AppendChild(BuildSlotNode(doc, "zdjgbm", hospitals.FirstOrDefault(x => x.Name == exam.ObservationRequest.OrganizationName)?.Code)); //诊断机构编码
            classificationNode.AppendChild(BuildSlotNode(doc, "zdjgmc", exam.ObservationRequest.OrganizationName)); //诊断机构名称
            classificationNode.AppendChild(BuildSlotNode(doc, "mzysgh", "")); //麻醉医师工号
            classificationNode.AppendChild(BuildSlotNode(doc, "mzysxm", "")); //麻醉医师名称
            classificationNode.AppendChild(BuildSlotNode(doc, "jcysgh", "")); //检查医生工号
            classificationNode.AppendChild(BuildSlotNode(doc, "jcysxm", exam.ObservationRequest.TechnicianName)); //检查医生姓名
            classificationNode.AppendChild(BuildSlotNode(doc, "bgysgh", "")); //报告医生工号
            classificationNode.AppendChild(BuildSlotNode(doc, "bgysxm", exam.ObservationRequest.ResultAssistantName)); //报告医生姓名
            classificationNode.AppendChild(BuildSlotNode(doc, "shysgh", "")); //审核医生工号
            classificationNode.AppendChild(BuildSlotNode(doc, "shysxm", exam.ObservationRequest.ResultReviseName)); //审核医生姓名
            classificationNode.AppendChild(BuildSlotNode(doc, "jcbgksbzbm", exam.ObservationRequest.DataSource)); //检查报告科室标准编码
            classificationNode.AppendChild(BuildSlotNode(doc, "jcbgksynbm", "")); //检查报告科室院内编码
            classificationNode.AppendChild(BuildSlotNode(doc, "jcbgksbzmc", exam.ObservationRequest.DataSourceName)); //检查报告科室名称
            classificationNode.AppendChild(BuildSlotNode(doc, "sfybg", examDocuments.Any(x => x.TypeCode == "ExamResult").ToString())); //是否有报告
            classificationNode.AppendChild(BuildSlotNode(doc, "syyyx", examDocuments.Any(x => x.TypeCode == "ExamImage").ToString())); //是否有影像
            classificationNode.AppendChild(BuildSlotNode(doc, "YXSYH", exam.ObservationRequest.ObservationUID.ToString())); //影像索引号
            classificationNode.AppendChild(BuildSlotNode(doc, "JCSJ", exam.ObservationRequest.ObservationDate.ToString("yyyy-MM-dd HH:mm:ss"))); //检查时间
            classificationNode.AppendChild(BuildSlotNode(doc, "BGSJ", exam.ObservationRequest.ResultDate?.ToString("yyyy-MM-dd HH:mm:ss"))); //报告时间
            classificationNode.AppendChild(BuildSlotNode(doc, "JCLB", exam.ObservationRequest.ServiceSectID)); //检查类别
            classificationNode.AppendChild(BuildSlotNode(doc, "JCXMBM", exam.ObservationRequest.ServiceID)); //检查项目编码
            classificationNode.AppendChild(BuildSlotNode(doc, "JCXM", exam.ObservationRequest.ServiceText)); //检查项目
            classificationNode.AppendChild(BuildSlotNode(doc, "CZBM", "")); //操作编码
            classificationNode.AppendChild(BuildSlotNode(doc, "JCBWMC", exam.ObservationRequest.ProcedureName)); //检查部位名称
            classificationNode.AppendChild(BuildSlotNode(doc, "JCJG", HandleExamAbnormalFlags(exam.ObservationRequest.AbnormalFlags))); //检查结果
            classificationNode.AppendChild(BuildSlotNode(doc, "JCBGJGKGSJ", exam.ObservationResultList.FirstOrDefault(x => x.ValueTitle == "影像所见")?.ValueText)); //检查报告结果-客观所见
            classificationNode.AppendChild(BuildSlotNode(doc, "JCBGJGZGTS", exam.ObservationResultList.FirstOrDefault(x => x.ValueTitle == "影像诊断")?.ValueText)); //检查报告结果-主观提示
            classificationNode.AppendChild(BuildSlotNode(doc, "sccs", "CS002")); //上传厂商（莱达：CS001,明天医网：CS002）
            classificationNode.AppendChild(BuildNameNode(doc, "Name", "EMR040001"));
            registryPackage.AppendChild(classificationNode);

            externalIdentifierNode = doc.CreateElement(xmlns_rim_name, "ExternalIdentifier", xmlns_rim_value);
            externalIdentifierNode.SetAttribute("id", $"urn:uuid:{Guid.NewGuid()}");
            externalIdentifierNode.SetAttribute("registryObject", "提交集名称1");
            externalIdentifierNode.SetAttribute("identificationScheme", $"urn:uuid:{Guid.NewGuid()}");
            externalIdentifierNode.SetAttribute("value", $"urn:uuid:{Guid.NewGuid()}");
            externalIdentifierNode.AppendChild(BuildNameNode(doc, "Name", "XDSSubmissionSet.uniqueId"));
            registryPackage.AppendChild(externalIdentifierNode);

            externalIdentifierNode = doc.CreateElement(xmlns_rim_name, "ExternalIdentifier", xmlns_rim_value);
            externalIdentifierNode.SetAttribute("id", $"urn:uuid:{Guid.NewGuid()}");
            externalIdentifierNode.SetAttribute("registryObject", "提交集名称1");
            externalIdentifierNode.SetAttribute("identificationScheme", $"urn:uuid:{Guid.NewGuid()}");
            externalIdentifierNode.SetAttribute("value", "P903");
            externalIdentifierNode.AppendChild(BuildNameNode(doc, "Name", "XDSSubmissionSet.sourceId"));
            registryPackage.AppendChild(externalIdentifierNode);

            externalIdentifierNode = doc.CreateElement(xmlns_rim_name, "ExternalIdentifier", xmlns_rim_value);
            externalIdentifierNode.SetAttribute("id", $"urn:uuid:{Guid.NewGuid()}");
            externalIdentifierNode.SetAttribute("registryObject", "提交集名称1");
            externalIdentifierNode.SetAttribute("identificationScheme", $"urn:uuid:{Guid.NewGuid()}");
            externalIdentifierNode.SetAttribute("value", "G0000044729");
            externalIdentifierNode.AppendChild(BuildNameNode(doc, "Name", "XDSSubmissionSet.patientId"));
            registryPackage.AppendChild(externalIdentifierNode);

            registryObjectList.AppendChild(registryPackage);

            classificationNode = doc.CreateElement(xmlns_rim_name, "Classification", xmlns_rim_value);
            classificationNode.SetAttribute("id", Guid.NewGuid().ToString());
            classificationNode.SetAttribute("classifiedObject", "提交集名称1");
            classificationNode.SetAttribute("classificationNode", $"urn:uuid:{Guid.NewGuid()}");
            registryObjectList.AppendChild(classificationNode);

            XmlElement association = doc.CreateElement(xmlns_rim_name, "Association", xmlns_rim_value);
            association.SetAttribute("id", $"urn:uuid:{Guid.NewGuid()}");
            association.SetAttribute("associationType", "HasMember");
            association.SetAttribute("sourceObject", "提交集名称1");
            association.SetAttribute("targetObject", "doc001");
            association.AppendChild(BuildSlotNode(doc, "SubmissionSetStatus", "Original"));
            registryObjectList.AppendChild(association);

            submitObjectsRequest.AppendChild(registryObjectList);
            provideAndRegisterDocumentSetRequest.AppendChild(submitObjectsRequest);

            doc.AppendChild(provideAndRegisterDocumentSetRequest);
            return doc.InnerXml;
        }

        private XmlElement BuildSlotNode(XmlDocument doc, string name, params string[] values)
        {
            XmlElement slotNode = doc.CreateElement(xmlns_rim_name, "Slot", xmlns_rim_value);
            slotNode.SetAttribute("name", name);
            XmlElement valueListNode = doc.CreateElement(xmlns_rim_name, "ValueList", xmlns_rim_value);
            XmlElement valueNode;
            foreach (var value in values)
            {
                valueNode = doc.CreateElement(xmlns_rim_name, "Value", xmlns_rim_value);
                valueNode.InnerText = value;
                valueListNode.AppendChild(valueNode);
            }
            slotNode.AppendChild(valueListNode);

            return slotNode;
        }

        private XmlElement BuildNameNode(XmlDocument doc, string name, string value)
        {
            XmlElement nameNode = doc.CreateElement(xmlns_rim_name, name, xmlns_rim_value);
            XmlElement localizedStringNode = doc.CreateElement(xmlns_rim_name, "LocalizedString", xmlns_rim_value);
            localizedStringNode.SetAttribute("value", value);
            nameNode.AppendChild(localizedStringNode);

            return nameNode;
        }

        private string HandleExamAbnormalFlags(string flag)
        {
            string[] positive = { "阳", "阳性", "1", "True" };
            string[] negative = { "阴", "阴性", "0", "False" };

            if (positive.Contains(flag))
            {
                return "2"; // 异常
            }
            if (negative.Contains(flag))
            {
                return "1"; // 正常
            }
            return "3"; // 不确定
        }
    }
}
