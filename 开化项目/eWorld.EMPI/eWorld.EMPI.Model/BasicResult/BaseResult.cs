using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using eWorld.EMPI.Model.Enums;

namespace eWorld.EMPI.Model.BasicResult
{
    public class BaseResult
    {
        /// <summary>
        /// 结果标志
        /// </summary>
        public ResultCodeEnum code;

        /// <summary>
        /// 结果描述
        /// </summary>
        public string msg;


        /// <summary>
        /// 构造函数，code默认为Success
        /// </summary>
        public BaseResult()
        {
            code = ResultCodeEnum.Success;
            msg = "成功";
        }
    }
}
