using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using eWorld.EMPI.Server.ServerControler;
using System.IO;
using Topshelf;


[assembly: log4net.Config.XmlConfigurator(Watch = true)]
namespace eWorld.EMPI.Server
{
    class Program
    {
        static void Main(string[] args)
        {
            Directory.SetCurrentDirectory(System.AppDomain.CurrentDomain.BaseDirectory);

            HostFactory.Run(x =>
            {
                x.RunAsLocalSystem();

                x.SetDescription(QuartzServerConfig.ServiceDescription);
                x.SetDisplayName(QuartzServerConfig.ServiceDisplayName);
                x.SetServiceName(QuartzServerConfig.ServiceName);
                x.SetStartTimeout(new TimeSpan(0, 0, 120));
                x.EnableServiceRecovery(r =>
                {
                    r.RestartService(0);
                    r.RestartService(0);
                    r.RestartService(0);
                    r.OnCrashOnly();
                });

                x.Service(factory =>
                {
                    QuartzServer server = new QuartzServer();
                    return server;
                });
            });
        }
    }
}
