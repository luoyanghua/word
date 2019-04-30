using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace eWorld.EMPI.Model.DTO
{
    /// <summary>
    /// 患者检查主索引信息
    /// </summary>
    public class PatientExamIndexDTO
    {
        /// <summary>
        /// 病人号
        /// </summary>
        public string PatientID { get; set; }

        /// <summary>
        /// PatientID分配机构
        /// </summary>
        public string PIDAssigningAuthority { get; set; }

        /// <summary>
        /// 是否为病人主索引。1:是，0:否。
        /// </summary>
        public string IsMPI { get; set; }

        /// <summary>
        /// 病人主ID，用于表示同个病人，如果有病人主索引，则直接用病人主索引。
        /// </summary>
        public string PatientMasterID { get; set; }

        /// <summary>
        /// 病人姓名
        /// </summary>
        public string Name { get; set; }

        /// <summary>
        /// 病人姓名拼音
        /// </summary>
        public string NameSpell { get; set; }

        /// <summary>
        /// 母亲姓名
        /// </summary>
        public string MotherName { get; set; }

        /// <summary>
        /// 性别：男、女、未知、未说明
        /// </summary>
        public string Sex { get; set; }

        /// <summary>
        /// 出生日期，格式为yyyy-MM-dd
        /// </summary>
        public DateTime? BirthDate { get; set; }

        /// <summary>
        /// 出生地
        /// </summary>
        public string BirthPlace { get; set; }

        /// <summary>
        /// 民族
        /// </summary>
        public string Nation { get; set; }

        /// <summary>
        /// 国籍
        /// </summary>
        public string Citizenship { get; set; }

        /// <summary>
        /// 婚姻状况：未婚、已婚、丧偶、离婚、未说明
        /// </summary>
        public string MaritalStatus { get; set; }

        /// <summary>
        /// 身份证号
        /// </summary>
        public string IDCardNO { get; set; }

        /// <summary>
        /// 健康卡号
        /// </summary>
        public string HealthCardNO { get; set; }

        /// <summary>
        /// 联系电话
        /// </summary>
        public string ContactPhoneNO { get; set; }

        /// <summary>
        /// 家庭电话
        /// </summary>
        public string HomePhoneNO { get; set; }

        /// <summary>
        /// 公司电话
        /// </summary>
        public string BusinessPhoneNO { get; set; }

        /// <summary>
        /// 电子邮箱地址
        /// </summary>
        public string Email { get; set; }

        /// <summary>
        /// 地址-省份
        /// </summary>
        public string AddressProvince { get; set; }

        /// <summary>
        /// 地址-城市
        /// </summary>
        public string AddressCity { get; set; }

        /// <summary>
        /// 地址-区县
        /// </summary>
        public string AddressDistrict { get; set; }

        /// <summary>
        /// 地址-街道、乡镇
        /// </summary>
        public string AddressStreet { get; set; }

        /// <summary>
        /// 地址-街、路、村
        /// </summary>
        public string AddressRoad { get; set; }

        /// <summary>
        /// 地址-门牌号。若地址无法分类，则该字段存放整个详细地址
        /// </summary>
        public string AddressDetail { get; set; }

        /// <summary>
        /// 邮政编码
        /// </summary>
        public string Postalcode { get; set; }

        /// <summary>
        /// 职业
        /// </summary>
        public string Occupation { get; set; }

        /// <summary>
        /// 工作单位、公司
        /// </summary>
        public string WorkUnit { get; set; }

        /// <summary>
        /// 语言
        /// </summary>
        public string Language { get; set; }

        /// <summary>
        /// 医保类别
        /// </summary>
        public string InsuranceType { get; set; }

        /// <summary>
        /// 医疗保险号
        /// </summary>
        public string InsuranceID { get; set; }

        /// <summary>
        /// 创建病人的用户ID
        /// </summary>
        public string CreateUserID { get; set; }

        /// <summary>
        /// 创建病人的用户姓名
        /// </summary>
        public string CreateUserName { get; set; }

        /// <summary>
        /// 创建病人的用户的组织机构
        /// </summary>
        public string CreateOrgnizationID { get; set; }

        /// <summary>
        /// 在院状态，1：在院、0或空：不在院
        /// </summary>
        public string InHospitalFlag { get; set; }
    }
}
