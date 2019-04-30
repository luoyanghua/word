using System;
using System.IO;
using System.Net;
using System.Text;
using log4net;

namespace eWorld.EMPI.Job.Util
{
    public class HttpHelper
    {
        private static ILog logger = LogManager.GetLogger(typeof(HttpHelper));

        /// <summary>
        /// 发起HTTPPost请求
        /// </summary>
        /// <param name="uri">请求地址</param>
        /// <param name="postData">请求参数</param>
        /// <param name="authorization">authorization头</param>
        /// <param name="contentType">类型</param>
        /// <returns></returns>
        public static string Post(string uri, string postData, string authorization = "", string contentType = "application/json;charset=UTF-8")
        {
            try
            {
                if (string.IsNullOrWhiteSpace(uri))
                {
                    return null;
                }
                byte[] byteArray = System.Text.Encoding.UTF8.GetBytes(postData);
                HttpWebRequest objWebRequest = (HttpWebRequest)WebRequest.Create(uri); //发送地址
                objWebRequest.Method = "POST";//提交方式
                objWebRequest.ContentType = contentType;
                objWebRequest.ContentLength = byteArray.Length;
                objWebRequest.Headers.Add("Authorization", authorization);
                using (Stream newStream = objWebRequest.GetRequestStream())
                {
                    newStream.Write(byteArray, 0, byteArray.Length); //写入参数
                    newStream.Close();
                }

                HttpWebResponse response = (HttpWebResponse)objWebRequest.GetResponse();//获取响应
                StreamReader sr = new StreamReader(response.GetResponseStream(), System.Text.Encoding.UTF8);
                return sr.ReadToEnd(); // 返回的数据
            }
            catch (Exception ex)
            {
                logger.Error(string.Format("Post请求失败，错误信息：{4}，请求地址：{0}，请求参数：{1}，Authorization={2}，ContentType={3}", uri, postData, authorization, contentType, ex.Message));
            }

            return null;
        }

        /// <summary>
        /// 发起HTTP Get请求
        /// </summary>
        /// <param name="url">请求地址</param>
        /// <param name="authorization">authorization头</param>
        /// <returns></returns>
        public static string Get(string url, string authorization)
        {
            try
            {
                HttpWebRequest request = (HttpWebRequest)WebRequest.Create(url);
                request.Method = "GET";
                request.Timeout = 60000;
                request.Headers.Add("Authorization", authorization);
                HttpWebResponse response = request.GetResponse() as HttpWebResponse;
                Stream streamReceive = response.GetResponseStream();
                Encoding encoding = Encoding.UTF8;

                StreamReader streamReader = new StreamReader(streamReceive, encoding);
                return streamReader.ReadToEnd();// 返回的数据
            }
            catch (Exception ex)
            {
                logger.Error(string.Format("GetHttpUrl请求失败，错误信息：{2}，请求地址：{0}，Authorization={1}", url, authorization, ex.Message));
            }

            return null;
        }
    }
}
