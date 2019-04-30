using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace eWorld.EMPI.Model.DTO
{
    /// <summary>
    ///  患者检查列表
    /// </summary>
    public class PatientExamListDTO
    {
        /// <summary>
        /// 患者主索引信息
        /// </summary>
        public PatientExamIndexDTO PatientIndex { get; set; }

        /// <summary>
        /// 患者就诊信息
        /// </summary>
        public PatientExamVisitDTO PatientVisit { get; set; }

        /// <summary>
        /// 患者检查申请信息
        /// </summary>
        public PatientObservationRequestDTO ObservationRequest { get; set; }

        /// <summary>
        /// 患者检查结果信息
        /// </summary>
        public List<PatientObservationResultDTO> ObservationResultList { get; set; }
    }
}
