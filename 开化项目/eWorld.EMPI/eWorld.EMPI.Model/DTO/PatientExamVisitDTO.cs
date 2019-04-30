using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace eWorld.EMPI.Model.DTO
{
    /// <summary>
    /// 患者检查就诊信息
    /// </summary>
    public class PatientExamVisitDTO
    {
        /// <summary>
        /// 就诊系统分配的唯一表示一次就诊的号码
        /// </summary>
        public string VisitID { get; set; }

        /// <summary>
        /// 分配就诊号的机构或系统
        /// </summary>
        public string AssigningAuthority { get; set; }

        /// <summary>
        /// 病人号
        /// </summary>
        public string PatientID { get; set; }

        /// <summary>
        /// 病人号分配机构
        /// </summary>
        public string PIDAssigningAuthority { get; set; }

        /// <summary>
        /// 该就诊所发生的组织机构
        /// </summary>
        public string OrganizationID { get; set; }

        /// <summary>
        /// 病人类型，如门诊、急诊、住院、体检
        /// </summary>
        public string PatientClass { get; set; }

        /// <summary>
        /// 病人细分类型
        /// </summary>
        public string PatientType { get; set; }

        /// <summary>
        /// 就诊时分配的病历号
        /// </summary>
        public string MedRecNO { get; set; }

        /// <summary>
        /// 门诊号
        /// </summary>
        public string OutPatientNO { get; set; }

        /// <summary>
        /// 住院号
        /// </summary>
        public string InPatientNO { get; set; }

        /// <summary>
        /// 就诊卡类型
        /// </summary>
        public string CardType { get; set; }

        /// <summary>
        /// 就诊卡号
        /// </summary>
        public string CardNO { get; set; }

        /// <summary>
        /// 就诊时的年龄
        /// </summary>
        public string Age { get; set; }

        /// <summary>
        /// 年龄单位。岁、月、周、天、时
        /// </summary>
        public string AgeUnit { get; set; }

        /// <summary>
        /// 怀孕标志，0未怀孕、1怀孕、空未知
        /// </summary>
        public string PregnancyFlag { get; set; }

        /// <summary>
        /// 职业
        /// </summary>
        public string Occupation { get; set; }

        /// <summary>
        /// 接诊时间
        /// </summary>
        public string AdmitDate { get; set; }

        /// <summary>
        /// 复诊标志，0：初诊、1：复诊
        /// </summary>
        public string ReAmissionFlag { get; set; }

        /// <summary>
        /// 就诊形式。如事故、急诊、分娩、新生、常规等。
        /// </summary>
        public string AdmissionType { get; set; }

        /// <summary>
        /// 入院病情。CV5501.12入院病情代码，1.危重、2.急诊、3.一般
        /// </summary>
        public string AdmitPatCondition { get; set; }

        /// <summary>
        /// 住院入院科室ID，门诊就诊科室ID
        /// </summary>
        public string AdmitDeptID { get; set; }

        /// <summary>
        /// 住院入院科室名称，门诊就诊科室名称
        /// </summary>
        public string AdmitDeptName { get; set; }

        /// <summary>
        /// 就诊科室部门ID
        /// </summary>
        public string DeptID { get; set; }

        /// <summary>
        /// 就诊科室部门名称
        /// </summary>
        public string DeptName { get; set; }

        /// <summary>
        /// 住院时为病区，非住院时时同就诊科室
        /// </summary>
        public string PointOfCare { get; set; }

        /// <summary>
        /// 住院时为病区ID，非住院时时同就诊科室ID
        /// </summary>
        public string PointOfCareID { get; set; }

        /// <summary>
        /// 住院时为病房，非住院时为诊间
        /// </summary>
        public string Room { get; set; }

        /// <summary>
        /// 病床
        /// </summary>
        public string Bed { get; set; }

        /// <summary>
        /// 接诊医生ID
        /// </summary>
        public string AdmittingDoctorID { get; set; }

        /// <summary>
        /// 接诊医生名称
        /// </summary>
        public string AdmittingDoctorName { get; set; }

        /// <summary>
        /// 主治医师ID
        /// </summary>
        public string AttendingDoctorID { get; set; }

        /// <summary>
        /// 主治医师姓名
        /// </summary>
        public string AttendingDoctorName { get; set; }

        /// <summary>
        /// 主任医师ID
        /// </summary>
        public string DirectorDoctorID { get; set; }

        /// <summary>
        /// 主任医生姓名
        /// </summary>
        public string DirectorDoctorName { get; set; }

        /// <summary>
        /// 当前病情状态。1危重 2急症 3疑难
        /// </summary>
        public string CurPatCondition { get; set; }

        /// <summary>
        /// 护理等级。1.一级护理 2.二级护理 3.三级护理 4:特级护理
        /// </summary>
        public string NursingGrade { get; set; }

        /// <summary>
        /// 饮食种类。如禁食、流质、半流质、软食、普食、治疗饮食
        /// </summary>
        public string DietType { get; set; }

        /// <summary>
        /// 主要诊断文本内容
        /// </summary>
        public string PrimaryDiagnosis { get; set; }

        /// <summary>
        /// 离院、出院日期时间
        /// </summary>
        public string DischargeDate { get; set; }

        /// <summary>
        /// 出院方式，如治愈、转院、死亡等
        /// </summary>
        public string DischargeDisposition { get; set; }

        /// <summary>
        /// 总费用，单位为元
        /// </summary>
        public string TotalCharges { get; set; }

        /// <summary>
        /// 病人总支付金额，单位为元
        /// </summary>
        public string TotalPayments { get; set; }

        /// <summary>
        /// 支付方式，患者此次门诊就诊所发生费用的支付方式。如现金、银行卡等。
        /// </summary>
        public string PaymentMode { get; set; }

        /// <summary>
        /// 医疗付款方式。如社会基本医疗保险、自费医疗等等。
        /// </summary>
        public string MedicalPaymentMode { get; set; }

        /// <summary>
        /// 病人主索引
        /// </summary>
        public string PatientMasterID { get; set; }

        /// <summary>
        /// 是否有心脏起搏器 0-无，1-有，空-未知
        /// </summary>
        public string HasPacemaker { get; set; }
    }
}
