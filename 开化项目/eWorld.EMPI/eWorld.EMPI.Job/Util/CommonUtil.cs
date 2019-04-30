using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Net;

namespace eWorld.EMPI.Job.Util
{
    public class CommonUtil
    {
        public static string GetIP()
        {
            string ip = "";
            try
            {
                var host = Dns.GetHostName();
                // 显示每个IP地址
                var hostEntry = Dns.GetHostEntry(host);
                var addressList = hostEntry.AddressList;
                if (addressList != null && addressList.Length > 0)
                {
                    ip = addressList.FirstOrDefault(t => t.ToString().Contains(".")).ToString();//取得IPV4地址
                    if (string.IsNullOrEmpty(ip))
                    {
                        ip = addressList[0].ToString();
                    }
                }

            }
            catch (Exception ex)
            {
            }

            return ip;
        }


        /// <summary>
        /// 格式化性别
        /// </summary>
        /// <param name="sex"></param>
        /// <returns></returns>
        public static int FormateSex(string sex)
        {
            if (string.IsNullOrWhiteSpace(sex))
            {
                return 0;
            }
            var resFile = sex.Trim();
            int sexint = 0;
            switch (resFile)
            {
                case "男":
                    sexint = 1;
                    break;
                case "女性":
                    sexint = 2;
                    break;
                case "女":
                    sexint = 2;
                    break;
                case "男性":
                    sexint = 1;
                    break;
                default:
                    sexint = 1;
                    break;
            }
            return sexint;
        }
        /// <summary>
        /// 格式化患者类型
        /// </summary>
        /// <param name="sex"></param>
        /// <returns></returns>
        public static int FormatePatientType(string PatientClass)
        {
            if (string.IsNullOrWhiteSpace(PatientClass))
            {
                return 9;
            }
            var resFile = PatientClass.Trim();
            int patientClassint = 0;
            switch (resFile)
            {
                case "急诊":
                    patientClassint = 1;
                    break;
                case "门诊":
                    patientClassint = 2;
                    break;
                case "住院":
                    patientClassint = 3;
                    break;
                default:
                    patientClassint = 9;
                    break;
            }
            return patientClassint;
        }
    }
}
