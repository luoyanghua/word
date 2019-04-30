using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace eWorld.EMPI.Model.DTO
{
    /// <summary>
    /// 患者检查申请信息
    /// </summary>
    public class PatientObservationRequestDTO
    {
        /// <summary>
        /// 观察唯一序号
        /// </summary>
        public Guid ObservationUID { get; set; }

        /// <summary>
        /// 病人号
        /// </summary>
        public string PatientID { get; set; }

        /// <summary>
        /// 采集状态
        /// </summary>
        public Nullable<short> CollectionMark { get; set; }

        /// <summary>
        /// 病人号分配机构
        /// </summary>
        public string PIDAssigningAuthority { get; set; }

        /// <summary>
        /// 关联病人主索引
        /// </summary>
        public string PatientMasterID { get; set; }

        /// <summary>
        /// 病人类型，如门诊、急诊、住院、体检
        /// </summary>
        public string PatientClass { get; set; }

        /// <summary>
        /// 关联医嘱序列号，当该观察请求是从医嘱过来的，则有值
        /// </summary>
        public Guid? OrderUID { get; set; }

        /// <summary>
        /// 观察的机构
        /// </summary>
        public string OrganizationID { get; set; }

        /// <summary>
        /// 组织机构名
        /// </summary>
        public string OrganizationName { get; set; }

        /// <summary>
        /// 临床信息分类，如放射、心电、检验等。见字典ClinicInfoType。
        /// </summary>
        public string ClinicInfoType { get; set; }

        /// <summary>
        /// 申请号，若是通过医嘱而来的观察，则与CommonOrder中的PlacerOrderNO号相同
        /// </summary>
        public string PlacerOrderNO { get; set; }

        /// <summary>
        /// PlacerOrderNO号码的分配机构名
        /// </summary>
        public string PlacerAssigningAuthority { get; set; }

        /// <summary>
        /// 申请单明细号，多个以,分隔
        /// </summary>
        public string PlacerOrderDetailNO { get; set; }

        /// <summary>
        /// 观察分配的号码，如检查的检查号、检验的检验号。
        /// </summary>
        public string FillerOrderNO { get; set; }

        /// <summary>
        /// FillerOrderNO号码的分配机构名
        /// </summary>
        public string FillerAssigningAuthority { get; set; }

        /// <summary>
        /// FillerPatientID
        /// </summary>
        public string FillerPatientID { get; set; }

        /// <summary>
        /// 检查访问号，用于DICOM访问。
        /// </summary>
        public string AccessionNumber { get; set; }

        /// <summary>
        /// 观察服务ID，如果是通过医嘱而来的，则与医嘱代码一致，如检查为检查项目ID、检验为检验主题ID
        /// </summary>
        public string ServiceID { get; set; }

        /// <summary>
        /// 观察项目编码体系
        /// </summary>
        public string ServiceCodeScheme { get; set; }

        /// <summary>
        /// 观察服务内容，如果是通过医嘱而来的，则与医嘱内容一致，如检查为检查项目名称、检验为检验主题名称
        /// </summary>
        public string ServiceText { get; set; }

        /// <summary>
        /// 观察服务类型ID，检查的为检查类型(见字典ExamType)，如CR、CT、US、ES。检验为检验类型，如血液、体液、生化、免疫、微生物、分子生物学等；测量见测量类型(见字典MeasureType)，如体温、脉搏、呼吸、血压、大便次数、出入量、身高体重等
        /// </summary>
        public string ServiceSectID { get; set; }

        /// <summary>
        /// 观察过程ID，如检查的检查部位ID，检验的检验项目ID
        /// </summary>
        public string ProcedureID { get; set; }

        /// <summary>
        /// 观察过程名称，如检查的检查部位名称，检验的检验项目名称
        /// </summary>
        public string ProcedureName { get; set; }

        /// <summary>
        /// 观察申请者ID
        /// </summary>
        public string ProviderID { get; set; }

        /// <summary>
        /// 观察申请者姓名
        /// </summary>
        public string ProviderName { get; set; }

        /// <summary>
        /// 观察申请者电话
        /// </summary>
        public string ProviderPhone { get; set; }

        /// <summary>
        /// 观察申请科室ID
        /// </summary>
        public string RequestDeptID { get; set; }

        /// <summary>
        /// 观察申请科室名称
        /// </summary>
        public string RequestDeptName { get; set; }

        /// <summary>
        /// 观察请求时间，申请时间
        /// </summary>
        public DateTime? RequestedDate { get; set; }

        /// <summary>
        /// ResultOrganizationID
        /// </summary>
        public string ResultOrganizationID { get; set; }

        /// <summary>
        /// ResultServiceCenterUID
        /// </summary>
        public Guid? ResultServiceCenterUID { get; set; }

        /// <summary>
        /// 申请观察目的
        /// </summary>
        public string Reason { get; set; }

        /// <summary>
        /// 申请观察注意事项
        /// </summary>
        public string Attention { get; set; }

        /// <summary>
        /// 症状体征
        /// </summary>
        public string Symptom { get; set; }

        /// <summary>
        /// 过敏及不良反应
        /// </summary>
        public string AdverseReaction { get; set; }

        /// <summary>
        /// 临床诊断
        /// </summary>
        public string ClinicDiagnosis { get; set; }

        /// <summary>
        /// 其他相关的临床信息
        /// </summary>
        public string RelevantClinicalInfo { get; set; }

        /// <summary>
        /// 是否空腹，0非空腹，1空腹
        /// </summary>
        public bool? FastingFlag { get; set; }

        /// <summary>
        /// 病人运输方式，CART:车或担架、PORT:床边、WALK:行走、WHLC:轮椅
        /// </summary>
        public string TransportationMode { get; set; }

        /// <summary>
        /// 标本ID
        /// </summary>
        public string SpecimenID { get; set; }

        /// <summary>
        /// 标本名称
        /// </summary>
        public string SpecimenName { get; set; }

        /// <summary>
        /// 标本类型
        /// </summary>
        public string SpecimenType { get; set; }

        /// <summary>
        /// 标本源，如肝脏
        /// </summary>
        public string SpecimenSource { get; set; }

        /// <summary>
        /// 观察采集者ID，如采血者ID
        /// </summary>
        public string CollectorID { get; set; }

        /// <summary>
        /// 观察采集者姓名，如采血者姓名
        /// </summary>
        public string CollectorName { get; set; }

        /// <summary>
        /// 观察采集科室
        /// </summary>
        public string CollectionDept { get; set; }

        /// <summary>
        /// 标本采集方法
        /// </summary>
        public string CollectionMethod { get; set; }

        /// <summary>
        /// 观察采集容量，如验血时采血100ml，则该内容为100ml
        /// </summary>
        public string CollectionVolume { get; set; }

        /// <summary>
        /// 标本接收时间
        /// </summary>
        public DateTime? SpecimenReceivedDate { get; set; }

        /// <summary>
        /// 观察结果状态名称。
        /// </summary>
        public string ResultStatus { get; set; }

        /// <summary>
        /// 观察结果状态代码。C:修订结果、F:最终结果、O:没有结果只有申请详情、P:初步结果、S:部分结果、W:错误结果。参见7.4.2.11 OBX-11 HL7 Table 0085 - Observation result status codes interpretation
        /// </summary>
        public string ResultStatusCode { get; set; }

        /// <summary>
        /// 观察登记时间。如检查登记时间。
        /// </summary>
        public DateTime? RegTime { get; set; }

        /// <summary>
        /// 检查登记员ID
        /// </summary>
        public string RegisterID { get; set; }

        /// <summary>
        /// 检查登记员姓名
        /// </summary>
        public string RegisterName { get; set; }

        /// <summary>
        /// 观察执行科室ID
        /// </summary>
        public string ObservationDeptID { get; set; }

        /// <summary>
        /// 观察执行科室名称
        /// </summary>
        public string ObservationDeptName { get; set; }

        /// <summary>
        /// 观察时间，如检查时间
        /// </summary>
        public DateTime ObservationDate { get; set; }

        /// <summary>
        /// 观察结束时间，如检查结束时间
        /// </summary>
        public DateTime? ObservationEndDate { get; set; }

        /// <summary>
        /// 观察发生的场所，如检查房间。
        /// </summary>
        public string ObservationLocation { get; set; }

        /// <summary>
        /// 观察设备ID，如检查设备的ID。
        /// </summary>
        public string ObservationEquipmentID { get; set; }

        /// <summary>
        /// 观察设备名称，如检查设备名称
        /// </summary>
        public string ObservationEquipment { get; set; }

        /// <summary>
        /// 保存该观察的所有观察方法，如检查方法、技术。每个观察结果也可以有相应的观察方法，存放在ObservationResult表。
        /// </summary>
        public string ObservationMethod { get; set; }

        /// <summary>
        /// 检查实例UID，多个以,分割开。
        /// </summary>
        public string StudyInstanceUID { get; set; }

        /// <summary>
        /// 观察技师ID
        /// </summary>
        public string TechnicianID { get; set; }

        /// <summary>
        /// 观察技师名称
        /// </summary>
        public string TechnicianName { get; set; }

        /// <summary>
        /// 结果主要负责人ID，如报告审核医生。同ObservationResult表中相应字段值
        /// </summary>
        public string ResultPrincipalID { get; set; }

        /// <summary>
        /// 结果主要负责人姓名，如报告审核医生。同ObservationResult表中相应字段值
        /// </summary>
        public string ResultPrincipalName { get; set; }

        /// <summary>
        /// 结果修订者ID
        /// </summary>
        public string ResultReviseID { get; set; }

        /// <summary>
        /// 结果修订者  审核医生
        /// </summary>
        public string ResultReviseName { get; set; }

        /// <summary>
        /// 结果助理ID，如报告医生。同ObservationResult表中相应字段值
        /// </summary>
        public string ResultAssistantID { get; set; }

        /// <summary>
        /// 结果助理姓名，如报告医生。同ObservationResult表中相应字段值
        /// </summary>
        public string ResultAssistantName { get; set; }

        /// <summary>
        /// 报告医生电话
        /// </summary>
        public string ResultAssistantPhone { get; set; }

        /// <summary>
        /// 初步结果时间，如检查的初步报告时间
        /// </summary>
        public DateTime? PreliminaryDate { get; set; }

        /// <summary>
        /// 初步结果时间，如检查的初步报告时间
        /// </summary>
        public DateTime? AuditDate { get; set; }

        /// <summary>
        /// 结果修订时间
        /// </summary>
        public DateTime? ReviseDate { get; set; }

        /// <summary>
        /// 最后的结果时间，报告状态时为报告时间，审核状态时为审核时间，修订时为修改时间。
        /// </summary>
        public DateTime? ResultDate { get; set; }

        /// <summary>
        /// 异常标志，如放射结果的阴阳性
        /// </summary>
        public string AbnormalFlags { get; set; }

        /// <summary>
        /// 危急值
        /// </summary>
        public string CriticalValue { get; set; }

        /// <summary>
        /// 是否已打印
        /// </summary>
        public short? ResultPrintCount { get; set; }

        /// <summary>
        /// 传染病
        /// </summary>
        public string InfectionName { get; set; }

        /// <summary>
        /// 检查费用，单位为元
        /// </summary>
        public decimal? Charges { get; set; }

        /// <summary>
        /// 病人实际支付费用，单位为元
        /// </summary>
        public decimal? Payments { get; set; }

        /// <summary>
        /// 付款标志，0未付款(未收费)、1已付款(已收费)
        /// </summary>
        public bool? PaymentsFlag { get; set; }

        /// <summary>
        /// 胶片数
        /// </summary>
        public short? FilmCount { get; set; }

        /// <summary>
        /// 是否需要胶片，0不需要，1需要
        /// </summary>
        public bool? FilmNeed { get; set; }

        /// <summary>
        /// 是否有影像
        /// </summary>
        public bool? HasImage { get; set; }

        /// <summary>
        /// 影像位置，0:影像在医院内、1:影像在区域中心
        /// </summary>
        public byte? ImageLocation { get; set; }

        /// <summary>
        /// 会诊状态
        /// </summary>
        public byte? ConsultStatus { get; set; }

        /// <summary>
        /// 会诊申请时间
        /// </summary>
        public DateTime? ConsultRequestDate { get; set; }

        /// <summary>
        /// 会诊结束时间
        /// </summary>
        public DateTime? ConsultEndDate { get; set; }

        /// <summary>
        /// 结果打印时间
        /// </summary>
        public DateTime? ResultPrintTime { get; set; }

        /// <summary>
        /// 检查项目编码(医保)
        /// </summary>
        public string ServiceIDInsur { get; set; }

        /// <summary>
        /// 设备型号，能够表示某类设备的编号
        /// </summary>
        public string EquipmentModel { get; set; }

        /// <summary>
        /// 密级，0:普通 不保护、1:秘密 本院可看、2:机密 请检科室可看、3:绝密 请检医生可看
        /// </summary>
        public byte? PrivacyLevel { get; set; }

        /// <summary>
        /// 密级扩展，用于各种特殊秘密的控制。第一位病种，0:无须病种控制、1:恶性肿瘤、2:性病艾滋病、3:其它不治之症、4:精神类病、9:其它。第二位患者申明被特控调阅，0:无特控1:患者申明特控（无特殊原因不予调阅）。其余各位预留备用，可不填或填0。
        /// </summary>
        public string PrivacyLevelExt { get; set; }

        /// <summary>
        /// 申请机构名称
        /// </summary>
        public string RequestOrgName { get; set; }

        /// <summary>
        /// 观察申请机构ID
        /// </summary>
        public string RequestOrgID { get; set; }

        /// <summary>
        /// 最后更新时间
        /// </summary>
        public DateTime? LastUpdateDate { get; set; }

        /// <summary>
        /// 数据来源
        /// </summary>
        public string DataSource { get; set; }

        /// <summary>
        /// 数据来源
        /// </summary>
        public string DataSourceName { get; set; }

        /// <summary>
        /// 消耗磁盘空间（Mb）
        /// </summary>
        public double? DiskSpace { get; set; }

        /// <summary>
        /// 已汇总标识
        /// </summary>
        public bool? IsSummary { get; set; }

        /// <summary>
        /// 检测机构ID
        /// </summary>
        public string SourceOrganizationID { get; set; }

        /// <summary>
        /// 检测机构名字
        /// </summary>
        public string SourceOrganizationName { get; set; }

        /// <summary>
        /// 就诊GUID
        /// </summary>
        public Guid? VisitUID { get; set; }
    }
}
