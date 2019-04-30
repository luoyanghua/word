using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace eWorld.EMPI.Model.BasicResult
{
    /// <summary>
    /// 列表结果，不分页
    /// </summary>
    /// <typeparam name="T"></typeparam>
    public class ListResult<T> : BaseResult
    {
        /// <summary>
        /// 结果列表
        /// </summary>
        public List<T> data;
    }
}
