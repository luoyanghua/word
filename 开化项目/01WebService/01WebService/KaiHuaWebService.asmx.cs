using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using Newtonsoft.Json;
using _01WebService.Model;

namespace _01WebService
{
    /// <summary>
    /// KaiHuaWebService 的摘要说明
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // 若要允许使用 ASP.NET AJAX 从脚本中调用此 Web 服务，请取消注释以下行。 
    // [System.Web.Script.Services.ScriptService]
    public class KaiHuaWebService : System.Web.Services.WebService
    {

        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }

        [WebMethod]
        public string GetPatPacsResultInfo(string _st, string _ed)
        {
            var result = new BaseResult() { RETCODE = 0 };
            if (_st == "700001")
            {
                try
                {
                    var param = JsonConvert.DeserializeObject<Person>(_ed);
                    param.Name = param.Name + " hua";
                    param.Age = 100;
                    param.Gender = "未知";
                    result.RETCODE = 1;
                    result.RETMSG = JsonConvert.SerializeObject(param);
                }
                catch (Exception)
                {
                    result.RETMSG = "errro";
                }


               
            }
            else
            {
                result.RETMSG = "code error";
            }
            return JsonConvert.SerializeObject(result);
        }
    }
}
