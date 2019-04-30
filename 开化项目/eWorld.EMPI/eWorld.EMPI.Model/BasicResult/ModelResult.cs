using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace eWorld.EMPI.Model.BasicResult
{
    /// <summary>
    /// 模型结果
    /// </summary>
    /// <typeparam name="T">模型</typeparam>
    public class ModelResult<T> : BaseResult
    {
        /// <summary>
        /// 结果模型
        /// </summary>
        public T data { get; set; }
    }
}
