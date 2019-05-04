using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;
using YtWebService;
using YtWebService.Model;

namespace _02ProgramClient
{
    class Program
    {
        static void Main(string[] args)
        {
            //var client = new WebServiceProxy("http://localhost:7100/KaiHuaWebService.asmx/GetPatPacsResultInfo");
            var client = new WebServiceProxy("http://localhost:7100/KaiHuaWebService.asmx?wsdl", "GetPatPacsResultInfo");
            Person p=new Person()
            {
                Name="Gua",
                Age=11,
                Gender="驴"
            };
            var param = JsonConvert.SerializeObject(p);
            var model = new object[2] {"700001",param};
            var result = client.ExecuteQuery("GetPatPacsResultInfo", model);
            Console.WriteLine(result);
            Console.ReadKey();
        }
    }
}
