using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace eWorld.EMPI.Model.DTO
{

    /// <summary>
    /// 获取患者检查列表请求参数
    /// </summary>
    public class PatientExamListQuery
    {
        /// <summary>
        /// 检查时间（查询开始时间）
        /// </summary>
        public DateTime? ObservationDate { get; set; }

        /// <summary>
        /// 检查机构ID（多个用,分割）
        /// </summary>
        public string OrganizationID { get; set; }

        /// <summary>
        /// 检查科室（多个用,分割）
        /// </summary>
        public string ServiceSectID { get; set; }

        /// <summary>
        /// 查询数量（默认50）
        /// </summary>
        public int? RowCount { get; set; }
    }
}
