using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Runtime.InteropServices;
using System.Xml;

namespace eWorld.EMPI.ConfigTool
{
    public partial class MainForm : Form
    {
        [DllImport("kernel32")]
        private static extern long WritePrivateProfileString(string section, string key, string val, string filePath);

        /// <summary>
        /// 服务名称
        /// </summary>
        private string serviceName = string.Empty;
        /// <summary>
        /// 是否需要清除消息
        /// </summary>
        private int needClearText = -1;

        public MainForm()
        {
            InitializeComponent();
        }


        private void pbMinsizeWindow_Click(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Minimized;
        }

        private void pbCloseWindow_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            string webConfigPath = AppDomain.CurrentDomain.BaseDirectory + "\\eWorld.EMPI.Server.exe.config";
            try
            {
                XmlDocument webConfig = new XmlDocument();
                webConfig.Load(webConfigPath);
                XmlNode xOldNode = webConfig.SelectSingleNode("configuration");
                XmlNodeList nodeAppSettingOldList = xOldNode.SelectNodes("appSettings/add");

                string crmApi = tb_Crm.Text.Trim();
                string idcasApi = tb_IDCAS.Text.Trim();
                string taskRowsForEachJob = tb_RowCount.Text.Trim();
                string observationDate = tb_ObservationDate.Text.Trim();
                string simpleRepeatInterval = tb_SimpleRepeatInterval.Text.Trim();
                string webServiceUrl = tb_WebServiceUrl.Text.Trim();
                if (!string.IsNullOrWhiteSpace(crmApi))
                {
                    XmlElement xElemUserName = (XmlElement)xOldNode.SelectSingleNode("appSettings/add[@key='CRMWebAPIUrl']");
                    if (xElemUserName != null)
                    {
                        xElemUserName.SetAttribute("value", crmApi);
                    }
                }
                if (!string.IsNullOrWhiteSpace(idcasApi))
                {
                    XmlElement xElemUserName = (XmlElement)xOldNode.SelectSingleNode("appSettings/add[@key='IDCASApiUrl']");
                    if (xElemUserName != null)
                    {
                        xElemUserName.SetAttribute("value", idcasApi);
                    }
                }
                if (!string.IsNullOrWhiteSpace(taskRowsForEachJob))
                {
                    XmlElement xElemUserName = (XmlElement)xOldNode.SelectSingleNode("appSettings/add[@key='TaskRowsForEachJob']");
                    if (xElemUserName != null)
                    {
                        xElemUserName.SetAttribute("value", taskRowsForEachJob);
                    }
                }
                if (!string.IsNullOrWhiteSpace(simpleRepeatInterval))
                {
                    XmlElement xElemUserName = (XmlElement)xOldNode.SelectSingleNode("appSettings/add[@key='SimpleRepeatInterval']");
                    if (xElemUserName != null)
                    {
                        xElemUserName.SetAttribute("value", simpleRepeatInterval);
                    }
                }
                if (!string.IsNullOrWhiteSpace(observationDate))
                {
                    XmlElement xElemUserName = (XmlElement)xOldNode.SelectSingleNode("appSettings/add[@key='StartObservationDate']");
                    if (xElemUserName != null)
                    {
                        xElemUserName.SetAttribute("value", observationDate);
                    }

                }
                if (!string.IsNullOrWhiteSpace(webServiceUrl))
                {
                    XmlElement xElemUserName = (XmlElement)xOldNode.SelectSingleNode("appSettings/add[@key='WebServiceUrl']");
                    if (xElemUserName != null)
                    {
                        xElemUserName.SetAttribute("value", webServiceUrl);
                    }
                }
                webConfig.Save(webConfigPath);
                SetMessage("保存成功", Color.Red);
            }
            catch (Exception ex)
            {
                MessageBox.Show("保存配置文件出现错误。配置文件路径：" + webConfigPath + "。错误信息：" + ex.Message, "提示", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnStart_Click(object sender, EventArgs e)
        {
            if (ServiceHelper.IsRunning(this.serviceName))
            {
                // 如果已经启动了， 就停止服务
                ServiceHelper.StopService();
                SetMessage("停止服务成功", Color.Green);
            }
            else
            {
                // 如果停止状态， 就启动服务
                ServiceHelper.StartService();
                SetMessage("启动服务成功", Color.Green);
            }
        }

        private void btnInstall_Click(object sender, EventArgs e)
        {
            if (ServiceHelper.isServiceIsExisted(this.serviceName))
            {
                // 已经安装了就卸载服务
                ServiceHelper.UnInstallService();
                SetMessage("卸载服务成功", Color.Green);
            }
            else
            {
                // 卸载服务
                ServiceHelper.InstallService();
                SetMessage("安装服务成功", Color.Green);
            }
        }

        /// <summary>
        /// 更新服务控制按钮状态
        /// </summary>
        private void UpdateServiceControlButtonState()
        {
            // 服务是否安装
            if (ServiceHelper.isServiceIsExisted(this.serviceName))
            {
                this.btnInstall.Image = Resource.UninstallButton;
                this.btnStart.Enabled = true;

                // 服务是否启动
                if (ServiceHelper.IsRunning(this.serviceName))
                {
                    this.btnStart.Image = Resource.StopButton;
                }
                else
                {
                    this.btnStart.Image = Resource.StartButton;
                }
            }
            else
            {
                // 服务没有安装
                this.btnInstall.Image = Resource.InstallButton;
                this.btnStart.Image = Resource.StartButton;
                this.btnStart.Enabled = false;
            }
        }

        public void SetMessage(string msg, Color clr)
        {
            this.lbMessage.ForeColor = clr;
            this.lbMessage.Text = msg;
            this.needClearText = 0;
        }

        public void ClearMessage()
        {
            this.lbMessage.ForeColor = Color.Black;
            this.lbMessage.Text = string.Empty;
            this.needClearText = -1;
        }

        #region 窗体移动
        private Point mousePosition;//记录按下去的坐标
        private void panelNav_MouseDown(object sender, MouseEventArgs e)
        {
            if (e.Button == MouseButtons.Left)
            {
                this.mousePosition.X = e.X;
                this.mousePosition.Y = e.Y;
            }
        }

        private void panelNav_MouseMove(object sender, MouseEventArgs e)
        {
            if (e.Button == MouseButtons.Left)
            {
                if (WindowState == FormWindowState.Maximized) return;//全屏不能拖动
                Top = Top + e.Y - mousePosition.Y;
                Left = Left + e.X - mousePosition.X;
            }
        }
        #endregion

        private void timer_Tick(object sender, EventArgs e)
        {
            UpdateServiceControlButtonState();

            if (this.needClearText > 5)
            {
                this.lbMessage.Text = string.Empty;
                this.needClearText = -1;
            }

            if (this.needClearText >= 0)
            {
                this.needClearText++;
            }
        }

        private void MainForm_Load(object sender, EventArgs e)
        {
            this.serviceName = ServiceHelper.GetServiceName();
            this.UpdateServiceControlButtonState();
            LoadData();
        }

        private void LoadData()
        {
            string webConfigPath = AppDomain.CurrentDomain.BaseDirectory + "\\eWorld.EMPI.Server.exe.config";
            try
            {
                XmlDocument webConfig = new XmlDocument();
                webConfig.Load(webConfigPath);
                XmlNode xOldNode = webConfig.SelectSingleNode("configuration");
                XmlNodeList nodeAppSettingOldList = xOldNode.SelectNodes("appSettings/add");

                string crmApi = "";
                string idcasApi = "";
                string taskRowsForEachJob = "";
                string observationDate = "";
                string simpleRepeatInterval = "";
                string webServiceUrl = "";
                XmlElement xElemUserName = (XmlElement)xOldNode.SelectSingleNode("appSettings/add[@key='CRMWebAPIUrl']");
                if (xElemUserName != null)
                {
                    crmApi = xElemUserName.GetAttribute("value");
                }
                xElemUserName = (XmlElement)xOldNode.SelectSingleNode("appSettings/add[@key='IDCASApiUrl']");
                if (xElemUserName != null)
                {
                    idcasApi = xElemUserName.GetAttribute("value");
                }
                xElemUserName = (XmlElement)xOldNode.SelectSingleNode("appSettings/add[@key='TaskRowsForEachJob']");
                if (xElemUserName != null)
                {
                    taskRowsForEachJob = xElemUserName.GetAttribute("value");
                }
                xElemUserName = (XmlElement)xOldNode.SelectSingleNode("appSettings/add[@key='SimpleRepeatInterval']");
                if (xElemUserName != null)
                {
                    simpleRepeatInterval = xElemUserName.GetAttribute("value");
                }
                xElemUserName = (XmlElement)xOldNode.SelectSingleNode("appSettings/add[@key='StartObservationDate']");
                if (xElemUserName != null)
                {
                    observationDate = xElemUserName.GetAttribute("value");
                }
                xElemUserName = (XmlElement)xOldNode.SelectSingleNode("appSettings/add[@key='WebServiceUrl']");
                if (xElemUserName != null)
                {
                    webServiceUrl = xElemUserName.GetAttribute("value");
                }
                tb_Crm.Text = crmApi;
                tb_SimpleRepeatInterval.Text = simpleRepeatInterval;
                tb_IDCAS.Text = idcasApi;
                tb_ObservationDate.Text = observationDate;
                tb_RowCount.Text = taskRowsForEachJob;
                tb_WebServiceUrl.Text = webServiceUrl;
            }
            catch (Exception ex)
            {
                MessageBox.Show("保存配置文件出现错误。配置文件路径：" + webConfigPath + "。错误信息：" + ex.Message, "提示", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
    }
}
