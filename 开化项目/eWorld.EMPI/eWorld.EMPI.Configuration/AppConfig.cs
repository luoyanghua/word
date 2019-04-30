using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml;

namespace eWorld.EMPI.Configuration
{
    public class AppConfig
    {
        /// <summary>
        /// 获取服务配置文件路径
        /// </summary>
        /// <returns>配置文件路径</returns>
        public static string GetServerConfigFile()
        {
            string strFileName = string.Empty;

            // 先将自动更新程序放到主服务的一个子文件夹中
            string strConfigFileName = "eWorld.EMPI.Server.exe.config";
            strConfigFileName = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, strConfigFileName);
            if (File.Exists(strConfigFileName))
            {
                strFileName = strConfigFileName;
            }
            else
            {
                throw new Exception("eWorld.EMPI.Server.exe.config配置文件不存在");
            }

            return strFileName;
        }
        /// <summary>
        /// 获取配置文件中参数配置内容
        /// </summary>
        /// <param name="urlName">字段名</param>
        /// <returns></returns>
        public static string GetConfig(string urlName)
        {
            string result = string.Empty;
            try
            {
                string WebConfigPath = GetServerConfigFile();

                XmlDocument webConfig = new XmlDocument();
                webConfig.Load(WebConfigPath);
                XmlNode xOldNode = webConfig.SelectSingleNode("configuration");
                XmlNodeList nodeAppSettingOldList = xOldNode.SelectNodes("appSettings/add");

                XmlElement xElem = (XmlElement)xOldNode.SelectSingleNode("appSettings/add[@key='" + urlName + "']");
                if (xElem != null)
                {
                    result = xElem.GetAttribute("value");
                }
            }
            catch (Exception)
            {
                //logger.Error(string.Format("获取配置文件出错"), ex);
            }

            return result;
        }
    }
}
