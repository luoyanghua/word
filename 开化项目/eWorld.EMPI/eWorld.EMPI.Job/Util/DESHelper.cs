using System;
using System.IO;
using System.Security.Cryptography;
using System.Text;

namespace eWorld.EMPI.Job.Util
{
    public class DESHelper
    {
        private const string DefaultKey = "t0MT@w~1";
        
        /// <summary>
        /// 使用默认的key加密
        /// </summary>
        /// <param name="encryptStr">需要加密的字符串</param>
        /// <returns></returns>
        public static string Encrypt(string encryptStr)
        {
            return Encrypt(encryptStr, DefaultKey);
        }

        /// <summary>
        /// 带key加密
        /// </summary>
        /// <param name="encryptStr">需要加密的字符串</param>
        /// <param name="sKey">加密的key</param>
        /// <returns></returns>
        public static string Encrypt(string encryptStr, string sKey)
        {
            try
            {
                if (string.IsNullOrWhiteSpace(encryptStr))
                {
                    return null;
                }
                sKey = CreateKey(sKey);
                DESCryptoServiceProvider des = new DESCryptoServiceProvider();
                byte[] encryptArray = Encoding.UTF8.GetBytes(encryptStr);
                //Key只能8位
                des.Key = Encoding.UTF8.GetBytes(sKey);
                des.IV = Encoding.UTF8.GetBytes(sKey);
                MemoryStream ms = new MemoryStream();
                CryptoStream cs = new CryptoStream(ms, des.CreateEncryptor(), CryptoStreamMode.Write);
                cs.Write(encryptArray, 0, encryptArray.Length);
                cs.FlushFinalBlock();
                StringBuilder sb = new StringBuilder();
                foreach (byte b in ms.ToArray())
                {
                    sb.AppendFormat("{0:X2}", b);
                }
                sb.ToString();
                return sb.ToString();
            }
            catch
            {
                return null;
            }
        }

        /// <summary>
        /// 使用默认的key解密字符串
        /// </summary>
        /// <param name="decryptStr">密文</param>
        /// <returns></returns>
        public static string Decrypt(string decryptStr)
        {
            return Decrypt(decryptStr, DefaultKey);
        }

        /// <summary>
        /// 根据key解密字符串
        /// </summary>
        /// <param name="decryptStr">密文</param>
        /// <param name="sKey">key</param>
        /// <returns></returns>
        public static string Decrypt(string decryptStr, string sKey)
        {
            try
            {
                if (string.IsNullOrWhiteSpace(decryptStr))
                {
                    return null;
                }
                sKey = CreateKey(sKey);
                DESCryptoServiceProvider des = new DESCryptoServiceProvider();
                byte[] decryptArray = new byte[decryptStr.Length / 2];
                for (int i = 0; i < decryptStr.Length / 2; i++)
                {
                    int t = Convert.ToInt32(decryptStr.Substring(i * 2, 2), 16);
                    decryptArray[i] = (byte)t;
                }
                des.Key = Encoding.UTF8.GetBytes(sKey);
                des.IV = Encoding.UTF8.GetBytes(sKey);
                MemoryStream ms = new MemoryStream();
                CryptoStream cs = new CryptoStream(ms, des.CreateDecryptor(), CryptoStreamMode.Write);
                cs.Write(decryptArray, 0, decryptArray.Length);
                cs.FlushFinalBlock();
                return System.Text.Encoding.UTF8.GetString(ms.ToArray());
            }
            catch
            {
                return null;
            }
        }

      
        public static string CreateKey(string sKey)
        {
            string outStr = sKey;
            if (!string.IsNullOrWhiteSpace(sKey))
            {
                if (sKey.Length < 9)
                {
                    outStr = sKey + outStr.Substring(0, 8 - sKey.Length);
                }
                else
                {
                    outStr = sKey.Substring(0, 8);
                }
            }
            return outStr;
        }
    }
}
