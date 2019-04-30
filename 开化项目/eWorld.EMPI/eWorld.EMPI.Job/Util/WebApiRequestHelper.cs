using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using log4net;
using eWorld.EMPI.Model;
using Newtonsoft.Json;
using eWorld.EMPI.Configuration;
using eWorld.EMPI.Model.BasicResult;
using eWorld.EMPI.Model.Enums;
using eWorld.EMPI.Model.DTO;
using System.Xml;
using System.Web;

namespace eWorld.EMPI.Job.Util
{
    public static class WebApiRequestHelper
    {
        private static readonly ILog _logger = LogManager.GetLogger(typeof(WebApiRequestHelper));
        /// <summary>
        /// 获取云平台待同步患者信息列表
        /// </summary>
        /// <param name="query"></param>
        public static List<PatientExamListDTO> GetPatientExamList(PatientExamListQuery query)
        {
            string webApiUrl = AppConfig.GetConfig("IDCASApiUrl").TrimEnd('/') + "/v2/thirdparty/get_empi_exam_list";
            string strContent = JsonConvert.SerializeObject(query);
            var auth = GetAuth();
            string userToken = string.Format("{0} {1}", auth.token_type, auth.access_token);
            string value = HttpHelper.Post(webApiUrl, strContent, userToken);
            if (!string.IsNullOrEmpty(value))
            {
                OldListResult<PatientExamListDTO> result = JsonConvert.DeserializeObject<OldListResult<PatientExamListDTO>>(value);
                return result.ResultList;
            }

            return new List<PatientExamListDTO>();
        }

        /// <summary>
        /// 更新采集状态
        /// </summary>
        /// <param name="apiurl"></param>
        /// <param name="query"></param>
        /// <returns></returns>
        public static BaseResult UpdateAcquisitionStatus(UpdateAcquisitionStatusQuery query)
        {
            BaseResult result = new BaseResult() { code = ResultCodeEnum.Fail, msg = "Failed" };
            string webApiUrl = AppConfig.GetConfig("IDCASApiUrl") + "/v2/thirdparty/update_empi_exam_status";
            string strContent = JsonConvert.SerializeObject(query);
            var auth = GetAuth();
            string userToken = string.Format("{0} {1}", auth.token_type, auth.access_token);
            string value = HttpHelper.Post(webApiUrl, strContent, userToken);
            try
            {
                result = JsonConvert.DeserializeObject<BaseResult>(value);
            }
            catch (Exception e)
            {
                _logger.Error($"更新采集状态异常:{JsonConvert.SerializeObject(query)}", e);
            }
            return result;
        }

        /// <summary>
        /// 获取检查文档
        /// </summary>
        /// <param name="observationUID"></param>
        /// <returns></returns>
        public static List<ExamDocument> GetExamDocuments(Guid observationUID)
        {
            List<ExamDocument> examDocuments = new List<ExamDocument>();
            var auth = GetAuth();
            string userToken = string.Format("{0} {1}", auth.token_type, auth.access_token);
            string webApiUrl = AppConfig.GetConfig("IDCASApiUrl") + "/v2/public/get_document_list";
            string strContent = JsonConvert.SerializeObject(new
            {
                BusinessID = observationUID,
                withFileRelativePath = true
            });
            try
            {
                var response = HttpHelper.Post(webApiUrl, strContent, userToken);
                _logger.Debug($"获取检查文档：请求地址：{webApiUrl}，请求参数：{strContent}，返回内容：{response}");
                if (!string.IsNullOrEmpty(response))
                {
                    var retuResult = JsonConvert.DeserializeObject<PageListResult<ExamDocument>>(response);
                    if (retuResult.code == ResultCodeEnum.Success)
                    {
                        examDocuments = retuResult.data.DataList;
                    }
                }
                else
                {
                    _logger.Warn($"未获取到检查文档：observationUID={observationUID}");
                }
            }
            catch (Exception ex)
            {
                _logger.Error($"获取检查文档异常：{observationUID}", ex);
            }
            return examDocuments;
        }

        public static BaseResult RegistryExam(string xml)
        {
            BaseResult result = new BaseResult()
            {
                code = ResultCodeEnum.Fail,
                msg = "失败"
            };

            try
            {
                string wsUrl = AppConfig.GetConfig("WebServiceUrl");
                _logger.InfoFormat($"RegistryExam接口请求参数：{xml}");
                string res = SoapRequestHelper.Send(wsUrl, "provideAndRegisterDocumentSet", new Dictionary<string, string>()
                {
                    {"xml",xml }
                });
                XmlDocument doc = new XmlDocument();
                doc.LoadXml(HttpUtility.HtmlDecode(res));


                bool isSuccess = doc.SelectSingleNode("//@status").Value.IndexOf("ResponseStatusType:Success") >= 0;
                if (isSuccess)
                {
                    result.code = ResultCodeEnum.Success;
                    result.msg = doc.GetElementsByTagName("RepositoryUniqueId")[0].InnerText;
                }
                else
                {
                    _logger.InfoFormat("接口返回：{0}", doc.InnerXml);
                }
            }
            catch (Exception ex)
            {
                _logger.Error($"注册检查信息异常,请求参数:{xml}", ex);
            }

            return result;
        }

        public static AccessTokenDTO GetAuth()
        {
            AccessTokenDTO outmodel = MemoryCacheUtil.Get<AccessTokenDTO>("login_info");
            if (outmodel == null)
            {
                var interfaceUrl = AppConfig.GetConfig("CRMWebAPIUrl").TrimEnd('/') + "/api/Login";
                string query = string.Format("grant_type=client_credentials&client_id=idcas&client_secret=35601B332BFE17E5E13BD4DA62BD9FE8");
                try
                {
                    var result = HttpHelper.Post(interfaceUrl, query, "", "text/plain");

                    outmodel = JsonConvert.DeserializeObject<AccessTokenDTO>(result);

                    MemoryCacheUtil.Set("login_info", outmodel, 7200);
                }
                catch (Exception ex)
                {
                    _logger.Error("获取访问令牌异常", ex);
                }
            }

            return outmodel;
        }
    }
}
