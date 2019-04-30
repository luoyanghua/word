namespace eWorld.EMPI.ConfigTool
{
    partial class MainForm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(MainForm));
            this.panelNav = new System.Windows.Forms.Panel();
            this.label1 = new System.Windows.Forms.Label();
            this.pbCloseWindow = new System.Windows.Forms.PictureBox();
            this.pbMinsizeWindow = new System.Windows.Forms.PictureBox();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.lbcompany = new System.Windows.Forms.Label();
            this.lbContanctNumber = new System.Windows.Forms.Label();
            this.lbVersion = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.tb_Crm = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.tb_IDCAS = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.tb_RowCount = new System.Windows.Forms.TextBox();
            this.tb_ObservationDate = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.btnSave = new System.Windows.Forms.Button();
            this.btnStart = new System.Windows.Forms.Button();
            this.btnInstall = new System.Windows.Forms.Button();
            this.lbMessage = new System.Windows.Forms.Label();
            this.tb_SimpleRepeatInterval = new System.Windows.Forms.TextBox();
            this.label9 = new System.Windows.Forms.Label();
            this.label11 = new System.Windows.Forms.Label();
            this.timer = new System.Windows.Forms.Timer(this.components);
            this.tb_WebServiceUrl = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.panelNav.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pbCloseWindow)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pbMinsizeWindow)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // panelNav
            // 
            this.panelNav.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(28)))), ((int)(((byte)(139)))), ((int)(((byte)(228)))));
            this.panelNav.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("panelNav.BackgroundImage")));
            this.panelNav.Controls.Add(this.label1);
            this.panelNav.Controls.Add(this.pbCloseWindow);
            this.panelNav.Controls.Add(this.pbMinsizeWindow);
            this.panelNav.Controls.Add(this.pictureBox1);
            this.panelNav.Location = new System.Drawing.Point(-1, -1);
            this.panelNav.Name = "panelNav";
            this.panelNav.Size = new System.Drawing.Size(778, 64);
            this.panelNav.TabIndex = 1;
            this.panelNav.MouseDown += new System.Windows.Forms.MouseEventHandler(this.panelNav_MouseDown);
            this.panelNav.MouseMove += new System.Windows.Forms.MouseEventHandler(this.panelNav_MouseMove);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("微软雅黑", 14F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.label1.ForeColor = System.Drawing.Color.White;
            this.label1.Location = new System.Drawing.Point(95, 19);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(202, 26);
            this.label1.TabIndex = 2;
            this.label1.Text = "患者检查注册服务配置";
            // 
            // pbCloseWindow
            // 
            this.pbCloseWindow.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("pbCloseWindow.BackgroundImage")));
            this.pbCloseWindow.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Center;
            this.pbCloseWindow.Cursor = System.Windows.Forms.Cursors.Hand;
            this.pbCloseWindow.Location = new System.Drawing.Point(744, 3);
            this.pbCloseWindow.Name = "pbCloseWindow";
            this.pbCloseWindow.Size = new System.Drawing.Size(25, 23);
            this.pbCloseWindow.TabIndex = 2;
            this.pbCloseWindow.TabStop = false;
            this.pbCloseWindow.Click += new System.EventHandler(this.pbCloseWindow_Click);
            // 
            // pbMinsizeWindow
            // 
            this.pbMinsizeWindow.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("pbMinsizeWindow.BackgroundImage")));
            this.pbMinsizeWindow.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Center;
            this.pbMinsizeWindow.Cursor = System.Windows.Forms.Cursors.Hand;
            this.pbMinsizeWindow.Location = new System.Drawing.Point(713, 3);
            this.pbMinsizeWindow.Name = "pbMinsizeWindow";
            this.pbMinsizeWindow.Size = new System.Drawing.Size(25, 23);
            this.pbMinsizeWindow.TabIndex = 2;
            this.pbMinsizeWindow.TabStop = false;
            this.pbMinsizeWindow.Click += new System.EventHandler(this.pbMinsizeWindow_Click);
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = ((System.Drawing.Image)(resources.GetObject("pictureBox1.Image")));
            this.pictureBox1.InitialImage = null;
            this.pictureBox1.Location = new System.Drawing.Point(12, 9);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(72, 44);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureBox1.TabIndex = 0;
            this.pictureBox1.TabStop = false;
            // 
            // lbcompany
            // 
            this.lbcompany.AutoSize = true;
            this.lbcompany.Font = new System.Drawing.Font("微软雅黑", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.lbcompany.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(102)))), ((int)(((byte)(102)))), ((int)(((byte)(102)))));
            this.lbcompany.Location = new System.Drawing.Point(50, 327);
            this.lbcompany.Name = "lbcompany";
            this.lbcompany.Size = new System.Drawing.Size(212, 17);
            this.lbcompany.TabIndex = 12;
            this.lbcompany.Text = "宁波市科技园区明天医网科技有限公司";
            // 
            // lbContanctNumber
            // 
            this.lbContanctNumber.AutoSize = true;
            this.lbContanctNumber.Font = new System.Drawing.Font("微软雅黑", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.lbContanctNumber.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(102)))), ((int)(((byte)(102)))), ((int)(((byte)(102)))));
            this.lbContanctNumber.Location = new System.Drawing.Point(352, 327);
            this.lbContanctNumber.Name = "lbContanctNumber";
            this.lbContanctNumber.Size = new System.Drawing.Size(143, 17);
            this.lbContanctNumber.TabIndex = 12;
            this.lbContanctNumber.Text = "服务电话: 400-605-7136";
            // 
            // lbVersion
            // 
            this.lbVersion.AutoSize = true;
            this.lbVersion.Font = new System.Drawing.Font("微软雅黑", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.lbVersion.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(102)))), ((int)(((byte)(102)))), ((int)(((byte)(102)))));
            this.lbVersion.Location = new System.Drawing.Point(610, 327);
            this.lbVersion.Name = "lbVersion";
            this.lbVersion.Size = new System.Drawing.Size(125, 17);
            this.lbVersion.TabIndex = 12;
            this.lbVersion.Text = "版本: 1.0.3.20180427";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(27, 134);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(77, 12);
            this.label2.TabIndex = 13;
            this.label2.Text = "CRMAPI地址：";
            // 
            // tb_Crm
            // 
            this.tb_Crm.Location = new System.Drawing.Point(117, 130);
            this.tb_Crm.Name = "tb_Crm";
            this.tb_Crm.Size = new System.Drawing.Size(266, 21);
            this.tb_Crm.TabIndex = 14;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(13, 85);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(89, 12);
            this.label3.TabIndex = 15;
            this.label3.Text = "IDCASAPI地址：";
            // 
            // tb_IDCAS
            // 
            this.tb_IDCAS.Location = new System.Drawing.Point(117, 81);
            this.tb_IDCAS.Name = "tb_IDCAS";
            this.tb_IDCAS.Size = new System.Drawing.Size(266, 21);
            this.tb_IDCAS.TabIndex = 16;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(445, 86);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(101, 12);
            this.label5.TabIndex = 19;
            this.label5.Text = "每次同步记录数：";
            // 
            // tb_RowCount
            // 
            this.tb_RowCount.Location = new System.Drawing.Point(548, 82);
            this.tb_RowCount.Name = "tb_RowCount";
            this.tb_RowCount.Size = new System.Drawing.Size(207, 21);
            this.tb_RowCount.TabIndex = 20;
            // 
            // tb_ObservationDate
            // 
            this.tb_ObservationDate.Location = new System.Drawing.Point(548, 127);
            this.tb_ObservationDate.Name = "tb_ObservationDate";
            this.tb_ObservationDate.Size = new System.Drawing.Size(207, 21);
            this.tb_ObservationDate.TabIndex = 22;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(457, 130);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(89, 12);
            this.label6.TabIndex = 21;
            this.label6.Text = "开始同步日期：";
            // 
            // btnSave
            // 
            this.btnSave.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btnSave.FlatAppearance.BorderSize = 0;
            this.btnSave.FlatAppearance.MouseOverBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(234)))), ((int)(((byte)(244)))), ((int)(((byte)(253)))));
            this.btnSave.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnSave.Image = ((System.Drawing.Image)(resources.GetObject("btnSave.Image")));
            this.btnSave.Location = new System.Drawing.Point(74, 249);
            this.btnSave.Name = "btnSave";
            this.btnSave.Size = new System.Drawing.Size(170, 61);
            this.btnSave.TabIndex = 25;
            this.btnSave.UseVisualStyleBackColor = true;
            this.btnSave.Click += new System.EventHandler(this.btnSave_Click);
            // 
            // btnStart
            // 
            this.btnStart.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btnStart.FlatAppearance.BorderSize = 0;
            this.btnStart.FlatAppearance.MouseOverBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(234)))), ((int)(((byte)(244)))), ((int)(((byte)(253)))));
            this.btnStart.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnStart.Image = ((System.Drawing.Image)(resources.GetObject("btnStart.Image")));
            this.btnStart.Location = new System.Drawing.Point(585, 249);
            this.btnStart.Name = "btnStart";
            this.btnStart.Size = new System.Drawing.Size(170, 61);
            this.btnStart.TabIndex = 4;
            this.btnStart.UseVisualStyleBackColor = true;
            this.btnStart.Click += new System.EventHandler(this.btnStart_Click);
            // 
            // btnInstall
            // 
            this.btnInstall.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btnInstall.FlatAppearance.BorderSize = 0;
            this.btnInstall.FlatAppearance.MouseOverBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(234)))), ((int)(((byte)(244)))), ((int)(((byte)(253)))));
            this.btnInstall.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnInstall.Image = ((System.Drawing.Image)(resources.GetObject("btnInstall.Image")));
            this.btnInstall.Location = new System.Drawing.Point(337, 249);
            this.btnInstall.Name = "btnInstall";
            this.btnInstall.Size = new System.Drawing.Size(170, 61);
            this.btnInstall.TabIndex = 3;
            this.btnInstall.UseVisualStyleBackColor = true;
            this.btnInstall.Click += new System.EventHandler(this.btnInstall_Click);
            // 
            // lbMessage
            // 
            this.lbMessage.AutoSize = true;
            this.lbMessage.Location = new System.Drawing.Point(300, 249);
            this.lbMessage.Name = "lbMessage";
            this.lbMessage.Size = new System.Drawing.Size(0, 12);
            this.lbMessage.TabIndex = 28;
            // 
            // tb_SimpleRepeatInterval
            // 
            this.tb_SimpleRepeatInterval.Location = new System.Drawing.Point(548, 169);
            this.tb_SimpleRepeatInterval.Name = "tb_SimpleRepeatInterval";
            this.tb_SimpleRepeatInterval.Size = new System.Drawing.Size(189, 21);
            this.tb_SimpleRepeatInterval.TabIndex = 33;
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(482, 174);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(65, 12);
            this.label9.TabIndex = 32;
            this.label9.Text = "同步频率：";
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Location = new System.Drawing.Point(741, 174);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(17, 12);
            this.label11.TabIndex = 35;
            this.label11.Text = "秒";
            // 
            // timer
            // 
            this.timer.Enabled = true;
            this.timer.Interval = 1000;
            this.timer.Tick += new System.EventHandler(this.timer_Tick);
            // 
            // tb_WebServiceUrl
            // 
            this.tb_WebServiceUrl.Location = new System.Drawing.Point(116, 171);
            this.tb_WebServiceUrl.Name = "tb_WebServiceUrl";
            this.tb_WebServiceUrl.Size = new System.Drawing.Size(266, 21);
            this.tb_WebServiceUrl.TabIndex = 37;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(5, 175);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(101, 12);
            this.label4.TabIndex = 36;
            this.label4.Text = "WebService地址：";
            // 
            // MainForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(254)))), ((int)(((byte)(254)))), ((int)(((byte)(254)))));
            this.ClientSize = new System.Drawing.Size(777, 361);
            this.Controls.Add(this.tb_WebServiceUrl);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label11);
            this.Controls.Add(this.tb_SimpleRepeatInterval);
            this.Controls.Add(this.label9);
            this.Controls.Add(this.lbMessage);
            this.Controls.Add(this.btnInstall);
            this.Controls.Add(this.btnStart);
            this.Controls.Add(this.btnSave);
            this.Controls.Add(this.tb_ObservationDate);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.tb_RowCount);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.tb_IDCAS);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.tb_Crm);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.lbVersion);
            this.Controls.Add(this.lbContanctNumber);
            this.Controls.Add(this.lbcompany);
            this.Controls.Add(this.panelNav);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "MainForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "MainForm";
            this.Load += new System.EventHandler(this.MainForm_Load);
            this.panelNav.ResumeLayout(false);
            this.panelNav.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pbCloseWindow)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pbMinsizeWindow)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Panel panelNav;
        private System.Windows.Forms.PictureBox pbCloseWindow;
        private System.Windows.Forms.PictureBox pbMinsizeWindow;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label lbcompany;
        private System.Windows.Forms.Label lbContanctNumber;
        private System.Windows.Forms.Label lbVersion;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox tb_Crm;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox tb_IDCAS;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox tb_RowCount;
        private System.Windows.Forms.TextBox tb_ObservationDate;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Button btnSave;
        private System.Windows.Forms.Button btnStart;
        private System.Windows.Forms.Button btnInstall;
        private System.Windows.Forms.Label lbMessage;
        private System.Windows.Forms.TextBox tb_SimpleRepeatInterval;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.Timer timer;
        private System.Windows.Forms.TextBox tb_WebServiceUrl;
        private System.Windows.Forms.Label label4;
    }
}