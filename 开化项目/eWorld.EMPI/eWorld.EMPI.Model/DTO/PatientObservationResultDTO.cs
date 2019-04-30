using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace eWorld.EMPI.Model.DTO
{
    /// <summary>
    /// 患者检查结果信息
    /// </summary>
    public class PatientObservationResultDTO
    {
        /// <summary>
        /// 观察结果序列号
        /// </summary>
        public long? ResultSeq { get; set; }

        /// <summary>
        /// 关联观察请求序列号
        /// </summary>
        public Guid? ObservationUID { get; set; }

        /// <summary>
        /// 同一个观察服务请求的结果顺序号
        /// </summary>
        public short? SetID { get; set; }

        /// <summary>
        /// 观察项目ID，检查时定义如下：GDT:检查所见、MDT:镜下所见、IMP:检查诊断、REC:诊断建议、ADT:诊断备注；检验时为检验项目ID
        /// </summary>
        public string ObservationID { get; set; }

        /// <summary>
        /// 项目编码体系，见字典
        /// </summary>
        public string ObservationCodeScheme { get; set; }

        /// <summary>
        /// 观察项目文本，如检查时为空、检验时为检验项目名称
        /// </summary>
        public string ObservationText { get; set; }

        /// <summary>
        /// 子序号，用于分类同个观察请求服务中的不同项目观察结果组
        /// </summary>
        public string SubID { get; set; }

        /// <summary>
        /// 结果值标题，用于显示，如检查所见、检查诊断、诊断建议、诊断备注
        /// </summary>
        public string ValueTitle { get; set; }

        /// <summary>
        /// 观察结果值类型，CF:Coded Element With Formatted Values,ValueCodeSystem存放编码体系如ICD-10，ValueCode存储编码值，ValueText存放文本用于显示。FT:Formatted Text (Display),ValueText存放用于显示的文本，忽略ValueCodeSystem、ValueCode值.Formatted text usually implies a meaningful structure, e.g., a list of three。RP:Reference Pointer,ValueCodeSystem存放外部引用URI头，包括协议和主机等信息，如ftp://localhost，ValueCode存放外部引用的文件MIME格式，ValueText存放外部引用URI相对地址，与ValueCodeSystem组合成全路径。
        /// </summary>
        public string ValueType { get; set; }

        /// <summary>
        /// 观察结果值文本描述，根据ValueType的值类型，存储相应的内容
        /// </summary>
        public string ValueText { get; set; }

        /// <summary>
        /// 观察结果值代码
        /// </summary>
        public string ValueCode { get; set; }

        /// <summary>
        /// 观察结果值代码编码体系，见字典
        /// </summary>
        public string ValueCodeSystem { get; set; }

        /// <summary>
        /// 观察结果值单位
        /// </summary>
        public string ValueUnits { get; set; }

        /// <summary>
        /// 观察结果状态名称。
        /// </summary>
        public string ResultStatus { get; set; }

        /// <summary>
        /// 观察结果状态代码。C:修订结果、F:最终结果、O:没有结果只有申请详情、P:初步结果、S:部分结果、W:错误结果。参见7.4.2.11 OBX-11 HL7 Table 0085 - Observation result status codes interpretation
        /// </summary>
        public string ResultStatusCode { get; set; }

        /// <summary>
        /// 观察结果参考范围
        /// </summary>
        public string ReferencesRange { get; set; }

        /// <summary>
        /// 异常标志，检验结果的正常异常等。
        /// </summary>
        public string AbnormalFlags { get; set; }

        /// <summary>
        /// 观察方法，如检查方法
        /// </summary>
        public string ObservationMethod { get; set; }

        /// <summary>
        /// 观察时间，如检查时间，检验时间。如果同个ObservationRequest有多个结果的观察时间不一致，在此处标识出每个观察的时间
        /// </summary>
        public DateTime? ObservationDate { get; set; }

        /// <summary>
        /// 初步结果时间，如检查的初步报告时间
        /// </summary>
        public DateTime? PreliminaryDate { get; set; }

        /// <summary>
        /// 结果审核时间，如报告审核时间
        /// </summary>
        public DateTime? AuditDate { get; set; }

        /// <summary>
        /// 结果主要负责人ID，如报告审核医生ID
        /// </summary>
        public string ResultPrincipalID { get; set; }

        /// <summary>
        /// 结果主要负责人姓名，如报告审核医生名称
        /// </summary>
        public string ResultPrincipalName { get; set; }

        /// <summary>
        /// 结果助理ID，如报告医生ID
        /// </summary>
        public string ResultAssistantID { get; set; }

        /// <summary>
        /// 结果助理姓名，如报告医生名称
        /// </summary>	
        public string ResultAssistantName { get; set; }

        /// <summary>
        /// 参考范围下限
        /// </summary>
        public string LowerLimit { get; set; }

        /// <summary>
        /// 参考范围上限
        /// </summary>
        public string UpperLimit { get; set; }

        /// <summary>
        /// 父序号
        /// </summary>
        public long? ParentResultSeq { get; set; }

        /// <summary>
        /// 父观察项目ID，针对微生物检验，首先是细菌检测，然后再做细菌的药敏试验，产生药敏结果，因此有父子关系
        /// </summary>
        public string ParentObservationID { get; set; }

        /// <summary>
        /// 备注
        /// </summary>
        public string Memo { get; set; }
    }
}
