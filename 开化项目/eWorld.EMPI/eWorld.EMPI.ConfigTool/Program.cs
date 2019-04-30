using System;
using System.Diagnostics;
using System.Runtime.InteropServices;
using System.Windows.Forms;

namespace eWorld.EMPI.ConfigTool
{
    static class Program
    {
        private const int WS_SHOWNORMAL = 1;

        [DllImport("User32.dll")]
        private static extern bool ShowWindowAsync(IntPtr hWnd, int cmdShow);
        [DllImport("User32.dll")]
        private static extern bool SetForegroundWindow(IntPtr hWnd);

        /// <summary>
        /// 应用程序的主入口点。
        /// </summary>
        [STAThread]
        static void Main()
        {
            DetectRunningInstance();

            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(new MainForm());
        }

        /// <summary>
        /// 检测是否有已经运行的程序
        /// </summary>
        public static void DetectRunningInstance()
        {
            Process current = Process.GetCurrentProcess();
            Process[] processes = Process.GetProcessesByName(current.ProcessName);

            Process running = null;
            foreach (Process process in processes)
            {
                if (process.Id != current.Id)
                {
                    running = process;
                    break;
                }
            }

            if (running != null)
            {
                if (running.MainWindowHandle.ToInt32() != 0)
                {
                    ShowWindowAsync(running.MainWindowHandle, WS_SHOWNORMAL);
                    SetForegroundWindow(running.MainWindowHandle);
                }

                Environment.Exit(0);
            }
        }
    }
}
