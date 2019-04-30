using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace eWorld.EMPI.Model.DTO
{
    /// <summary>
    /// 更新同步检查状态
    /// </summary>
    public class UpdateAcquisitionStatusQuery
    {
        /// <summary>
        /// 检查业务唯一号
        /// </summary>
        public Guid? ObservationUID { get; set; }

        /// <summary>
        /// 采集标示
        /// </summary>
        public short PushState { get; set; }
    }
}
