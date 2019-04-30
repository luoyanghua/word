using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ServiceProcess;
using System.Collections;
using System.Configuration.Install;
using System.Xml;
using System.Diagnostics;

namespace eWorld.EMPI.ConfigTool
{
    class ServiceHelper
    {
        /// <summary>
        /// 检查服务存在的存在性
        /// </summary>
        /// <param name=" NameService ">服务名</param>
        /// <returns>存在返回 true,否则返回 false;</returns>
        public static bool isServiceIsExisted(string NameService)
        {
            ServiceController[] services = ServiceController.GetServices();
            foreach (ServiceController s in services)
            {
                if (s.ServiceName.ToLower() == NameService.ToLower())
                {
                    return true;
                }
            }
            return false;
        }

        /// <summary>
        /// 安装Windows服务
        /// </summary>
        /// <param name="stateSaver">集合</param>
        /// <param name="filepath">程序文件路径</param>
        public static void InstallService(IDictionary stateSaver, string filepath)
        {
            AssemblyInstaller AssemblyInstaller1 = new AssemblyInstaller();
            AssemblyInstaller1.UseNewContext = true;
            AssemblyInstaller1.Path = filepath;
            AssemblyInstaller1.Install(stateSaver);
            AssemblyInstaller1.Commit(stateSaver);
            AssemblyInstaller1.Dispose();
        }

        /// <summary>
        /// 卸载Windows服务
        /// </summary>
        /// <param name="filepath">程序文件路径</param>
        public static void UnInstallmyService(string filepath)
        {
            AssemblyInstaller AssemblyInstaller1 = new AssemblyInstaller();
            AssemblyInstaller1.UseNewContext = true;
            AssemblyInstaller1.Path = filepath;
            AssemblyInstaller1.Uninstall(null);
            AssemblyInstaller1.Dispose();
        }

        /// <summary>
        /// 检查Windows服务是否在运行
        /// </summary>
        /// <param name="name">程序的服务名</param>
        public static bool IsRunning(string name)
        {
            bool IsRun = false;
            try
            {
                if (!isServiceIsExisted(name))
                {
                    return false;
                }
                ServiceController sc = new ServiceController(name);
                if (sc.Status == ServiceControllerStatus.StartPending || sc.Status == ServiceControllerStatus.Running)
                {
                    IsRun = true;
                }
                sc.Close();
            }
            catch
            {
                IsRun = false;
            }
            return IsRun;
        }

        /// <summary>
        /// 启动Windows服务
        /// </summary>
        /// <param name="name">程序的服务名</param>
        /// <returns>启动成功返回 true,否则返回 false;</returns>
        public static bool StartService(string name)
        {
            ServiceController sc = new ServiceController(name);
            if (sc.Status == ServiceControllerStatus.Stopped || sc.Status == ServiceControllerStatus.StopPending)
            {
                sc.Start();
                sc.WaitForStatus(ServiceControllerStatus.Running, new TimeSpan(0, 0, 30));
            }
            else
            {
            }
            sc.Close();
            return true;
        }

        /// <summary>
        /// 停止Windows服务
        /// </summary>
        /// <param name="name">程序的服务名</param>
        /// <returns>停止成功返回 true,否则返回 false;</returns>
        public static bool StopService(string name)
        {
            ServiceController sc = new ServiceController(name);
            if (sc.Status == ServiceControllerStatus.Running ||
                sc.Status == ServiceControllerStatus.StartPending)
            {
                sc.Stop();

                sc.WaitForStatus(ServiceControllerStatus.Stopped, new TimeSpan(0, 0, 30));


            }
            else
            {
            }
            sc.Close();
            return true;
        }

        /// <summary>
        /// 重启Windows服务
        /// </summary>
        /// <param name="name">程序的服务名</param>
        /// <returns>重启成功返回 true,否则返回 false;</returns>
        public static bool RefreshmyService(string name)
        {
            return StopService(name) && StartService(name);
        }

        /// <summary>
        /// 卸载服务
        /// </summary>
        public static void UnInstallService()
        {
            Process proc = null;
            try
            {
                string serviceInstallPath = AppDomain.CurrentDomain.BaseDirectory;
                proc = new Process();
                proc.StartInfo.WorkingDirectory = serviceInstallPath;
                proc.StartInfo.FileName = "install-Service-u.bat";
                proc.StartInfo.Arguments = string.Format("10");//this is argument
                proc.StartInfo.CreateNoWindow = true;
                proc.StartInfo.WindowStyle = ProcessWindowStyle.Hidden;//这里设置DOS窗口不显示，经实践可行
                proc.Start();
                proc.WaitForExit();
            }
            catch (Exception ex)
            {
                Console.WriteLine("Exception Occurred :{0},{1}", ex.Message, ex.StackTrace.ToString());
            }
        }

        /// <summary>
        /// 安装服务
        /// </summary>
        public static void InstallService()
        {
            Process proc = null;
            try
            {
                string targetDir = AppDomain.CurrentDomain.BaseDirectory;
                proc = new Process();
                proc.StartInfo.WorkingDirectory = targetDir;
                proc.StartInfo.FileName = "install-Service.bat";
                proc.StartInfo.Arguments = string.Format("10");//this is argument
                proc.StartInfo.CreateNoWindow = true;
                proc.StartInfo.WindowStyle = ProcessWindowStyle.Hidden;//这里设置DOS窗口不显示，经实践可行
                proc.Start();
                proc.WaitForExit();
            }
            catch (Exception ex)
            {
                Console.WriteLine("Exception Occurred :{0},{1}", ex.Message, ex.StackTrace.ToString());
            }
        }

        /// <summary>
        /// 启动服务
        /// </summary>
        public static void StartService()
        {
            Process proc = null;
            try
            {
                string targetDir = AppDomain.CurrentDomain.BaseDirectory;
                proc = new Process();
                proc.StartInfo.WorkingDirectory = targetDir;
                proc.StartInfo.FileName = "start-Service.bat";
                proc.StartInfo.Arguments = string.Format("10");//this is argument
                proc.StartInfo.CreateNoWindow = true;
                proc.StartInfo.WindowStyle = ProcessWindowStyle.Hidden;//这里设置DOS窗口不显示，经实践可行
                proc.Start();
                proc.WaitForExit();
            }
            catch (Exception ex)
            {
                Console.WriteLine("Exception Occurred :{0},{1}", ex.Message, ex.StackTrace.ToString());
            }
        }

        /// <summary>
        /// 停止服务
        /// </summary>
        public static void StopService()
        {
            Process proc = null;
            try
            {
                string targetDir = AppDomain.CurrentDomain.BaseDirectory;
                proc = new Process();
                proc.StartInfo.WorkingDirectory = targetDir;
                proc.StartInfo.FileName = "stop-Service.bat";
                proc.StartInfo.Arguments = string.Format("10");//this is argument
                proc.StartInfo.CreateNoWindow = true;
                proc.StartInfo.WindowStyle = ProcessWindowStyle.Hidden;//这里设置DOS窗口不显示，经实践可行
                proc.Start();
                proc.WaitForExit();
            }
            catch (Exception ex)
            {
                Console.WriteLine("Exception Occurred :{0},{1}", ex.Message, ex.StackTrace.ToString());
            }
        }

        /// <summary>
        /// 获取服务名称
        /// </summary>
        /// <returns></returns>
        public static string GetServiceName()
        {
            string webConfigPath = AppDomain.CurrentDomain.BaseDirectory + "\\eWorld.EMPI.Server.exe.config";
            string result = "";
            try
            {
                XmlDocument webConfig = new XmlDocument();
                webConfig.Load(webConfigPath);
                XmlNode xOldNode = webConfig.SelectSingleNode("configuration");
                XmlNodeList nodeAppSettingOldList = xOldNode.SelectNodes("quartz/add");

                XmlElement xElem = (XmlElement)xOldNode.SelectSingleNode("quartz/add[@key='quartz.server.serviceName']");
                if (xElem != null)
                {
                    result = xElem.GetAttribute("value");
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return result;
        }
    }
}
