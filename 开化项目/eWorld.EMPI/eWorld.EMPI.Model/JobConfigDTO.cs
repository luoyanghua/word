using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace eWorld.EMPI.Model
{
    /// <summary>
    /// jobserver信息
    /// </summary>
    public class JobConfigDTO
    {
        /// <summary>
        /// jobUID
        /// </summary>
        public string JobUID { get; set; }
        /// <summary>
        /// jobName
        /// </summary>
        public string JobName { get; set; }
        /// <summary>
        /// JobClass
        /// </summary>
        public string JobClass { get; set; }
        /// <summary>
        /// SimpleRepeatInterval
        /// </summary>
        public string SimpleRepeatInterval { get; set; }
    }
}
