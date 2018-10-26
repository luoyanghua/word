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
        #region ����Ȩ��
        //admin area permissions

        //public static readonly PermissionRecord AdministratorCustomers = new PermissionRecord { Name = "�û�����", SystemName = "AdministratorCustomers", Category = "Administrator" };
        //public static readonly PermissionRecord AdministratorCustomerRole = new PermissionRecord { Name = "��ɫ����", SystemName = "AdministratorCustomerRole", Category = "Administrator" };
        //public static readonly PermissionRecord AdministratorAcl = new PermissionRecord { Name = "���ʿ���", SystemName = "AdministratorAcl", Category = "Administrator" };

        //public static readonly PermissionRecord AdministratorMedicalInstitution = new PermissionRecord { Name = "ҽ�ƻ�������", SystemName = "AdministratorMedicalInstitution", Category = "Administrator" };
        //public static readonly PermissionRecord AdministratorMedicalDepartments = new PermissionRecord { Name = "ҽԺ���ҹ���", SystemName = "AdministratorMedicalDepartments", Category = "Administrator" };

        //public static readonly PermissionRecord AdministratorVideoMaintenance = new PermissionRecord { Name = "��Ƶ�ն���Ϣά��", SystemName = "AdministratorVideoMaintenance", Category = "Administrator" };
        //public static readonly PermissionRecord AdministratorVideoManagement = new PermissionRecord { Name = "��Ƶ�ն�ʹ�ù���", SystemName = "AdministratorVideoManagement", Category = "Administrator" };

        //public static readonly PermissionRecord AdministratorQualityControl = new PermissionRecord { Name = "�ʿ���������", SystemName = "AdministratorQualityControl", Category = "Administrator" };
        //public static readonly PermissionRecord AdministratorQualityTemplate = new PermissionRecord { Name = "�ʿ�ģ������", SystemName = "AdministratorQualityTemplate", Category = "Administrator" };


        //public static readonly PermissionRecord AdministratorSettings = new PermissionRecord { Name = "ϵͳ����", SystemName = "AdministratorSettings", Category = "Administrator" };

        //public static readonly PermissionRecord AdministratorGeneralSettings = new PermissionRecord { Name = "�ۺ�����", SystemName = "AdministratorGeneralSettings", Category = "Administrator" };
        //public static readonly PermissionRecord AdministratorCustomerSettings = new PermissionRecord { Name = "�û�����", SystemName = "AdministratorCustomerSettings", Category = "Administrator" };
        //public static readonly PermissionRecord AdministratorAllSettings = new PermissionRecord { Name = "��������", SystemName = "AdministratorAllSettings", Category = "Administrator" };
        //public static readonly PermissionRecord AdministratorDictionary = new PermissionRecord { Name = "�����ֵ�", SystemName = "AdministratorDictionary", Category = "Administrator" };
        //public static readonly PermissionRecord AdministratorEmailAccounts = new PermissionRecord { Name = "�ʼ��ʻ�", SystemName = "AdministratorEmailAccounts", Category = "Administrator" };
        //public static readonly PermissionRecord AdministratorPlugins = new PermissionRecord { Name = "�������", SystemName = "AdministratorPlugins", Category = "Administrator" };

        //public static readonly PermissionRecord AdministratorSystemInfomation = new PermissionRecord { Name = "ϵͳ��Ϣ", SystemName = "AdministratorSystemInfomation", Category = "Administrator" };

        //public static readonly PermissionRecord AdministratorActivityLog = new PermissionRecord { Name = "���־", SystemName = "AdministratorActivityLog", Category = "Administrator" };
        //public static readonly PermissionRecord AdministratorAnnouncement = new PermissionRecord { Name = "ϵͳ����", SystemName = "AdministratorAnnouncement", Category = "Administrator" };
        //public static readonly PermissionRecord AdministratorMaintenance = new PermissionRecord { Name = "ϵͳά��", SystemName = "AdministratorMaintenance", Category = "Administrator" };
        //public static readonly PermissionRecord AdministratorSystemLog = new PermissionRecord { Name = "ϵͳ��־", SystemName = "AdministratorSystemLog", Category = "Administrator" };
        //public static readonly PermissionRecord AdministratorScheduleTasks = new PermissionRecord { Name = "�ƻ�����", SystemName = "AdministratorScheduleTasks", Category = "Administrator" };
        //public static readonly PermissionRecord AdministratorVersion = new PermissionRecord { Name = "�汾��Ϣ", SystemName = "AdministratorVersion", Category = "Administrator" };

        //public static readonly PermissionRecord AdministratorWidgets = new PermissionRecord { Name = "��������", SystemName = "AdministratorWidgets", Category = "Administrator" };
        //public static readonly PermissionRecord AdministratorMessageTemplates = new PermissionRecord { Name = "��Ϣģ��", SystemName = "AdministratorMessageTemplates", Category = "Administrator" };
        //public static readonly PermissionRecord AdministratorLanguages = new PermissionRecord { Name = "���Թ���", SystemName = "AdministratorLanguages", Category = "Administrator" };
        //public static readonly PermissionRecord AdministratorWebSites = new PermissionRecord { Name = "��վ����", SystemName = "AdministratorWebSites", Category = "Administrator" };
        #endregion

        #region ϵͳ����Ա

        //��̨����
        public static readonly PermissionRecord AdministratorAccessPanel = new PermissionRecord { Name = "���ʺ�̨����", SystemName = "AdministratorAccessPanel", Category = "Administrator" };

        #endregion

        #region ҽ��

        //����Զ��ҽ��Эͬҽ������
        public static readonly PermissionRecord RemoteMedDoctorAccessPanel = new PermissionRecord { Name = "����Զ��ҽ��Эͬҽ������", SystemName = "RemoteMedDoctorAccessPanel", Category = "RemoteMed" };

        //���ʹ�������ҽ������
        public static readonly PermissionRecord PublilcHealthDoctorAccessPanel = new PermissionRecord { Name = "���ʹ�������ҽ������", SystemName = "PublilcHealthDoctorAccessPanel", Category = "PublilcHealth" };

        //����Ӱ��洢����
        public static readonly PermissionRecord ImageArchiveAccessPanel = new PermissionRecord { Name = "����Ӱ��洢����", SystemName = "ImageArchiveAccessPanel", Category = "ImageArchive" };

        //����ҽ���ֻ��ͻ���
        public static readonly PermissionRecord PhoneClientDoctorAccessPanel = new PermissionRecord { Name = "����ҽ���ֻ��ͻ���", SystemName = "PhoneClientDoctorAccessPanel", Category = "PhoneClient" };

        //����ҽ���û���ϵ��������
        public static readonly PermissionRecord CRMDoctorAccessPanel = new PermissionRecord { Name = "����ҽ���û���ϵ��������", SystemName = "CRMDoctorAccessPanel", Category = "CRM" };

        #endregion

        #region ҽ����Ա

        //���ʹ�������ҽ������
        public static readonly PermissionRecord PublilcHealthMedicalStaffAccessPanel = new PermissionRecord { Name = "���ʹ�������ҽ������", SystemName = "PublilcHealthMedicalStaffAccessPanel", Category = "PublilcHealth" };

        #endregion

        #region ҩ��ʦ

        //����ҩ��ʦ��������
        public static readonly PermissionRecord PharmacistsAccessPanel = new PermissionRecord { Name = "����ҩ��ʦ��������", SystemName = "PharmacistsAccessPanel", Category = "PublilcHealth" };

        #endregion

        #region �����û�

        //���ʹ��ڽ�����������
        public static readonly PermissionRecord PublilcHealthPatientAccessPanel = new PermissionRecord { Name = "���ʹ��ڽ�����������", SystemName = "PublilcHealthPatientAccessPanel", Category = "PublilcHealth" };

        //���ʹ����û��ֻ��ͻ���
        public static readonly PermissionRecord PhoneClientPatientAccessPanel = new PermissionRecord { Name = "���ʹ����û��ֻ��ͻ���", SystemName = "PhoneClientPatientAccessPanel", Category = "PhoneClient" };

        //���ʹ����û���ϵ��������
        public static readonly PermissionRecord CRMPatientAccessPanel = new PermissionRecord { Name = "���ʹ����û���ϵ��������", SystemName = "CRMPatientAccessPanel", Category = "CRM" };

        #endregion

        #region ��ѧ����

        //����Զ��ҽѧ������������
        public static readonly PermissionRecord TeachAccessPanel = new PermissionRecord { Name = "����Զ��ҽѧ������������", SystemName = "TeachAccessPanel", Category = "Teach" };

        #endregion

        #region ��ʦ

        //Զ�̽���
        public static readonly PermissionRecord JoinRemoteTeach = new PermissionRecord { Name = "Զ�̽���", SystemName = "JoinRemoteTeach", Category = "Teach" };

        #endregion

        #region ѧԱ

        //Զ��ѧϰ
        public static readonly PermissionRecord JoinRemoteStudy = new PermissionRecord { Name = "Զ��ѧϰ", SystemName = "JoinRemoteStudy", Category = "Teach" };

        #endregion

        #region ��ѧ����Ա

        //Զ�̽�������
        public static readonly PermissionRecord TeachManager = new PermissionRecord { Name = "Զ�̽�������", SystemName = "TeachManager", Category = "Teach" };

        #endregion

        #region �̸̽�����

        //�̽���Ŀ���
        public static readonly PermissionRecord ConEduAudit = new PermissionRecord { Name = "�̽���Ŀ���", SystemName = "ConEduAudit", Category = "Teach" };

        #endregion

        #region ������Ա����

        //���ʹ�����Ա�û���ϵ��������
        public static readonly PermissionRecord CRMManagerAccessPanel = new PermissionRecord { Name = "���ʹ�����Ա�û���ϵ��������", SystemName = "CRMManagerAccessPanel", Category = "CRM" };

        #endregion

        #region ��Ӫ������

        //������Ӫ��������
        public static readonly PermissionRecord PlatManagerAccessPanel = new PermissionRecord { Name = "������Ӫ��������", SystemName = "PlatManagerAccessPanel", Category = "PlatManage" };

        //ƽ̨�ۺϹ���
        public static readonly PermissionRecord PlatOverAllManage = new PermissionRecord { Name = "ƽ̨�ۺϹ���", SystemName = "PlatOverAllManage", Category = "PlatManage" };

        #endregion

        #region ��Ӫ�Ŷӹ�����

        //��Ӫ�Ŷ��û�����
        public static readonly PermissionRecord OperateTeamUserManage = new PermissionRecord { Name = "��Ӫ�Ŷ��û�����", SystemName = "OperateTeamUserManage", Category = "PlatManage" };

        //ƽ̨�û��û�����
        public static readonly PermissionRecord PlatUserManage = new PermissionRecord { Name = "ƽ̨�û��û�����", SystemName = "PlatUserManage", Category = "PlatManage" };

        //������Ϣ�����
        public static readonly PermissionRecord OutInformationAudit = new PermissionRecord { Name = "������Ϣ�����", SystemName = "OutInformationAudit", Category = "PlatManage" };

        //���������ල
        public static readonly PermissionRecord ServiceQualityMonitor = new PermissionRecord { Name = "���������ල", SystemName = "ServiceQualityMonitor", Category = "PlatManage" };

        #endregion

        #region ��Ӫ������Ա

        //ҽ�ƻ����û��û����� 
        public static readonly PermissionRecord MedicalInstitutionUserManage = new PermissionRecord { Name = "ҽ�ƻ����û��û�����", SystemName = "MedicalInstitutionUserManage", Category = "PlatManage" };

        //��ҵ�û��û�����  
        public static readonly PermissionRecord EnterpriseUserManage = new PermissionRecord { Name = "��ҵ�û��û�����", SystemName = "EnterpriseUserManage", Category = "PlatManage" };

        //�����û��û�����   
        public static readonly PermissionRecord PublicUserManage = new PermissionRecord { Name = "�����û��û�����", SystemName = "PublicUserManage", Category = "PlatManage" };

        //ר���û��û�����   
        public static readonly PermissionRecord ExpertUserManage = new PermissionRecord { Name = "ר���û��û�����", SystemName = "ExpertUserManage", Category = "PlatManage" };

        //��������������û�����
        public static readonly PermissionRecord ThirdInstitutionUserManage = new PermissionRecord { Name = "��������������û�����", SystemName = "ThirdInstitutionUserManage", Category = "PlatManage" };

        //ģ�����
        public static readonly PermissionRecord TemplateManage = new PermissionRecord { Name = "ģ�����", SystemName = "TemplateManage", Category = "PlatManage" };

        //��Ϣ��������
        public static readonly PermissionRecord OutInformationManage = new PermissionRecord { Name = "��Ϣ��������", SystemName = "OutInformationManage", Category = "PlatManage" };

        #endregion

        #region ��Ӫ���񹫹�

        //������Ӫ��������
        public static readonly PermissionRecord PlatServiceAccessPanel = new PermissionRecord { Name = "������Ӫ��������", SystemName = "PlatServiceAccessPanel", Category = "PlatService" };

        #endregion

        #region ��Ӫ������Ա

        //������
        public static readonly PermissionRecord TaskProcess = new PermissionRecord { Name = "������", SystemName = "TaskProcess", Category = "PlatService" };

        //����Э��
        public static readonly PermissionRecord TaskHelp = new PermissionRecord { Name = "����Э��", SystemName = "TaskHelp", Category = "PlatService" };

        #endregion

        #region ���������ල��Ա

        //������
        public static readonly PermissionRecord TaskMonitor = new PermissionRecord { Name = "������", SystemName = "TaskMonitor", Category = "PlatService" };

        //���۹���
        public static readonly PermissionRecord EvaluationManage = new PermissionRecord { Name = "���۹���", SystemName = "EvaluationManage", Category = "PlatService" };

        //Ͷ�ߴ���
        public static readonly PermissionRecord ComplaintProcess = new PermissionRecord { Name = "Ͷ�ߴ���", SystemName = "ComplaintProcess", Category = "PlatService" };

        //ʵЧ�Դ���
        public static readonly PermissionRecord RealTimeProcess = new PermissionRecord { Name = "ʵЧ�Դ���", SystemName = "RealTimeProcess", Category = "PlatService" };

        //������������
        public static readonly PermissionRecord ServiceQualityReport = new PermissionRecord { Name = "ʵЧ�Դ���", SystemName = "ServiceQualityReport", Category = "PlatService" };

        #endregion

        #region �ͷ���Ա

        //����ƽ̨�ͷ�����
        public static readonly PermissionRecord PlatCustomerServiceAccessPanel = new PermissionRecord { Name = "����ƽ̨�ͷ�����", SystemName = "PlatCustomerServiceAccessPanel", Category = "PlatCustomerService" };

        #endregion

        #region ��������Ա

        //���ʻ�����������
        public static readonly PermissionRecord InstitutionManagerAccessPanel = new PermissionRecord { Name = "���ʻ�����������", SystemName = "InstitutionManagerAccessPanel", Category = "InstitutionManager" };

        #endregion

        #region ����������ά��Ա

        //���ʷ�����ά����
        public static readonly PermissionRecord ServiceOperationAccessPanel = new PermissionRecord { Name = "���ʷ�����ά����", SystemName = "ServiceOperationAccessPanel", Category = "ServiceOperation" };

        //�������
        public static readonly PermissionRecord ConsultSchedule = new PermissionRecord { Name = "�������", SystemName = "ConsultSchedule", Category = "ServiceOperation" };

        //��������
        public static readonly PermissionRecord ShareApproval = new PermissionRecord { Name = "��������", SystemName = "ShareApproval", Category = "ServiceOperation" };

        #endregion

        #region �������ĵ�����Ա

        //���ʵ������̨
        public static readonly PermissionRecord ServiceGuideAccessPanel = new PermissionRecord { Name = "���ʵ������̨", SystemName = "ServiceGuideAccessPanel", Category = "ServiceOperation" };

        #endregion

        #region ������������

        //����Э��
        public static readonly PermissionRecord ConsultationAssistance = new PermissionRecord { Name = "����Э��", SystemName = "ConsultationAssistance", Category = "ServiceOperation" };

        #endregion

        #region �������ļ�¼Ա

        //�����¼
        public static readonly PermissionRecord DiagnosisRecord = new PermissionRecord { Name = "�����¼", SystemName = "DiagnosisRecord", Category = "ServiceOperation" };

        #endregion

        #region ����������Ա��Ӱ���������쵼��Ӱ���Ʒֹ��쵼�������쵼�������쵼��

        //�����쵼����
        public static readonly PermissionRecord LeaderAccessPanel = new PermissionRecord { Name = "�����쵼����", SystemName = "LeaderAccessPanel", Category = "Leader" };

        #endregion

        #region �ʿ���Ա���ʿع�����Ա���ʿض���

        //�����ʿ�����
        public static readonly PermissionRecord QualityAccessPanel = new PermissionRecord { Name = "�����ʿ�����", SystemName = "QualityAccessPanel", Category = "Quality" };

        #endregion

        #region �ʿ���Ա

        //�ʿ�����
        public static readonly PermissionRecord QualityScore = new PermissionRecord { Name = "�ʿ�����", SystemName = "QualityScore", Category = "Quality" };

        //�ʿ�����
        public static readonly PermissionRecord QualityEvaluation = new PermissionRecord { Name = "�ʿ�����", SystemName = "QualityEvaluation", Category = "Quality" };

        #endregion

        #region �ʿع�����Ա

        //�ʿع���
        public static readonly PermissionRecord QualityManage = new PermissionRecord { Name = "�ʿع���", SystemName = "QualityManage", Category = "Quality" };

        //�ʿ���������
        public static readonly PermissionRecord QualityTotalEvaluation = new PermissionRecord { Name = "�ʿ���������", SystemName = "QualityTotalEvaluation", Category = "Quality" };

        //�ʿغ˲�
        public static readonly PermissionRecord QualityCheck = new PermissionRecord { Name = "�ʿغ˲�", SystemName = "QualityCheck", Category = "Quality" };

        //��Ա����
        public static readonly PermissionRecord QualityMemberManage = new PermissionRecord { Name = "��Ա����", SystemName = "QualityMemberManage", Category = "Quality" };

        //�ʿع淶����
        public static readonly PermissionRecord QualityStandardManage = new PermissionRecord { Name = "�ʿع淶����", SystemName = "QualityStandardManage", Category = "Quality" };

        #endregion

        #region �ʿ���ϵ��

        //���ķ���
        public static readonly PermissionRecord QualityFeedback = new PermissionRecord { Name = "���ķ���", SystemName = "QualityFeedback", Category = "Quality" };

        #endregion

        #region ת�����Ա

        //ת�����
        public static readonly PermissionRecord ReferralManage = new PermissionRecord { Name = "ת�����", SystemName = "ReferralManage", Category = "RemoteMed" };

        #endregion
                
        #region ��ù���Ա

        //��ù���
        public static readonly PermissionRecord FollowUpManage = new PermissionRecord { Name = "��ù���", SystemName = "FollowUpManage", Category = "RemoteMed" };

        #endregion

        #region ��ع���Ա

        //����Զ�̼��
        public static readonly PermissionRecord RemoteMonitorAccessPanel = new PermissionRecord { Name = "����Զ�̼��", SystemName = "RemoteMonitorAccessPanel", Category = "RemoteMonitor" };

        //��ع���
        public static readonly PermissionRecord MonitorManage = new PermissionRecord { Name = "��ع���", SystemName = "MonitorManage", Category = "RemoteMonitor" };

        #endregion

        #region ���ά����Ա

        //���ά��
        public static readonly PermissionRecord MonitorMaintain = new PermissionRecord { Name = "���ά��", SystemName = "MonitorMaintain", Category = "RemoteMonitor" };

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
                //ϵͳ����ԱȨ��
                new DefaultPermissionRecord
                {
                    CustomerRoleSystemName = SystemCustomerRoleNames.Administrators,
                    PermissionRecords = new[]
                    {
                        AdministratorAccessPanel
                    }
                },
                //ҽ��Ȩ��
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
                //ҽ����ԱȨ��
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
                //ҩ��ʦȨ��
                new DefaultPermissionRecord
                {
                    CustomerRoleSystemName = SystemCustomerRoleNames.Pharmacists,
                    PermissionRecords = new[]
                    {
                        PharmacistsAccessPanel,
                        CRMManagerAccessPanel
                    }
                },
                //�����û�Ȩ��
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
                //��ʦȨ��
                new DefaultPermissionRecord
                {
                    CustomerRoleSystemName = SystemCustomerRoleNames.Teacher,
                    PermissionRecords = new[]
                    {
                        TeachAccessPanel,
                        JoinRemoteTeach
                    }
                },
                //ѧԱȨ��
                new DefaultPermissionRecord
                {
                    CustomerRoleSystemName = SystemCustomerRoleNames.Student,
                    PermissionRecords = new[]
                    {
                        TeachAccessPanel,
                        JoinRemoteStudy
                    }
                },
                //��ѧ����ԱȨ��
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
                //�̸̽�����Ȩ��
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
                //��Ӫ�Ŷӹ�����Ȩ��
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
                //��Ӫ������ԱȨ��
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
                //��Ӫ������ԱȨ��
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
                //���������ල��ԱȨ��
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
                //�ͷ���ԱȨ��
                new DefaultPermissionRecord
                {
                    CustomerRoleSystemName = SystemCustomerRoleNames.PlatCustomerService,
                    PermissionRecords = new[]
                    {
                        PlatCustomerServiceAccessPanel,
                        CRMManagerAccessPanel
                    }
                },
                //��������ԱȨ��
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
                //����������ά��ԱȨ��
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
                //�������ĵ�����ԱȨ��
                new DefaultPermissionRecord
                {
                    CustomerRoleSystemName = SystemCustomerRoleNames.ServiceCenterGuide,
                    PermissionRecords = new[]
                    {
                        ServiceGuideAccessPanel,
                        CRMManagerAccessPanel
                    }
                },
                //������������Ȩ��
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
                //�������ļ�¼ԱȨ��
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
                //Ӱ���������쵼Ȩ��
                new DefaultPermissionRecord
                {
                    CustomerRoleSystemName = SystemCustomerRoleNames.CloudLeader,
                    PermissionRecords = new[]
                    {
                        LeaderAccessPanel,
                        CRMManagerAccessPanel
                    }
                },
                //Ӱ���������쵼Ȩ��
                new DefaultPermissionRecord
                {
                    CustomerRoleSystemName = SystemCustomerRoleNames.CloudLeader,
                    PermissionRecords = new[]
                    {
                        LeaderAccessPanel,
                        CRMManagerAccessPanel
                    }
                },
                //�����쵼Ȩ��
                new DefaultPermissionRecord
                {
                    CustomerRoleSystemName = SystemCustomerRoleNames.OfficialLeader,
                    PermissionRecords = new[]
                    {
                        LeaderAccessPanel,
                        CRMManagerAccessPanel
                    }
                },
                //�����쵼Ȩ��
                new DefaultPermissionRecord
                {
                    CustomerRoleSystemName = SystemCustomerRoleNames.InstitutionLeader,
                    PermissionRecords = new[]
                    {
                        LeaderAccessPanel,
                        CRMManagerAccessPanel
                    }
                },
                //�ʿ���ԱȨ��
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
                //�ʿع�����ԱȨ��
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
                //�ʿ���ϵ��
                new DefaultPermissionRecord
                {
                    CustomerRoleSystemName = SystemCustomerRoleNames.QualityTarget,
                    PermissionRecords = new[]
                    {
                        QualityAccessPanel,
                        QualityFeedback
                    }
                },
                //ת�����Ա
                new DefaultPermissionRecord
                {
                    CustomerRoleSystemName = SystemCustomerRoleNames.ReferralManager,
                    PermissionRecords = new[]
                    {
                        ReferralManage
                    }
                },
                //��ù���Ա
                new DefaultPermissionRecord
                {
                    CustomerRoleSystemName = SystemCustomerRoleNames.FollowUpManager,
                    PermissionRecords = new[]
                    {
                        FollowUpManage
                    }
                },
                //��ع���Ա
                new DefaultPermissionRecord
                {
                    CustomerRoleSystemName = SystemCustomerRoleNames.MonitorManager,
                    PermissionRecords = new[]
                    {
                        RemoteMonitorAccessPanel,
                        MonitorManage
                    }
                },
                //���ά����Ա
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