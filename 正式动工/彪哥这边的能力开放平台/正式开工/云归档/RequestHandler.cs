using System;

namespace eWorld.Core.DTO
{
    /// <summary>
    /// 请求处理类
    /// </summary>
    public class RequestHandler
    {
        /// <summary>
        /// 用户UID
        /// </summary>
        public Guid? RequestUserUID { get; set; }
        /// <summary>
        /// 用户ID
        /// </summary>
        public string RequestUserID { get; set; }
        /// <summary>
        /// 用户姓名
        /// </summary>
        public string RequestUserName { get; set; }
        /// <summary>
        /// 时间戳
        /// </summary>
        public long? RequestTimestamp { get; set; }
        /// <summary>
        /// 请求令牌
        /// </summary>
        public string RequestToken { get; set; }
        /// <summary>
        /// 调阅者身份  1 公众用户  2 医生，默认医生
        /// </summary>
        public int? UserKind { get; set; }
        /// <summary>
        /// 调阅者设备  1 pc端  2 手机端，默认PC端
        /// </summary>
        public int? ClientKind { get; set; }
        /// <summary>
        /// 是否记录临床操作日志 0 不记录，1 记录 默认为1，目前只有手机端查看胶片会用到这个字段
        /// </summary>
        public int? recordLog { get; set; }
        /// <summary>
        /// 请求IP
        /// </summary>
        public string ClientHost { get; set; }


    }
}
