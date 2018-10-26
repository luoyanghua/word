using System.Collections.Generic;
using eWorld.Entity.Domain.CRM;
using eWorld.Entity.Domain.Common.NopCommerce.Security;

namespace eWorld.Services.Common.NopCommerce.Security
{
    /// <summary>
    /// Standard permission provider
    /// </summary>
    public partial class StandardPermissionProvider : IPermissionProvider
    {
        #region 备用权限
        //admin area permissions

        //public static readonly PermissionRecord AdministratorCustomers = new PermissionRecord { Name = "用户管理", SystemName = "AdministratorCustomers", Category = "Administrator" };
        //public static readonly PermissionRecord AdministratorCustomerRole = new PermissionRecord { Name = "角色管理", SystemName = "AdministratorCustomerRole", Category = "Administrator" };
        //public static readonly PermissionRecord AdministratorAcl = new PermissionRecord { Name = "访问控制", SystemName = "AdministratorAcl", Category = "Administrator" };

        //public static readonly PermissionRecord AdministratorMedicalInstitution = new PermissionRecord { Name = "医疗机构管理", SystemName = "AdministratorMedicalInstitution", Category = "Administrator" };
        //public static readonly PermissionRecord AdministratorMedicalDepartments = new PermissionRecord { Name = "医院科室管理", SystemName = "AdministratorMedicalDepartments", Category = "Administrator" };

        //public static readonly PermissionRecord AdministratorVideoMaintenance = new PermissionRecord { Name = "视频终端信息维护", SystemName = "AdministratorVideoMaintenance", Category = "Administrator" };
        //public static readonly PermissionRecord AdministratorVideoManagement = new PermissionRecord { Name = "视频终端使用管理", SystemName = "AdministratorVideoManagement", Category = "Administrator" };

        //public static readonly PermissionRecord AdministratorQualityControl = new PermissionRecord { Name = "质控内容设置", SystemName = "AdministratorQualityControl", Category = "Administrator" };
        //public static readonly PermissionRecord AdministratorQualityTemplate = new PermissionRecord { Name = "质控模版设置", SystemName = "AdministratorQualityTemplate", Category = "Administrator" };


        //public static readonly PermissionRecord AdministratorSettings = new PermissionRecord { Name = "系统设置", SystemName = "AdministratorSettings", Category = "Administrator" };

        //public static readonly PermissionRecord AdministratorGeneralSettings = new PermissionRecord { Name = "综合设置", SystemName = "AdministratorGeneralSettings", Category = "Administrator" };
        //public static readonly PermissionRecord AdministratorCustomerSettings = new PermissionRecord { Name = "用户设置", SystemName = "AdministratorCustomerSettings", Category = "Administrator" };
        //public static readonly PermissionRecord AdministratorAllSettings = new PermissionRecord { Name = "所有设置", SystemName = "AdministratorAllSettings", Category = "Administrator" };
        //public static readonly PermissionRecord AdministratorDictionary = new PermissionRecord { Name = "数据字典", SystemName = "AdministratorDictionary", Category = "Administrator" };
        //public static readonly PermissionRecord AdministratorEmailAccounts = new PermissionRecord { Name = "邮件帐户", SystemName = "AdministratorEmailAccounts", Category = "Administrator" };
        //public static readonly PermissionRecord AdministratorPlugins = new PermissionRecord { Name = "插件管理", SystemName = "AdministratorPlugins", Category = "Administrator" };

        //public static readonly PermissionRecord AdministratorSystemInfomation = new PermissionRecord { Name = "系统信息", SystemName = "AdministratorSystemInfomation", Category = "Administrator" };

        //public static readonly PermissionRecord AdministratorActivityLog = new PermissionRecord { Name = "活动日志", SystemName = "AdministratorActivityLog", Category = "Administrator" };
        //public static readonly PermissionRecord AdministratorAnnouncement = new PermissionRecord { Name = "系统公告", SystemName = "AdministratorAnnouncement", Category = "Administrator" };
        //public static readonly PermissionRecord AdministratorMaintenance = new PermissionRecord { Name = "系统维护", SystemName = "AdministratorMaintenance", Category = "Administrator" };
        //public static readonly PermissionRecord AdministratorSystemLog = new PermissionRecord { Name = "系统日志", SystemName = "AdministratorSystemLog", Category = "Administrator" };
        //public static readonly PermissionRecord AdministratorScheduleTasks = new PermissionRecord { Name = "计划任务", SystemName = "AdministratorScheduleTasks", Category = "Administrator" };
        //public static readonly PermissionRecord AdministratorVersion = new PermissionRecord { Name = "版本信息", SystemName = "AdministratorVersion", Category = "Administrator" };

        //public static readonly PermissionRecord AdministratorWidgets = new PermissionRecord { Name = "部件管理", SystemName = "AdministratorWidgets", Category = "Administrator" };
        //public static readonly PermissionRecord AdministratorMessageTemplates = new PermissionRecord { Name = "消息模板", SystemName = "AdministratorMessageTemplates", Category = "Administrator" };
        //public static readonly PermissionRecord AdministratorLanguages = new PermissionRecord { Name = "语言管理", SystemName = "AdministratorLanguages", Category = "Administrator" };
        //public static readonly PermissionRecord AdministratorWebSites = new PermissionRecord { Name = "网站管理", SystemName = "AdministratorWebSites", Category = "Administrator" };
        #endregion

        #region 系统管理员

        //后台管理
        public static readonly PermissionRecord AdministratorAccessPanel = new PermissionRecord { Name = "访问后台管理", SystemName = "AdministratorAccessPanel", Category = "Administrator" };

        #endregion

        #region 医生

        //访问远程医疗协同医生中心
        public static readonly PermissionRecord RemoteMedDoctorAccessPanel = new PermissionRecord { Name = "访问远程医疗协同医生中心", SystemName = "RemoteMedDoctorAccessPanel", Category = "RemoteMed" };

        //访问公共健康医生中心
        public static readonly PermissionRecord PublilcHealthDoctorAccessPanel = new PermissionRecord { Name = "访问公共健康医生中心", SystemName = "PublilcHealthDoctorAccessPanel", Category = "PublilcHealth" };

        //访问影像存储共享
        public static readonly PermissionRecord ImageArchiveAccessPanel = new PermissionRecord { Name = "访问影像存储共享", SystemName = "ImageArchiveAccessPanel", Category = "ImageArchive" };

        //访问医生手机客户端
        public static readonly PermissionRecord PhoneClientDoctorAccessPanel = new PermissionRecord { Name = "访问医生手机客户端", SystemName = "PhoneClientDoctorAccessPanel", Category = "PhoneClient" };

        //访问医生用户关系管理中心
        public static readonly PermissionRecord CRMDoctorAccessPanel = new PermissionRecord { Name = "访问医生用户关系管理中心", SystemName = "CRMDoctorAccessPanel", Category = "CRM" };

        #endregion

        #region 医护人员

        //访问公共健康医护中心
        public static readonly PermissionRecord PublilcHealthMedicalStaffAccessPanel = new PermissionRecord { Name = "访问公共健康医护中心", SystemName = "PublilcHealthMedicalStaffAccessPanel", Category = "PublilcHealth" };

        #endregion

        #region 药剂师

        //访问药剂师个人中心
        public static readonly PermissionRecord PharmacistsAccessPanel = new PermissionRecord { Name = "访问药剂师个人中心", SystemName = "PharmacistsAccessPanel", Category = "PublilcHealth" };

        #endregion

        #region 公众用户

        //访问公众健康患者中心
        public static readonly PermissionRecord PublilcHealthPatientAccessPanel = new PermissionRecord { Name = "访问公众健康患者中心", SystemName = "PublilcHealthPatientAccessPanel", Category = "PublilcHealth" };

        //访问公众用户手机客户端
        public static readonly PermissionRecord PhoneClientPatientAccessPanel = new PermissionRecord { Name = "访问公众用户手机客户端", SystemName = "PhoneClientPatientAccessPanel", Category = "PhoneClient" };

        //访问公众用户关系管理中心
        public static readonly PermissionRecord CRMPatientAccessPanel = new PermissionRecord { Name = "访问公众用户关系管理中心", SystemName = "CRMPatientAccessPanel", Category = "CRM" };

        #endregion

        #region 教学公共

        //访问远程医学教育管理中心
        public static readonly PermissionRecord TeachAccessPanel = new PermissionRecord { Name = "访问远程医学教育管理中心", SystemName = "TeachAccessPanel", Category = "Teach" };

        #endregion

        #region 讲师

        //远程教育
        public static readonly PermissionRecord JoinRemoteTeach = new PermissionRecord { Name = "远程教育", SystemName = "JoinRemoteTeach", Category = "Teach" };

        #endregion

        #region 学员

        //远程学习
        public static readonly PermissionRecord JoinRemoteStudy = new PermissionRecord { Name = "远程学习", SystemName = "JoinRemoteStudy", Category = "Teach" };

        #endregion

        #region 教学管理员

        //远程教育管理
        public static readonly PermissionRecord TeachManager = new PermissionRecord { Name = "远程教育管理", SystemName = "TeachManager", Category = "Teach" };

        #endregion

        #region 继教负责人

        //继教项目审核
        public static readonly PermissionRecord ConEduAudit = new PermissionRecord { Name = "继教项目审核", SystemName = "ConEduAudit", Category = "Teach" };

        #endregion

        #region 管理人员公共

        //访问管理人员用户关系管理中心
        public static readonly PermissionRecord CRMManagerAccessPanel = new PermissionRecord { Name = "访问管理人员用户关系管理中心", SystemName = "CRMManagerAccessPanel", Category = "CRM" };

        #endregion

        #region 运营管理公共

        //访问运营管理中心
        public static readonly PermissionRecord PlatManagerAccessPanel = new PermissionRecord { Name = "访问运营管理中心", SystemName = "PlatManagerAccessPanel", Category = "PlatManage" };

        //平台综合管理
        public static readonly PermissionRecord PlatOverAllManage = new PermissionRecord { Name = "平台综合管理", SystemName = "PlatOverAllManage", Category = "PlatManage" };

        #endregion

        #region 运营团队管理者

        //运营团队用户管理
        public static readonly PermissionRecord OperateTeamUserManage = new PermissionRecord { Name = "运营团队用户管理", SystemName = "OperateTeamUserManage", Category = "PlatManage" };

        //平台用户用户管理
        public static readonly PermissionRecord PlatUserManage = new PermissionRecord { Name = "平台用户用户管理", SystemName = "PlatUserManage", Category = "PlatManage" };

        //对外信息的审核
        public static readonly PermissionRecord OutInformationAudit = new PermissionRecord { Name = "对外信息的审核", SystemName = "OutInformationAudit", Category = "PlatManage" };

        //服务质量监督
        public static readonly PermissionRecord ServiceQualityMonitor = new PermissionRecord { Name = "服务质量监督", SystemName = "ServiceQualityMonitor", Category = "PlatManage" };

        #endregion

        #region 运营管理人员

        //医疗机构用户用户管理 
        public static readonly PermissionRecord MedicalInstitutionUserManage = new PermissionRecord { Name = "医疗机构用户用户管理", SystemName = "MedicalInstitutionUserManage", Category = "PlatManage" };

        //企业用户用户管理  
        public static readonly PermissionRecord EnterpriseUserManage = new PermissionRecord { Name = "企业用户用户管理", SystemName = "EnterpriseUserManage", Category = "PlatManage" };

        //公众用户用户管理   
        public static readonly PermissionRecord PublicUserManage = new PermissionRecord { Name = "公众用户用户管理", SystemName = "PublicUserManage", Category = "PlatManage" };

        //专家用户用户管理   
        public static readonly PermissionRecord ExpertUserManage = new PermissionRecord { Name = "专家用户用户管理", SystemName = "ExpertUserManage", Category = "PlatManage" };

        //第三方服务机构用户管理
        public static readonly PermissionRecord ThirdInstitutionUserManage = new PermissionRecord { Name = "第三方服务机构用户管理", SystemName = "ThirdInstitutionUserManage", Category = "PlatManage" };

        //模板管理
        public static readonly PermissionRecord TemplateManage = new PermissionRecord { Name = "模板管理", SystemName = "TemplateManage", Category = "PlatManage" };

        //信息发布管理
        public static readonly PermissionRecord OutInformationManage = new PermissionRecord { Name = "信息发布管理", SystemName = "OutInformationManage", Category = "PlatManage" };

        #endregion

        #region 运营服务公共

        //访问运营服务中心
        public static readonly PermissionRecord PlatServiceAccessPanel = new PermissionRecord { Name = "访问运营服务中心", SystemName = "PlatServiceAccessPanel", Category = "PlatService" };

        #endregion

        #region 运营服务人员

        //任务处理
        public static readonly PermissionRecord TaskProcess = new PermissionRecord { Name = "任务处理", SystemName = "TaskProcess", Category = "PlatService" };

        //任务协助
        public static readonly PermissionRecord TaskHelp = new PermissionRecord { Name = "任务协助", SystemName = "TaskHelp", Category = "PlatService" };

        #endregion

        #region 服务质量监督人员

        //任务监管
        public static readonly PermissionRecord TaskMonitor = new PermissionRecord { Name = "任务监管", SystemName = "TaskMonitor", Category = "PlatService" };

        //评价管理
        public static readonly PermissionRecord EvaluationManage = new PermissionRecord { Name = "评价管理", SystemName = "EvaluationManage", Category = "PlatService" };

        //投诉处理
        public static readonly PermissionRecord ComplaintProcess = new PermissionRecord { Name = "投诉处理", SystemName = "ComplaintProcess", Category = "PlatService" };

        //实效性处理
        public static readonly PermissionRecord RealTimeProcess = new PermissionRecord { Name = "实效性处理", SystemName = "RealTimeProcess", Category = "PlatService" };

        //服务质量报告
        public static readonly PermissionRecord ServiceQualityReport = new PermissionRecord { Name = "实效性处理", SystemName = "ServiceQualityReport", Category = "PlatService" };

        #endregion

        #region 客服人员

        //访问平台客服中心
        public static readonly PermissionRecord PlatCustomerServiceAccessPanel = new PermissionRecord { Name = "访问平台客服中心", SystemName = "PlatCustomerServiceAccessPanel", Category = "PlatCustomerService" };

        #endregion

        #region 机构管理员

        //访问机构管理中心
        public static readonly PermissionRecord InstitutionManagerAccessPanel = new PermissionRecord { Name = "访问机构管理中心", SystemName = "InstitutionManagerAccessPanel", Category = "InstitutionManager" };

        #endregion

        #region 服务中心运维人员

        //访问服务运维中心
        public static readonly PermissionRecord ServiceOperationAccessPanel = new PermissionRecord { Name = "访问服务运维中心", SystemName = "ServiceOperationAccessPanel", Category = "ServiceOperation" };

        //会诊调度
        public static readonly PermissionRecord ConsultSchedule = new PermissionRecord { Name = "会诊调度", SystemName = "ConsultSchedule", Category = "ServiceOperation" };

        //分享审批
        public static readonly PermissionRecord ShareApproval = new PermissionRecord { Name = "分享审批", SystemName = "ShareApproval", Category = "ServiceOperation" };

        #endregion

        #region 服务中心导诊人员

        //访问导诊控制台
        public static readonly PermissionRecord ServiceGuideAccessPanel = new PermissionRecord { Name = "访问导诊控制台", SystemName = "ServiceGuideAccessPanel", Category = "ServiceOperation" };

        #endregion

        #region 服务中心助理

        //会诊协助
        public static readonly PermissionRecord ConsultationAssistance = new PermissionRecord { Name = "会诊协助", SystemName = "ConsultationAssistance", Category = "ServiceOperation" };

        #endregion

        #region 服务中心记录员

        //意见记录
        public static readonly PermissionRecord DiagnosisRecord = new PermissionRecord { Name = "意见记录", SystemName = "DiagnosisRecord", Category = "ServiceOperation" };

        #endregion

        #region 行政管理人员（影像云主管领导、影像云分管领导、行政领导、机构领导）

        //访问领导中心
        public static readonly PermissionRecord LeaderAccessPanel = new PermissionRecord { Name = "访问领导中心", SystemName = "LeaderAccessPanel", Category = "Leader" };

        #endregion

        #region 质控人员、质控管理人员、质控对象

        //访问质控中心
        public static readonly PermissionRecord QualityAccessPanel = new PermissionRecord { Name = "访问质控中心", SystemName = "QualityAccessPanel", Category = "Quality" };

        #endregion

        #region 质控人员

        //质控评分
        public static readonly PermissionRecord QualityScore = new PermissionRecord { Name = "质控评分", SystemName = "QualityScore", Category = "Quality" };

        //质控评估
        public static readonly PermissionRecord QualityEvaluation = new PermissionRecord { Name = "质控评估", SystemName = "QualityEvaluation", Category = "Quality" };

        #endregion

        #region 质控管理人员

        //质控管理
        public static readonly PermissionRecord QualityManage = new PermissionRecord { Name = "质控管理", SystemName = "QualityManage", Category = "Quality" };

        //质控总体评估
        public static readonly PermissionRecord QualityTotalEvaluation = new PermissionRecord { Name = "质控总体评估", SystemName = "QualityTotalEvaluation", Category = "Quality" };

        //质控核查
        public static readonly PermissionRecord QualityCheck = new PermissionRecord { Name = "质控核查", SystemName = "QualityCheck", Category = "Quality" };

        //人员管理
        public static readonly PermissionRecord QualityMemberManage = new PermissionRecord { Name = "人员管理", SystemName = "QualityMemberManage", Category = "Quality" };

        //质控规范管理
        public static readonly PermissionRecord QualityStandardManage = new PermissionRecord { Name = "质控规范管理", SystemName = "QualityStandardManage", Category = "Quality" };

        #endregion

        #region 质控联系人

        //整改反馈
        public static readonly PermissionRecord QualityFeedback = new PermissionRecord { Name = "整改反馈", SystemName = "QualityFeedback", Category = "Quality" };

        #endregion

        #region 转诊管理员

        //转诊管理
        public static readonly PermissionRecord ReferralManage = new PermissionRecord { Name = "转诊管理", SystemName = "ReferralManage", Category = "RemoteMed" };

        #endregion
                
        #region 随访管理员

        //随访管理
        public static readonly PermissionRecord FollowUpManage = new PermissionRecord { Name = "随访管理", SystemName = "FollowUpManage", Category = "RemoteMed" };

        #endregion

        #region 监控管理员

        //访问远程监控
        public static readonly PermissionRecord RemoteMonitorAccessPanel = new PermissionRecord { Name = "访问远程监控", SystemName = "RemoteMonitorAccessPanel", Category = "RemoteMonitor" };

        //监控管理
        public static readonly PermissionRecord MonitorManage = new PermissionRecord { Name = "监控管理", SystemName = "MonitorManage", Category = "RemoteMonitor" };

        #endregion

        #region 监控维护人员

        //监控维护
        public static readonly PermissionRecord MonitorMaintain = new PermissionRecord { Name = "监控维护", SystemName = "MonitorMaintain", Category = "RemoteMonitor" };

        #endregion

        public virtual IEnumerable<PermissionRecord> GetPermissions()
        {
            return new[]
            {
                AdministratorAccessPanel,
                RemoteMedDoctorAccessPanel,
                PublilcHealthDoctorAccessPanel,
                PublilcHealthMedicalStaffAccessPanel,
                PharmacistsAccessPanel,
                ImageArchiveAccessPanel,
                PhoneClientDoctorAccessPanel,
                CRMDoctorAccessPanel,
                PublilcHealthPatientAccessPanel,
                PhoneClientPatientAccessPanel,
                CRMPatientAccessPanel,
                TeachAccessPanel,
                JoinRemoteTeach,
                JoinRemoteStudy,
                TeachManager,
                ConEduAudit,
                CRMManagerAccessPanel,
                PlatManagerAccessPanel,
                PlatOverAllManage,
                OperateTeamUserManage,
                PlatUserManage,
                OutInformationAudit,
                ServiceQualityMonitor,
                MedicalInstitutionUserManage,
                EnterpriseUserManage,
                PublicUserManage,
                ExpertUserManage,
                ThirdInstitutionUserManage,
                TemplateManage,
                OutInformationManage,
                PlatServiceAccessPanel,
                TaskProcess,
                TaskHelp,
                TaskMonitor,
                EvaluationManage,
                ComplaintProcess,
                RealTimeProcess,
                ServiceQualityReport,
                PlatCustomerServiceAccessPanel,
                InstitutionManagerAccessPanel,
                ServiceOperationAccessPanel,
                ConsultSchedule,
                ShareApproval,
                ServiceGuideAccessPanel,
                ConsultationAssistance,
                DiagnosisRecord,
                LeaderAccessPanel,
                QualityAccessPanel,
                QualityScore,
                QualityEvaluation,
                QualityManage,
                QualityTotalEvaluation,
                QualityCheck,
                QualityMemberManage,
                QualityStandardManage,
                QualityFeedback,
                ReferralManage,
                FollowUpManage,
                RemoteMonitorAccessPanel,
                MonitorManage,
                MonitorMaintain
            };
        }

        public virtual IEnumerable<DefaultPermissionRecord> GetDefaultPermissions()
        {
            return new[]
            {
                //系统管理员权限
                new DefaultPermissionRecord
                {
                    CustomerRoleSystemName = SystemCustomerRoleNames.Administrators,
                    PermissionRecords = new[]
                    {
                        AdministratorAccessPanel
                    }
                },
                //医生权限
                new DefaultPermissionRecord
                {
                    CustomerRoleSystemName = SystemCustomerRoleNames.Doctor,
                    PermissionRecords = new[]
                    {
                        RemoteMedDoctorAccessPanel,
                        PublilcHealthDoctorAccessPanel,
                        ImageArchiveAccessPanel,
                        PhoneClientDoctorAccessPanel,
                        CRMDoctorAccessPanel
                    }
                },
                //医护人员权限
                new DefaultPermissionRecord
                {
                    CustomerRoleSystemName = SystemCustomerRoleNames.MedicalStaff,
                    PermissionRecords = new[]
                    {
                        RemoteMedDoctorAccessPanel,
                        PublilcHealthMedicalStaffAccessPanel,
                        CRMManagerAccessPanel
                    }
                },
                //药剂师权限
                new DefaultPermissionRecord
                {
                    CustomerRoleSystemName = SystemCustomerRoleNames.Pharmacists,
                    PermissionRecords = new[]
                    {
                        PharmacistsAccessPanel,
                        CRMManagerAccessPanel
                    }
                },
                //公众用户权限
                new DefaultPermissionRecord
                {
                    CustomerRoleSystemName = SystemCustomerRoleNames.Patient,
                    PermissionRecords = new[]
                    {
                        PublilcHealthPatientAccessPanel,
                        PhoneClientPatientAccessPanel,
                        CRMPatientAccessPanel
                    }
                },
                //讲师权限
                new DefaultPermissionRecord
                {
                    CustomerRoleSystemName = SystemCustomerRoleNames.Teacher,
                    PermissionRecords = new[]
                    {
                        TeachAccessPanel,
                        JoinRemoteTeach
                    }
                },
                //学员权限
                new DefaultPermissionRecord
                {
                    CustomerRoleSystemName = SystemCustomerRoleNames.Student,
                    PermissionRecords = new[]
                    {
                        TeachAccessPanel,
                        JoinRemoteStudy
                    }
                },
                //教学管理员权限
                new DefaultPermissionRecord
                {
                    CustomerRoleSystemName = SystemCustomerRoleNames.TeachCenterManager,
                    PermissionRecords = new[]
                    {
                        TeachAccessPanel,
                        TeachManager,
                        CRMManagerAccessPanel
                    }
                },
                //继教负责人权限
                new DefaultPermissionRecord
                {
                    CustomerRoleSystemName = SystemCustomerRoleNames.ContinueTeachManager,
                    PermissionRecords = new[]
                    {
                        TeachAccessPanel,
                        ConEduAudit,
                        CRMManagerAccessPanel
                    }
                },
                //运营团队管理者权限
                new DefaultPermissionRecord
                {
                    CustomerRoleSystemName = SystemCustomerRoleNames.PlatManagerLeader,
                    PermissionRecords = new[]
                    {
                        PlatManagerAccessPanel,
                        OperateTeamUserManage,
                        PlatUserManage,
                        OutInformationAudit,
                        ServiceQualityMonitor,
                        PlatOverAllManage,
                        CRMManagerAccessPanel
                    }
                },
                //运营管理人员权限
                new DefaultPermissionRecord
                {
                    CustomerRoleSystemName = SystemCustomerRoleNames.PlatManager,
                    PermissionRecords = new[]
                    {
                        PlatManagerAccessPanel,
                        LeaderAccessPanel,
                        MedicalInstitutionUserManage,
                        EnterpriseUserManage,
                        PublicUserManage,
                        ExpertUserManage,
                        ThirdInstitutionUserManage,
                        TemplateManage,
                        OutInformationManage,
                        PlatOverAllManage,
                        CRMManagerAccessPanel
                    }
                },
                //运营服务人员权限
                new DefaultPermissionRecord
                {
                    CustomerRoleSystemName = SystemCustomerRoleNames.PlatService,
                    PermissionRecords = new[]
                    {
                        PlatServiceAccessPanel,
                        TaskProcess,
                        TaskHelp,
                        CRMManagerAccessPanel
                    }
                },
                //服务质量监督人员权限
                new DefaultPermissionRecord
                {
                    CustomerRoleSystemName = SystemCustomerRoleNames.ServiceQualityMonitor,
                    PermissionRecords = new[]
                    {
                        PlatServiceAccessPanel,
                        TaskMonitor,
                        EvaluationManage,
                        ComplaintProcess,
                        RealTimeProcess,
                        ServiceQualityReport,
                        CRMManagerAccessPanel
                    }
                },
                //客服人员权限
                new DefaultPermissionRecord
                {
                    CustomerRoleSystemName = SystemCustomerRoleNames.PlatCustomerService,
                    PermissionRecords = new[]
                    {
                        PlatCustomerServiceAccessPanel,
                        CRMManagerAccessPanel
                    }
                },
                //机构管理员权限
                new DefaultPermissionRecord
                {
                    CustomerRoleSystemName = SystemCustomerRoleNames.InstitutionManager,
                    PermissionRecords = new[]
                    {
                        InstitutionManagerAccessPanel,
                        ImageArchiveAccessPanel,
                        CRMManagerAccessPanel
                    }
                },
                //服务中心运维人员权限
                new DefaultPermissionRecord
                {
                    CustomerRoleSystemName = SystemCustomerRoleNames.ServiceCenterOperator,
                    PermissionRecords = new[]
                    {
                        ServiceOperationAccessPanel,
                        ConsultSchedule,
                        ShareApproval,
                        CRMManagerAccessPanel
                    }
                },
                //服务中心导诊人员权限
                new DefaultPermissionRecord
                {
                    CustomerRoleSystemName = SystemCustomerRoleNames.ServiceCenterGuide,
                    PermissionRecords = new[]
                    {
                        ServiceGuideAccessPanel,
                        CRMManagerAccessPanel
                    }
                },
                //服务中心助理权限
                new DefaultPermissionRecord
                {
                    CustomerRoleSystemName = SystemCustomerRoleNames.ServiceCenterAssistant,
                    PermissionRecords = new[]
                    {
                        RemoteMedDoctorAccessPanel,
                        ConsultationAssistance,
                        CRMManagerAccessPanel
                    }
                },
                //服务中心记录员权限
                new DefaultPermissionRecord
                {
                    CustomerRoleSystemName = SystemCustomerRoleNames.ServiceCenterRecordMan,
                    PermissionRecords = new[]
                    {
                        RemoteMedDoctorAccessPanel,
                        DiagnosisRecord,
                        CRMManagerAccessPanel
                    }
                },
                //影像云主管领导权限
                new DefaultPermissionRecord
                {
                    CustomerRoleSystemName = SystemCustomerRoleNames.CloudLeader,
                    PermissionRecords = new[]
                    {
                        LeaderAccessPanel,
                        CRMManagerAccessPanel
                    }
                },
                //影像云主管领导权限
                new DefaultPermissionRecord
                {
                    CustomerRoleSystemName = SystemCustomerRoleNames.CloudLeader,
                    PermissionRecords = new[]
                    {
                        LeaderAccessPanel,
                        CRMManagerAccessPanel
                    }
                },
                //行政领导权限
                new DefaultPermissionRecord
                {
                    CustomerRoleSystemName = SystemCustomerRoleNames.OfficialLeader,
                    PermissionRecords = new[]
                    {
                        LeaderAccessPanel,
                        CRMManagerAccessPanel
                    }
                },
                //机构领导权限
                new DefaultPermissionRecord
                {
                    CustomerRoleSystemName = SystemCustomerRoleNames.InstitutionLeader,
                    PermissionRecords = new[]
                    {
                        LeaderAccessPanel,
                        CRMManagerAccessPanel
                    }
                },
                //质控人员权限
                new DefaultPermissionRecord
                {
                    CustomerRoleSystemName = SystemCustomerRoleNames.QualityPerson,
                    PermissionRecords = new[]
                    {
                        QualityAccessPanel,
                        QualityScore,
                        QualityEvaluation
                    }
                },
                //质控管理人员权限
                new DefaultPermissionRecord
                {
                    CustomerRoleSystemName = SystemCustomerRoleNames.QualityManager,
                    PermissionRecords = new[]
                    {
                        QualityAccessPanel,
                        QualityManage,
                        QualityTotalEvaluation,
                        QualityCheck,
                        QualityMemberManage,
                        QualityStandardManage
                    }
                },
                //质控联系人
                new DefaultPermissionRecord
                {
                    CustomerRoleSystemName = SystemCustomerRoleNames.QualityTarget,
                    PermissionRecords = new[]
                    {
                        QualityAccessPanel,
                        QualityFeedback
                    }
                },
                //转诊管理员
                new DefaultPermissionRecord
                {
                    CustomerRoleSystemName = SystemCustomerRoleNames.ReferralManager,
                    PermissionRecords = new[]
                    {
                        ReferralManage
                    }
                },
                //随访管理员
                new DefaultPermissionRecord
                {
                    CustomerRoleSystemName = SystemCustomerRoleNames.FollowUpManager,
                    PermissionRecords = new[]
                    {
                        FollowUpManage
                    }
                },
                //监控管理员
                new DefaultPermissionRecord
                {
                    CustomerRoleSystemName = SystemCustomerRoleNames.MonitorManager,
                    PermissionRecords = new[]
                    {
                        RemoteMonitorAccessPanel,
                        MonitorManage
                    }
                },
                //监控维护人员
                new DefaultPermissionRecord
                {
                    CustomerRoleSystemName = SystemCustomerRoleNames.MonitorMaintainMan,
                    PermissionRecords = new[]
                    {
                        RemoteMonitorAccessPanel,
                        MonitorMaintain
                    }
                }
            };
        }
    }
}