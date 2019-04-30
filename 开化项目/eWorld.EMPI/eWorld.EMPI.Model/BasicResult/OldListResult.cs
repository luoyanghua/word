using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace eWorld.EMPI.Model.BasicResult
{
    public class OldListResult<T> : BaseResult
    {
        /// <summary>
        /// 结果列表
        /// </summary>
        public List<T> ResultList;
    }
}
