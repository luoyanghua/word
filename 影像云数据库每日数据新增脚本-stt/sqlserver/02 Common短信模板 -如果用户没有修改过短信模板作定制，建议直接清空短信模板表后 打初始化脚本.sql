/*============================================================================================*/
/* ���ݳ�ʼ��                                                                                 */
/* UpdateDate:2018-09-03                                                                      */
/* Author:Shentt                                                                              */
/* ���Ų��� SmsTemplate �� SmsTemplatePara                                                    */
/* COMMON ���ݿ�                                                                              */
/*============================================================================================*/

/*   ***** ��ն���ģ��������  �����ִ�У�*****   */
TRUNCATE TABLE SmsTemplatePara;
TRUNCATE TABLE SmsTemplate;

/*   ***** ����ģ���ʼ�� ������ȫ��99����� *****   */



-- �������֡��û��˺š�������������˵�
INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('SmsVerifyCode', N'������֤��', N'��֤��Ϊ{#verifyCode#}, {#expireTime#}��������Ч����Ǳ��˲���������Դ˶��š�', NULL, NULL, NULL);

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('ResetPassword', N'��������', N'�𾴵��û�[{CustomerName}]�����������Ѿ����ã�������Ϊ: {Password}��', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ResetPassword', N'CustomerName', N'����', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ResetPassword', N'Password', N'����', 2, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('PublicRegiste', N'�����û�ע��ɹ�', N'�𾴵��û��������˻��ѿ�ͨ����ʹ���˺�{UserId}��ע����ֻ��Ž��е�¼����ʼ����Ϊ{Password}����¼�ɹ����������޸����롣', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'PublicRegiste', N'UserId', N'�û���', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'PublicRegiste', N'Password', N'����', 2, MAX(ID) FROM SmsTemplate;

/*
INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('DoctorRegiste', N'ҽ��ע�����', N'�𾴵��û�������ע���������ύ�ɹ��������ĵȴ�ƽ̨��Ӫ��Ա����ˡ�', NULL, NULL, NULL);

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('InstitutionlRegiste', N'����ע�����', N'�𾴵��û�����Ϊ{InstitutionlName}��ע���������ύ�ɹ��������ĵȴ�ƽ̨��Ӫ��Ա����ˡ�', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'InstitutionlRegiste', N'InstitutionlName', N'��������', 1, MAX(ID) FROM SmsTemplate;
*/

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('DoctorAuditSucceed', N'ҽ�����ͨ��', N'�𾴵��û�,��ע����˺���ͨ����ˣ���ʹ���˺�{UserId}��ע����ֻ��Ž��е�¼��', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DoctorAuditSucceed', N'UserId', N'�û���', 1, MAX(ID) FROM SmsTemplate;


INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('DoctorAuditFailed', N'ҽ�����ʧ��', N'�𾴵��û�������ע��������Ϊ{Reason}δͨ����ˡ��������ʣ����µ�:{Phone}��', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DoctorAuditFailed', N'Reason', N'ʧ��ԭ��', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DoctorAuditFailed', N'Phone', N'���ߵ绰', 2, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('InstitutionlNameAuditSucceed', N'�������ͨ��', N'�𾴵��û�����ע���{InstitutionlName}��ͨ����ˣ���ʹ���˺�{UserId}��ע����ֻ��Ž��е�¼����ʼ����Ϊ{Password}����¼�ɹ����������޸����롣', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'InstitutionlNameAuditSucceed', N'InstitutionlName', N'��������', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'InstitutionlNameAuditSucceed', N'UserId', N'�û���', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'InstitutionlNameAuditSucceed', N'Password', N'����', 3, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('InstitutionlNameAuditFailed', N'�������ʧ��', N'�𾴵��û���������ע���{InstitutionlName}��Ϊ{Reason}δͨ����ˣ����޸����Ϻ��ٴ��ύ���롣', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'InstitutionlNameAuditFailed', N'InstitutionlName', N'��������', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'InstitutionlNameAuditFailed', N'Reason', N'���ʧ�ܵ�ԭ��', 2, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('AuthenticationNotice', N'ʵ����֤��˽��', N'����Ӱ���Ƶ�ʵ����֤���Ϊ {result}����ע��{notice}��', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'AuthenticationNotice', N'result', N'���', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'AuthenticationNotice', N'notice', N'��ע��Ϣ', 2, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('InstitutionlAdminRegiste', N'������̨ע��', N'�𾴵��û���ƽ̨Ϊ��������{InstitutionlName}�Ĺ���Ա�˺�:{UserId}������ƾ���˺ŵ�¼����ʼ����Ϊ{Password}��', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'InstitutionlNameAuditSucceed', N'InstitutionlName', N'��������', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'InstitutionlNameAuditSucceed', N'UserId', N'�û���', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'InstitutionlNameAuditSucceed', N'Password', N'����', 3, MAX(ID) FROM SmsTemplate;

-- 20180418 ��������ģ��  InstitutionUpdateInfo  ƽ̨�޸���Ϣ֪ͨ����Ա
INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('InstitutionUpdateInfo', N'ƽ̨�޸���Ϣ֪ͨ����Ա', N'�𾴵�{InstitutionlName}����Ա��ƽ̨Ϊ�����������[{information}]', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'InstitutionUpdateInfo', N'InstitutionlName', N'��������', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'InstitutionUpdateInfo', N'information', N'�޸ĵ���Ϣ', 2, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('InstitutionInsertInfo', N'ƽ̨������Ϣ֪ͨ����Ա', N'�𾴵�{InstitutionlName}����Ա��ƽ̨Ϊ������������[{information}]', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'InstitutionInsertInfo', N'InstitutionlName', N'��������', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'InstitutionInsertInfo', N'information', N'�޸ĵ���Ϣ', 2, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('InsertInstitutionlAdmin', N'ƽ̨����û�Ϊ��������Ա����֪ͨ', N'�𾴵��û�[{CustomerName}]��ƽ̨�Ѱ�������Ϊ[{InstitutionlName}]�Ĺ���Ա�������ַ: {Url}', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'InsertInstitutionlAdmin', N'CustomerName', N'�û�����', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'InsertInstitutionlAdmin', N'InstitutionlName', N'��������', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'InsertInstitutionlAdmin', N'Url', N'��ַ', 3, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('DeleteInstitutionlAdmin', N'ƽ̨���û��ӻ�������Աɾ������֪ͨ', N'�𾴵��û�[{CustomerName}]��ƽ̨�Ѱ�����[{InstitutionlName}]�Ĺ���Ա���Ƴ���', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DeleteInstitutionlAdmin', N'CustomerName', N'�û�����', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DeleteInstitutionlAdmin', N'InstitutionlName', N'��������', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DeleteInstitutionlAdmin', N'Url', N'��ַ', 3, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('PassThroughInstitutionlService', N'ƽ̨�޸���Ϣ֪ͨ����Ա', N'�𾴵�{InstitutionlName}����Ա��������������·����ѿ�ͨ: {information}', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'PassThroughInstitutionlService', N'InstitutionlName', N'��������', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'PassThroughInstitutionlService', N'information', N'������Ϣ', 2, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('NotThroughInstitutionlService', N'ƽ̨�޸���Ϣ֪ͨ����Ա', N'�𾴵�{InstitutionlName}����Ա��������������·���δͨ�����: {information}', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'NotThroughInstitutionlService', N'InstitutionlName', N'��������', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'NotThroughInstitutionlService', N'information', N'������Ϣ', 2, MAX(ID) FROM SmsTemplate;


/*
INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('OperationAuthenticationSucceed', N'��Ӫʵ����֤���ͨ��', N'�𾴵��û�������Ӱ����ƽ̨ע����˺��Ѿ����ͨ����', NULL, NULL, NULL);
*/


-- ����������������ǩԼҽ�����ɹ�֮�����֪ͨҽ��
INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('SignDoctorSuccess', N'��������ǩԼҽ����֪ͨҽ��', N'{DoctorName}ҽ����[{ServiceCenterName}]����������[{ServiceList}]�������¼ϵͳ��ʱȷ�ϡ�', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SignDoctorSuccess', N'DoctorName', N'ҽ������', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SignDoctorSuccess', N'ServiceCenterName', N'������������', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SignDoctorSuccess', N'ServiceList', N'��ͨ�����б�', 3, MAX(ID) FROM SmsTemplate;


-- ����������������ǩԼҽ�����ɹ�֮�����֪ͨ����Ա
INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('SignHospitalSuccess', N'��������ǩԼҽ����֪ͨ��������', N'{DoctorName}����Ա���������{InstitutionName}��{ServiceCenterName}�ѳɹ�ǩԼ��[{ServiceList}]�ķ������¼ϵͳ��ʱȷ�ϡ�', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SignHospitalSuccess', N'DoctorName', N'����Ա����', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SignHospitalSuccess', N'InstitutionName', N'��������', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SignHospitalSuccess', N'ServiceCenterName', N'������������', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SignHospitalSuccess', N'ServiceList', N'��ͨ�����б�', 4, MAX(ID) FROM SmsTemplate;

 
 /* Ӱ���ƹ鵵ϵͳ����ض���ģ�� */
 
INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('IntegrationServiceSmsTemplate', N'���ɷ����������ģ��', N'��{examdate}��{hospital}�ļ����Ϣ�����ɣ����{link}', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'IntegrationServiceSmsTemplate', N'examdate', N'�������', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'IntegrationServiceSmsTemplate', N'hospital', N'ҽԺ', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'IntegrationServiceSmsTemplate', N'link', N'����', 3, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('ExamInfoShareSmsTemplate', N'�����Ϣ�����������ģ��', N'{name}ҽ������������һ��������{servicetext}�����ҽ����ҽ��APP�鿴��', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ExamInfoShareSmsTemplate', N'name', N'�û�����', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ExamInfoShareSmsTemplate', N'servicetext', N'�۲�����������ݣ�������Ŀ�����飩', 2, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('SubscribeSmsTemplate', N'�ƹ鵵����������Ϣ����', N'{institutionname}{subscriptionDeadline}Ӱ���ƴ洢�������棺{statisticaMemorylContent}�����{SubscriptionCycle}�죬���ݲɼ�����{successCount}����ʧ����{failCount}����{statisticaInformationlContent}�������Ե�¼ϵͳ{idcasUrl}�鿴���顣', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SubscribeSmsTemplate', N'institutionname', N'��������', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SubscribeSmsTemplate', N'subscriptionDeadline', N'���Ľ�ֹʱ��', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SubscribeSmsTemplate', N'statisticaMemorylContent', N'ͳ�ƴ洢������', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SubscribeSmsTemplate', N'SubscriptionCycle', N'��������ʱ��', 4, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SubscribeSmsTemplate', N'successCount', N'�ɹ�����', 5, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SubscribeSmsTemplate', N'failCount', N'ʧ������', 6, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SubscribeSmsTemplate', N'statisticaInformationlContent', N'ͳ����Ϣ������', 7, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SubscribeSmsTemplate', N'idcasUrl', N'Ӱ����URL', 8, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('CloudExamFilmNote', N'�ƽ�Ƭ���ģ��', N'��{examdate}��{institutionname}�ļ�鱨�������ɡ����{cloudfilmurl}�鿴��', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'CloudExamFilmNote', N'examdate', N'���ʱ��', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'CloudExamFilmNote', N'institutionname', N'������', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'CloudExamFilmNote', N'cloudfilmurl', N'�ƽ�ƬURL', 3, MAX(ID) FROM SmsTemplate;

-- 20180418���� ���鵵Ԥ��   DataCheckWarning
INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('DataCheckWarning', N'���鵵Ԥ��', N'�𾴵��û������ã�����[OrganizationName]�ļ�����ݹ鵵����[LastDateTime]��[NowTime]δ��⵽�¼�����ݣ��뼰ʱ�鿴����', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DataCheckWarning', N'OrganizationName', N'��������', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DataCheckWarning', N'LastDateTime', N'��ʼʱ��', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DataCheckWarning', N'NowTime', N'����ʱ��/��ֹʱ��', 3, MAX(ID) FROM SmsTemplate;

/* �ƴ洢  DataStorageWarning �洢�ռ䲻�㾯�� 20180525 */
INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('DataStorageWarning', N'�洢�ռ䲻�㾯��', N'�𾴵��û����������Ĵ洢�ռ�{StorageSize}TB,Ŀǰ��ʹ��{UsedSize}TB,Ϊ�˲�Ӱ�����ݴ洢���뼰ʱ����洢�ռ䡣', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DataStorageWarning', N'StorageSize', N'�����ռ��С', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DataStorageWarning', N'UsedSize', N'��ʹ�ÿռ�', 2, MAX(ID) FROM SmsTemplate;


 
 /* Զ��Эͬ���� - Զ����� ����ض���ģ�� */
 
 INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('DiagnosisRequest', N'����ҽ���ύ��������֪ͨ���Ĺ���Ա', N'{RequestDoctorName}ҽ��������{PatientName}��Ҫ{SmsMessage}��������������ϵ{DiagnosisDoctorName}ҽ�����绰��{DiagnosisDoctorTel}��', NULL, NULL, NULL);
INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('DianosisWorkFlow', N'�������֪ͨ', N'{RequestDoctorName}ҽ��������{PatientName}��Ҫ{SmsMessage}��������������ϵ{DiagnosisDoctorName}ҽ�����绰��{DiagnosisDoctorTel}��', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DianosisWorkFlow', N'RequestDoctorName', N'����ҽ������', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DianosisWorkFlow', N'PatientName', N'��������', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DianosisWorkFlow', N'SmsMessage', N'��������', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DianosisWorkFlow', N'DiagnosisDoctorName', N'���ҽ������', 4, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DianosisWorkFlow', N'DiagnosisDoctorTel', N'���ҽ���绰', 5, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('DiagnosisRevise', N'���ר���޶���֪ͨ����ҽ��', '{RequestDoctorName}ҽ��������{PatientName}{ExamineDate}{SendType}��ϱ����ѱ��޶���������������ϵ{DiagnosisDoctorName}ҽ�����绰��{DiagnosisDoctorTel}��', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DiagnosisRevise', N'RequestDoctorName', N'����ҽ������', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DiagnosisRevise', N'PatientName', N'��������', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DiagnosisRevise', N'ExamineDate', N'���ʱ��', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DiagnosisRevise', N'SendType', N'�������ͣ��ĵ硢Ӱ�񡢳���������', 4, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DiagnosisRevise', N'DiagnosisDoctorName', N'���ҽ������', 5, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DiagnosisRevise', N'DiagnosisDoctorTel', N'���ҽ���绰', 6, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('DiagnosisTaskPush', N'�����������', N'{DoctorName}ҽ����{RequestHospitalName}�ύ��һ��{ExamineType}������룬��������:{PatientName}��������ʱ���Ŵ���', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DiagnosisTaskPush', N'DoctorName', N'ҽ������', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DiagnosisTaskPush', N'RequestHospitalName', N'����ҽԺ����', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DiagnosisTaskPush', N'ExamineType', N'�������', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DiagnosisTaskPush', N'PatientName', N'��������', 4, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('DiagnosisBeforeRevise', N'����޶�ǰ֪ͨ', N'{RequestDoctorName}ҽ��������{PatientName}{ExamineDate}{ExamineType}{SendType}��ϱ������ڱ��޶���������������ϵ{DiagnosisDoctorName}ҽ�����绰��{DiagnosisDoctorTel}', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DiagnosisBeforeRevise', N'RequestDoctorName', N'�����û�����', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DiagnosisBeforeRevise', N'PatientName', N'��������', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DiagnosisBeforeRevise', N'ExamineDate', N'���ʱ��', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DiagnosisBeforeRevise', N'ExamineType', N'Ӱ������', 4, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DiagnosisBeforeRevise', N'SendType', N'������Դ��Ӱ���ĵ�ȣ�', 5, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DiagnosisBeforeRevise', N'DiagnosisDoctorName', N'���ҽ������', 6, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DiagnosisBeforeRevise', N'DiagnosisDoctorTel', N'���ҽ���绰', 7, MAX(ID) FROM SmsTemplate;

/* Эͬ Ӱ����� ������� 20180514 */
INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('ImageReportBack', N'���Ӱ����ϱ��沢ִ�б������ʱ������֪ͨԭ��дҽ��', N'{WriteCustomerName}ҽ�����ã�����д�Ļ���[{PatientName}-{PatientSex}]�ı������� {Reason}����{AuditCustomerName}ҽ����{OperateTime}���б����˻أ�������ʱ��¼ƽ̨�鿴������', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ImageReportBack', N'WriteCustomerName', N'��дҽ��', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ImageReportBack', N'PatientName', N'��������', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ImageReportBack', N'PatientSex', N'�����Ա�', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ImageReportBack', N'Reason', N'����ԭ��', 4, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ImageReportBack', N'AuditCustomerName', N'���ҽ��', 5, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ImageReportBack', N'OperateTime', N'����ʱ��', 6, MAX(ID) FROM SmsTemplate;



 /* Զ��Эͬ���� - Զ�̻��� ����ض���ģ�� */
 /* 20180525 �����޸� */
 INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('DoctorNISchedulingSuccess', N'Զ�̻���֪ͨ����ҽ�����ȳɹ����ǽ���ʽ��', N'���ύ�Ļ������루{PatientName}��{KindName}����ָ�ɸ�{ExpertName}�������ĵȴ���������', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DoctorNISchedulingSuccess', N'PatientName', N'��������', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DoctorNISchedulingSuccess', N'KindName', N'��������', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DoctorNISchedulingSuccess', N'ExpertName', N'����ר������', 3, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('DoctorISchedulingSuccess', N'Զ�̻���֪ͨ����ҽ�����ȳɹ�������ʽ��', N'���ύ�Ļ������루{PatientName}��{KindName}����ָ�ɸ�{ExpertName}����{ConsultDate}��ʼ����������׼����׼ʱ�μӡ�', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DoctorISchedulingSuccess', N'PatientName', N'��������', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DoctorISchedulingSuccess', N'KindName', N'��������', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DoctorISchedulingSuccess', N'ExpertName', N'����ר������', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DoctorISchedulingSuccess', N'ConsultDate', N'����ʱ��', 4, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('ConsultDoctorSchedulingFail', N'Զ�̻���֪ͨ����ҽ������ʧ��', N'���ύ�Ļ������루{PatientName}��{KindName}������ʧ�ܣ�ԭ�����£�{Reason}��������������ϵ[{CenterPersonName}]���绰[{CenterTelPhone}]��', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ConsultDoctorSchedulingFail', N'PatientName', N'��������', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ConsultDoctorSchedulingFail', N'KindName', N'��������', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ConsultDoctorSchedulingFail', N'Reason', N'���ʧ��ԭ��', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ConsultDoctorSchedulingFail', N'CenterPersonName', N'����������ϵ������', 4, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ConsultDoctorSchedulingFail', N'CenterTelPhone', N'����������ϵ�绰', 5, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('ConsultDoctorConsultFinished', N'Զ�̻���֪ͨ����ҽ��������ɻ����', N'���ύ�Ļ��{PatientName}��{KindName}������ɡ����¼ƽ̨�鿴�����������Ա��λ���������ۡ�', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ConsultDoctorConsultFinished', N'PatientName', N'��������', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ConsultDoctorConsultFinished', N'KindName', N'��������', 2, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('ConsultExpertRequested', N'Զ�̻���֪ͨ����ר�һ���������(���ٻ���)', N'{RequestHospitalName}�����˻��{PatientName}��{KindName}����Ҫ������', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ConsultExpertRequested', N'RequestHospitalName', N'����ҽԺ/����', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ConsultExpertRequested', N'PatientName', N'��������', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ConsultExpertRequested', N'KindName', N'��������', 3, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('ExpertNISchedulingConfirm', N'Զ�̻���֪ͨ����ר�������ѵ��Ȼ������񣨷ǽ���ʽ��', N'��{RequestCustomerName}�ύ�Ļ������루{PatientName}��{KindName}����ָ�ɸ������뾡�촦��', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ExpertNISchedulingConfirm', N'RequestCustomerName', N'����ҽ��', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ExpertNISchedulingConfirm', N'PatientName', N'��������', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ExpertNISchedulingConfirm', N'KindName', N'��������', 3, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('ExpertISchedulingConfirm', N'Զ�̻���֪ͨ����ר�������ѵ��Ȼ������񣨽���ʽ��', N'��{RequestCustomerName}�ύ�Ļ������루{PatientName}��{KindName}����ָ�ɸ�������{ConsultDate}��ʼ����������׼����׼ʱ�μӡ�', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ExpertISchedulingConfirm', N'RequestCustomerName', N'����ҽ��', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ExpertISchedulingConfirm', N'PatientName', N'��������', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ExpertISchedulingConfirm', N'KindName', N'��������', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ExpertISchedulingConfirm', N'ConsultDate', N'����ʱ��', 4, MAX(ID) FROM SmsTemplate;


INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('ConsultExpertSchedulingChange', N'Զ�̻���֪ͨ����ר�������µ���(��ȡ��ר��)', N'{ExpertName}ҽ����{RequestHospitalName}����Ļ��{PatientName}��{KindName}���Ѿ����µ��ȡ����ٴ���Ҫ����������֪ͨ���� ', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ConsultExpertSchedulingChange', N'ExpertName', N'����ר������', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ConsultExpertSchedulingChange', N'RequestHospitalName', N'����ҽԺ/����', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ConsultExpertSchedulingChange', N'PatientName', N'��������', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ConsultExpertSchedulingChange', N'KindName', N'��������', 4, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('CSCManagerRequested', N'Զ�̻���֪ͨ����������ά�µ�������', N'{RequestHospitalName}����Ļ��{PatientName}��{KindName}���ȴ������ȡ�', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'CSCManagerRequested', N'RequestHospitalName', N'����ҽԺ/����', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'CSCManagerRequested', N'PatientName', N'��������', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'CSCManagerRequested', N'KindName', N'��������', 3, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('ConsultBeforeQCFail', N'������ǰ�ʿ�ʧ��', N'����{ServiceCenterName}�ύ�Ļ���({PatientName}��{KindName})����{Reason}����ǰ�ʿ�δͨ����������ʱ����������������ϵ[{CenterPersonName}]���绰[{CenterTelPhone}]��', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ConsultBeforeQCFail', N'ServiceCenterName', N'������������', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ConsultBeforeQCFail', N'PatientName', N'��������', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ConsultBeforeQCFail', N'KindName', N'��������', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ConsultBeforeQCFail', N'Reason', N'ԭ��', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ConsultBeforeQCFail', N'CenterPersonName', N'���ĸ�����', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ConsultBeforeQCFail', N'CenterTelPhone', N'���ĵ绰', 3, MAX(ID) FROM SmsTemplate;

 /* Զ��Эͬ���� - Զ������ ����ض���ģ�� */
 -- 20180607 ����
INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('ClinicExpertRequested', N'֪ͨר��������������', N'{ExpertName}ר�ң����ã�{RequestHospitalName}{DoctorName}ҽ������ԤԼ��{Time}��{KindName}���뼰ʱ�鿴', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClinicExpertRequested', N'ExpertName', N'ר������', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClinicExpertRequested', N'RequestHospitalName', N'����ҽԺ', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClinicExpertRequested', N'DoctorName', N'����ҽ������', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClinicExpertRequested', N'Time', N'ԤԼʱ��', 4, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClinicExpertRequested', N'KindName', N'��������', 5, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('ClinicPatientRequested', N'֪ͨ����ԤԼ�ɹ�', N'{PatientName}�����ѳɹ�ԤԼ{Time}{ExpertName}ר�ҵ�{KindName}��������ǰ���ź�ʱ�䣬׼ʱ����', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClinicPatientRequested', N'PatientName', N'��������', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClinicPatientRequested', N'Time', N'ԤԼʱ��', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClinicPatientRequested', N'ExpertName', N'ר������', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClinicPatientRequested', N'KindName', N'��������', 4, MAX(ID) FROM SmsTemplate;


INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('ClinicExpertCancel', N'֪ͨר������ȡ��', N'{ExpertName}ר�ң����ã�{RequestHospitalName}{DoctorName}ҽ������ԤԼ��{Time}{KindName}��ȡ�����뼰ʱ�鿴', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClinicExpertCancel', N'ExpertName', N'ר������', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClinicExpertCancel', N'RequestHospitalName', N'����ҽԺ', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClinicExpertCancel', N'DoctorName', N'����ҽ������', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClinicExpertCancel', N'Time', N'ԤԼʱ��', 4, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClinicExpertCancel', N'KindName', N'��������', 5, MAX(ID) FROM SmsTemplate;

 
INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('ClinicDoctorFinished', N'֪ͨ����ҽ���������', N'{DoctorName}ҽ�������ã�����{PatientName}��Զ����������{ExpertName}ר����{DiagnosisTime}��д����������뼰ʱ�鿴', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClinicDoctorFinished', N'DoctorName', N'����ҽ������', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClinicDoctorFinished', N'PatientName', N'��������', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClinicDoctorFinished', N'ExpertName', N'ר������', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClinicDoctorFinished', N'DiagnosisTime', N'���ʱ��', 3, MAX(ID) FROM SmsTemplate;


/* Զ��ҽѧ����ϵͳ */

-- ��ѧ�����뽲ʦ��ImportTeacher��20180122
INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('ImportTeacher', N'���뽲ʦ', N'{TeacherName}��ʦ��{ServiceCenterName}��������չԶ�̽�ѧ����������¼{ShortUrl}���˺ţ�{Phone}�����룺{Password}��', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ImportTeacher', N'TeacherName', N'��ʦ����', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ImportTeacher', N'ServiceCenterName', N'������������', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ImportTeacher', N'ShortUrl', N'�γ̵�ַ', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ImportTeacher', N'Phone', N'��¼���ֻ���', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ImportTeacher', N'Password', N'����', 2, MAX(ID) FROM SmsTemplate;

-- ��ѧ��ע�ὲʦ��RegisterTeacher��20180122
INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('RegisterTeacher', N'ע�ὲʦ', N'{TeacherName}��ʦ�����ѳɹ�ע��Ϊ{ServiceCenterName}�Ľ�ʦ��������¼{ShortUrl}���˺ţ�{Phone}�����룺{Password}��', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'RegisterTeacher', N'TeacherName', N'��ʦ����', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'RegisterTeacher', N'ServiceCenterName', N'������������', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'RegisterTeacher', N'ShortUrl', N'�γ̵�ַ', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'RegisterTeacher', N'Phone', N'��¼���ֻ���', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'RegisterTeacher', N'Password', N'����', 2, MAX(ID) FROM SmsTemplate;
 


INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('CreateTeachToServiceMessage', N'��ѧ�������֪ͨ', N'����һ���µĽ�ѧ������Ҫ��������˺ʹ������¼ϵͳ{ShortUrl}�鿴���顣', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'CreateTeachToServiceMessage', N'ShortUrl', N'������', 1, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('AuditPassTeachToExpertMessage', N'��ѧ�������ͨ�����֪ͨ', N'����һ���ύ�Ľ�ѧ������ͨ����ˣ����¼ϵͳ{ShortUrl}�鿴���顣', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'AuditPassTeachToExpertMessage', N'ShortUrl', N'������', 1, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('AuditFailTeachToExpertMessage', N'��ѧ������˲�ͨ����֪ͨ', N'����һ���ύ�Ľ�ѧ������˲�ͨ����ԭ��{Reason}�����¼ϵͳ{ShortUrl}�鿴���顣', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'AuditFailTeachToExpertMessage', N'Reason', N'ԭ��', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'AuditFailTeachToExpertMessage', N'ShortUrl', N'������', 2, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('ServiceToExpertTeachMessage', N'��ѧ����֪ͨ��ʦ', N'����һ���µĽ�ѧ�������¼ϵͳ{ShortUrl}�鿴���顣', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ServiceToExpertTeachMessage', N'ShortUrl', N'������', 1, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('FollowTeacherUrlMessage', N'֪ͨѧԱ����ע��ʦ�Ŀγ̷�����Ϣ', N'����ע�Ľ�ʦ{TeacherName}�������µ�{TeachKind}�γ�{TeachName}��������Ӳ鿴��{ShortUrl}��  ', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'FollowTeacherUrlMessage', N'TeacherName', N'��ʦ����', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'FollowTeacherUrlMessage', N'TeachKind', N'�γ�����', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'FollowTeacherUrlMessage', N'TeachName', N'�γ�����', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'FollowTeacherUrlMessage', N'ShortUrl', N'�γ̵�ַ', 4, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('FollowTeachCenterUrlMessage', N'֪ͨѧԱ����ע��ѧ���ĵĿγ̷�����Ϣ', N'����ע�Ľ�ѧ����{TeachCenter}�������µ�{TeachKind}�γ�{TeachName}��������Ӳ鿴��{ShortUrl}��', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'FollowTeachCenterUrlMessage', N'TeachCenter', N'��ѧ��������', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'FollowTeachCenterUrlMessage', N'TeachKind', N'�γ�����', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'FollowTeachCenterUrlMessage', N'TeachName', N'�γ�����', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'FollowTeachCenterUrlMessage', N'ShortUrl', N'�γ̵�ַ', 4, MAX(ID) FROM SmsTemplate;


/* �ʿ�ϵͳ */
INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('CorrectiveNotice', N'��������֪ͨ', N'���յ���һ������{ServiceCenterName}���ʿ����������{resultName}�����¼ϵͳ�鿴���顣', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'CorrectiveNotice', N'ServiceCenterName', N'', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'CorrectiveNotice', N'resultName', N'�������', 2, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('CancelQualityControlTask', N'ȡ���ʿ�����֪ͨ', N'�ƻ���{StartDate}��{Address}ִ�е�{TaskName}�ʿ�������ʱ�ѱ�ȡ��.', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'CancelQualityControlTask', N'StartDate', N'��ʼʱ��', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'CancelQualityControlTask', N'Address', N'�ص�', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'CancelQualityControlTask', N'TaskName', N'�ʿ�����', 3, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('IndependenceQualityControl', N'���Ͷ����ʿ�֪ͨ', N'����һ���µĶ����ʿ�����.', NULL, NULL, NULL);

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('SendQualityControlTask', N'�����ʿ�����(���˶����ʿ���)֪ͨ', N'��{UserInfoName}������{TaskName}����{StartDate}��{Address}��ʼ{QualityName}�������μӣ���׼ʱ�μӡ�', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SendQualityControlTask', N'UserInfoName', N'�����û�����', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SendQualityControlTask', N'TaskName', N'�ʿ�����', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SendQualityControlTask', N'StartDate', N'��ʼʱ��', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SendQualityControlTask', N'Address', N'�ʿصص�', 4, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SendQualityControlTask', N'QualityName', N'�ʿ���Ա', 5, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('SendFeedBack', N'�ʿط���֪ͨ', N'���յ�һ������{taskName}������Ϣ,��Ϣ��Դ��{feedBackHospital}��{feedBackName}.', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SendFeedBack', N'taskName', N'�ʿ���������', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SendFeedBack', N'feedBackHospital', N'����ҽԺ', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SendFeedBack', N'feedBackName', N'����ҽ��', 3, MAX(ID) FROM SmsTemplate;


/* ���ϵͳ */
INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('SendMonitorMessage', N'���ͼ����Ϣ', N' {ServerName}[{Host}]{Content}{HappenDate}', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SendMonitorMessage', N'ServerName', N'����������', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SendMonitorMessage', N'Host', N'����IP', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SendMonitorMessage', N'Content', N'����', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SendMonitorMessage', N'HappenDate', N'����ʱ��', 4, MAX(ID) FROM SmsTemplate;


INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('SendCheckExamMessage', N'���ͼ��˲���Ϣ', N' {HospitalName}{ExamDate}���ݺ˲���:���(�ɷ���/�ѷ���/ȱʧ){ExamStatistics},Ӱ��(�ɷ���/�ѷ���/ȱʧ){ImageStatistics},��Ƭ(�ɷ���/�ѷ���/ȱʧ){FilmStatistics},���ݺϸ���:{QualifiedRate}.', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SendCheckExamMessage', N'HospitalName', N'ҽԺ����', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SendCheckExamMessage', N'ExamDate', N'�������', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SendCheckExamMessage', N'ExamStatistics', N'���״̬', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SendCheckExamMessage', N'ImageStatistics', N'Ӱ��״̬', 4, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SendCheckExamMessage', N'FilmStatistics', N'��Ƭ״̬', 5, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SendCheckExamMessage', N'QualifiedRate', N'���ݺϸ���', 6, MAX(ID) FROM SmsTemplate;



/* ���ڷ���ϵͳ */
INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('ClientExpertsReceivedImage', N'Ӱ����ѯΪ�ѽӵ������ͻ��ѵ�����״̬֪ͨ�û�', N'��{RequestDate}�����Ӱ����ѯ[{ExamineType}��{ExamineDesc}]������ţ�{OrderNo}��{CustomerName}ר���Ѿ����ܣ���ȴ�ר�ҵ���ѯ�����', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClientExpertsReceivedImage', N'RequestDate', N'����ʱ��', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClientExpertsReceivedImage', N'ExamineType', N'�������', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClientExpertsReceivedImage', N'ExamineDesc', N'��鲿λ', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClientExpertsReceivedImage', N'OrderNo', N'�����', 4, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClientExpertsReceivedImage', N'CustomerName', N'ר������', 5, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('ClientExpertsReceivedAsk', N'Զ������Ϊ�ѽӵ������ͻ��ѵ�����״̬֪ͨ�û�', N'��{RequestDate}�����{AskMode}������ţ�{OrderNo}��{CustomerName}ר���Ѿ����ܣ���ȴ�ר�ҵ���ѯ�����', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClientExpertsReceivedAsk', N'RequestDate', N'����ʱ��', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClientExpertsReceivedAsk', N'AskMode', N'���﷽ʽ', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClientExpertsReceivedAsk', N'OrderNo', N'�����', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClientExpertsReceivedAsk', N'CustomerName', N'ר������', 4, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('DoctorExpertsReceivedImage', N'Ӱ����ѯΪ�ѽӵ������ͻ��ѵ�����״̬֪ͨҽ��', N'���յ�һ���µ�Ӱ����ѯ{OrderNo}��{ExamineType}��{ExamineDesc}���룬������ʱ����', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DoctorExpertsReceivedImage', N'OrderNo', N'�����', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DoctorExpertsReceivedImage', N'ExamineType', N'�������', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DoctorExpertsReceivedImage', N'ExamineDesc', N'��鲿λ', 3, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('DoctorExpertsReceivedAsk', N'Զ������Ϊ�ѽӵ������ͻ��ѵ�����״̬֪ͨҽ��', N'���յ�һ���µ�{AskMode}{OrderNo}��{Purpose}��������ʱ����', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DoctorExpertsReceivedAsk', N'AskMode', N'���﷽ʽ', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DoctorExpertsReceivedAsk', N'OrderNo', N'�����', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DoctorExpertsReceivedAsk', N'Purpose', N'����Ŀ��', 3, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('ClientExpertWithdrawalImage', N'Ӱ����ѯר���˵�֪ͨ�û�', N'��{RequestDate}��Ӱ����ѯ����[���ţ�{OrderNo}]ר�����˻ء�������ѡ������ҽ���������˿�������ʣ�����ϵ�ͷ���', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClientExpertWithdrawalImage', N'RequestDate', N'����ʱ��', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClientExpertWithdrawalImage', N'OrderNo', N'�����', 2, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('ClientExpertWithdrawalAsk', N'Զ������ר���˵�֪ͨ�û�', N'��{RequestDate}��{AskMode}����[���ţ�{OrderNo}]ר�����˻ء�������ѡ������ҽ���������˿', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClientExpertWithdrawalAsk', N'RequestDate', N'����ʱ��', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClientExpertWithdrawalAsk', N'AskMode', N'���﷽ʽ', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClientExpertWithdrawalAsk', N'OrderNo', N'�����', 3, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('ClientExpertsRespondedImage', N'Ӱ����ѯר���ѻظ�֪ͨ�û�', N'��{RequestDate}��Ӱ����ѯ[{ExamineType} {ExamineDesc}]��ר���ѻظ������¼ϵͳ�鿴���顣', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClientExpertsRespondedImage', N'RequestDate', N'����ʱ��', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClientExpertsRespondedImage', N'ExamineType', N'�������', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClientExpertsRespondedImage', N'ExamineDesc', N'��鲿λ', 3, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('ClientExpertsRespondedAsk', N'Զ������ר���ѻظ�֪ͨ�û�', N'��{RequestDate}��{AskMode}���룬ר���ѻظ������¼ϵͳ�鿴���顣', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClientExpertsRespondedAsk', N'RequestDate', N'����ʱ��', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClientExpertsRespondedAsk', N'AskMode', N'���﷽ʽ', 2, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('ClientHasEditImage', N'Ӱ����ѯר���޶���֪ͨ�û�', N'��{RequestDate}��Ӱ����ѯ[{ExamineType},{ExamineDesc}],ר�Ҷ�����������޸ġ����¼ϵͳ�鿴���顣', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClientHasEditImage', N'RequestDate', N'����ʱ��', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClientHasEditImage', N'ExamineType', N'�������', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClientHasEditImage', N'ExamineDesc', N'��鲿λ', 3, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('ClientHasEditAsk', N'Զ������ר���޶���֪ͨ�û�', N'��{RequestDate}��{AskMode}���룬ר�Ҷ�����������޸ġ����¼ϵͳ�鿴���顣', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClientHasEditAsk', N'RequestDate', N'����ʱ��', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClientHasEditAsk', N'AskMode', N'���﷽ʽ', 2, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('DoctorAppointmentTimeDenied', N'�û��ܾ�ԤԼʱ��֪ͨҽ��', N'���Ե���Ϊ{OrderNo}��{AskMode}�趨��ԤԼʱ��{AskPreDate}���������Ѿ��ܾ������¼ϵͳ�鿴���顣', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DoctorAppointmentTimeDenied', N'OrderNo', N'������', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DoctorAppointmentTimeDenied', N'AskMode', N'���﷽ʽ', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DoctorAppointmentTimeDenied', N'AskPreDate', N'ԤԼʱ��', 3, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('DoctorConfirmedAppointmentTime', N'�û�ȷ��ԤԼʱ��֪ͨҽ��', N'���Ե���Ϊ{OrderNo}��{AskMode}�趨��ԤԼʱ��{AskPreDate}���������Ѿ�ͬ�⡣', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DoctorConfirmedAppointmentTime', N'OrderNo', N'������', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DoctorConfirmedAppointmentTime', N'AskMode', N'���﷽ʽ', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DoctorConfirmedAppointmentTime', N'AskPreDate', N'ԤԼʱ��', 3, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('ClientScheduledTime', N'��Ƶ�����ԤԼʱ��֪ͨ����', N'���ĵ���Ϊ{OrderNo}��{AskMode}��ҽ���趨ԤԼʱ��Ϊ{AskPreDate}��������¼ϵͳȷ���Ƿ�ͬ�⡣', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClientScheduledTime', N'OrderNo', N'������', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClientScheduledTime', N'AskMode', N'���﷽ʽ', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClientScheduledTime', N'AskPreDate', N'ԤԼʱ��', 3, MAX(ID) FROM SmsTemplate;


/* 2018-01-10 �۵��������֪ͨ */
INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('FundusDianosisWorkFlow', N'�۵��������֪ͨ', N'{RequestDoctorName}ҽ�������ã�����{PatientName}�����߱�ţ�{PatientId}�������ţ�{MedRecNo} ������ţ�{AccessionNumber}����{Sex}��{Age}{AgeUnit}����Ҫ{ProcessType}��{ProcessType}ԭ��{Cause}��������������ϵ{DiagnosisDoctorName}ҽ�����绰 {DiagnosisDoctorTel}', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'FundusDianosisWorkFlow', N'RequestDoctorName', N'����ҽ������', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'FundusDianosisWorkFlow', N'PatientName', N'��������', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'FundusDianosisWorkFlow', N'PatientId', N'���߱��', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'FundusDianosisWorkFlow', N'MedRecNo', N'������', 4, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'FundusDianosisWorkFlow', N'AccessionNumber', N'�����', 5, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'FundusDianosisWorkFlow', N'Sex', N'�Ա�', 6, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'FundusDianosisWorkFlow', N'Age', N'����', 7, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'FundusDianosisWorkFlow', N'AgeUnit', N'���䵥λ', 8, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'FundusDianosisWorkFlow', N'ProcessType', N'��������', 9, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'FundusDianosisWorkFlow', N'DiagnosisDoctorName', N'���ҽ������', 10, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'FundusDianosisWorkFlow', N'Cause', N'����ԭ��', 11, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'FundusDianosisWorkFlow', N'DiagnosisDoctorTel', N'���ҽ���绰', 12, MAX(ID) FROM SmsTemplate;

/* MDT */
INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('MDTConcel', N'MDTȡ������֪ͨ', N'[��ѧ�ƻ���ϵͳ����֪ͨ]{Name}�����ã�����һ����ѧ�ƻ���������ȡ�����룡����ҽ����{DoctorName}������ҽԺ��{HospitalName}����ϵ�绰��{Phone}��', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'MDTConcel', N'Name', N'����������', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'MDTConcel', N'DoctorName', N'ҽ������', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'MDTConcel', N'HospitalName', N'ҽԺ����', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'MDTConcel', N'Phone', N'��ϵ�绰', 4, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('MedicalRegistDoctor', N'ҽ��ϵͳע��ҽ���˺ųɹ�֪ͨҽ��', N'{DoctorName}ҽ�����ã����ĳ�ʼ�û�����{UserId}����ʼ���룺{Password}', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'MedicalRegistDoctor', N'DoctorName', N'ҽ������', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'MedicalRegistDoctor', N'UserId', N'��¼��', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'MedicalRegistDoctor', N'Password', N'����', 3, MAX(ID) FROM SmsTemplate;


/* ��Ȩ 20180328 */
INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('AuthorizeRequestNotice', N'��Ȩ֪ͨ', N'{EngineerName}��{Time}�ύ{ImageCloud}��Ȩ���룬�뼰ʱ����', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'AuthorizeRequestNotice', N'EngineerName', N'����ʦ����', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'AuthorizeRequestNotice', N'Time', N'�ύʱ��', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'AuthorizeRequestNotice', N'ImageCloud', N'Ӱ��������', 3, MAX(ID) FROM SmsTemplate;

/* ������Ȩ 20180402 */
INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('SupplyAuthRequestNotice', N'������Ȩ֪ͨ', N'{EngineerName}��{Time}�ύ��{ImageCloud}������Ȩ���룬���ɣ�{SupplyReason}���뼰ʱ����', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SupplyAuthRequestNotice', N'EngineerName', N'����ʦ����', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SupplyAuthRequestNotice', N'Time', N'�ύʱ��', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SupplyAuthRequestNotice', N'ImageCloud', N'Ӱ��������', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SupplyAuthRequestNotice', N'SupplyReason', N'��������', 4, MAX(ID) FROM SmsTemplate;


/* ��������ģ�� 20180508 */
INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('CommonTemplate', N'��������ģ��', N'{Info}', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'CommonTemplate', N'Info', N'��������', 1, MAX(ID) FROM SmsTemplate;


/* ������������Ķ��� 20180514 */
INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('InstitutionQueuedNotice', N'������������', N'{CustomerName}�����ã������ڻ���{InstitutionName}��{Year}���{Month}�ڣ�{BeginMonth} - {EndMonth}���������񱨸浥 �ѳ�����ǰ���鿴�� {Url}', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'InstitutionQueuedNotice', N'CustomerName', N'��������Ա', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'InstitutionQueuedNotice', N'InstitutionName', N'��������', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'InstitutionQueuedNotice', N'Year', N'��', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'InstitutionQueuedNotice', N'Month', N'��', 4, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'InstitutionQueuedNotice', N'BeginMonth', N'��ʼʱ��/��', 5, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'InstitutionQueuedNotice', N'EndMonth', N'����ʱ��/��', 6, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'InstitutionQueuedNotice', N'Url', N'URL��ַ', 7, MAX(ID) FROM SmsTemplate;

/* �������ǩԼҽ�� InstitutionlContractDoctor 20180620 */
INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('InstitutionlContractDoctor', N'�������ǩԼҽ��', N'{DoctorName}ҽ�������ã�{InstitutionlName}��ǩԼ��Ϊ��ҽԺ��{ServiceTypeName}����ר�ң���ҽԺ�ύ��������뽫���Ȱ��Ÿ�������ע�⼰ʱ����', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'InstitutionlContractDoctor', N'DoctorName', N'ҽ��', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'InstitutionlContractDoctor', N'InstitutionlName', N'�����������', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'InstitutionlContractDoctor', N'ServiceTypeName', N'ǩԼ��������', 3, MAX(ID) FROM SmsTemplate;

/* ��������Ƴ�ǩԼҽ�� InstitutionlContractDoctorDel 20180620 */
INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('InstitutionlContractDoctorDel', N'��������Ƴ�ǩԼҽ��', N'{DoctorName}ҽ�������ã�{InstitutionlName}�Ѿ���ֹ�˹���{ServiceTypeName}�����ǩԼ��', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'InstitutionlContractDoctorDel', N'DoctorName', N'ҽ��', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'InstitutionlContractDoctorDel', N'InstitutionlName', N'�����������', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'InstitutionlContractDoctorDel', N'ServiceTypeName', N'ǩԼ��������', 3, MAX(ID) FROM SmsTemplate;


/* ˫��ת��Ķ���ģ��  20180724 */

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('ClinicReferralNoButt', N'�ɹ�ԤԼδ�Խ�Ժ�ں�Դ������', N'{CustomerName}�����ѳɹ�ԤԼ[{InstitutionlName}][{OrderDate}]������밴ʱȥҽԺ���ף�����տ�����', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClinicReferralNoButt', N'CustomerName', N'����', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClinicReferralNoButt', N'InstitutionlName', N'ҽԺ����', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClinicReferralNoButt', N'OrderDate', N'��������', 3, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('ClinicReferralNoButtCancle', N'δ�Խ�Ժ�ں�Դ������ԤԼʧ��', N'{CustomerName}����ԤԼ��[{InstitutionlName}][{OrderDate}]�������{Result}���ѱ�ȡ���������½⣡', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClinicReferralNoButtCancle', N'CustomerName', N'����', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClinicReferralNoButtCancle', N'InstitutionlName', N'ҽԺ����', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClinicReferralNoButtCancle', N'OrderDate', N'��������', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClinicReferralNoButtCancle', N'Result', N'�ܾ�ԭ��', 4, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('ClinicReferralButt', N'�ɹ�ԤԼ�Խ�Ժ�ں�Դ������', N'{CustomerName}�����ѳɹ�ԤԼ[{InstitutionlName}][{OrderDate}][{TimeRange}][{Number}]������밴ʱȥҽԺ���ף�����տ�����', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClinicReferralButt', N'CustomerName', N'����', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClinicReferralButt', N'InstitutionlName', N'ҽԺ����', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClinicReferralButt', N'OrderDate', N'��������', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClinicReferralButt', N'TimeRange', N'ʱ���', 4, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClinicReferralButt', N'Number', N'��Դ', 5, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('ClinicReferralButtCancle', N'�Խ�Ժ�ں�Դ������ԤԼʧ��', N'{CustomerName}����ԤԼ��[{InstitutionlName}][{OrderDate}][{TimeRange}][{Number}]�������{Result}���ѱ�ȡ���������½⣡', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClinicReferralButtCancle', N'CustomerName', N'����', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClinicReferralButtCancle', N'InstitutionlName', N'ҽԺ����', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClinicReferralButtCancle', N'OrderDate', N'��������', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClinicReferralButtCancle', N'TimeRange', N'ʱ���', 4, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClinicReferralButtCancle', N'Number', N'��Դ', 5, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClinicReferralButtCancle', N'Result', N'�ܾ�ԭ��', 6, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('RequestInHospitalReferral', N'סԺת���¼����', N'���µ�סԺת�����룬�뼰ʱ����', NULL, NULL, NULL);

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('InHospitalReferralSuccess', N'�ɹ�ԤԼסԺת��', N'{CustomerName}�����ѳɹ�ԤԼ[{InstitutionlName}][{OrderDate}]��סԺ���밴ʱȥҽԺ����סԺ������ף�����տ�����', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'InHospitalReferralSuccess', N'CustomerName', N'����', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'InHospitalReferralSuccess', N'InstitutionlName', N'ҽԺ����', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'InHospitalReferralSuccess', N'OrderDate', N'��������', 3, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('InHospitalReferralCancle', N'סԺת��ԤԼʧ��', N'{CustomerName}����ԤԼ��[{InstitutionlName}][{OrderDate}]��סԺ����{Result}���ѱ�ȡ���������½⣡', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'InHospitalReferralCancle', N'CustomerName', N'����', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'InHospitalReferralCancle', N'InstitutionlName', N'ҽԺ����', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'InHospitalReferralCancle', N'OrderDate', N'��������', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'InHospitalReferralCancle', N'Result', N'�ܾ�ԭ��', 4, MAX(ID) FROM SmsTemplate;

-- 20180903 �޸�
INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('ReserveSuccess', N'ԤԼ�ɹ�', N'{PatientName},���ļ����ԤԼ�ɹ�,{ExamHospitalName},{ReserveDate},{ExamItem},����ǰ{AdvanceHour}Сʱǰ�����ҽԺ׼��.лл��ϡ��˽�����������{Url}', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ReserveSuccess', N'PatientName', N'��������', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ReserveSuccess', N'ExamHospitalName', N'���ҽԺ', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ReserveSuccess', N'ReserveDate', N'ԤԼ����', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ReserveSuccess', N'ExamItem', N'�����Ŀ', 4, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ReserveSuccess', N'AdvanceHour', N'��ǰʱ��', 5, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ReserveSuccess', N'Url', N'�����ַ', 6, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('ReserveCancle', N'ԤԼȡ��', N'���ѳɹ�ȡ����[{ExamItem}]�ļ����Ŀ,ԤԼ����:[{ReserveDate}],���ҽԺ:[{ExamHospitalName}]', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ReserveCancle', N'ExamItem', N'�����Ŀ', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ReserveCancle', N'ReserveDate', N'ԤԼ����', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ReserveCancle', N'ExamHospitalName', N'���ҽԺ', 3, MAX(ID) FROM SmsTemplate;

-- 20180903 ����
INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('ReserveReportComplete ', N'��鱨�����', N'{PatientName},���ļ���ѱ������,{ExamHospitalName},{ReserveDate},{ExamItem},�˽�����������{Url}', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ReserveReportComplete', N'PatientName', N'��������', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ReserveReportComplete', N'ExamHospitalName', N'���ҽԺ', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ReserveReportComplete', N'ReserveDate', N'ԤԼ����', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ReserveReportComplete', N'ExamItem', N'�����Ŀ', 4, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ReserveReportComplete', N'Url', N'�����ַ', 5, MAX(ID) FROM SmsTemplate;



--  ****************************  ˫��ת�� �Ķ���ģ�� 20180822 **************************************��

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid, Kind) VALUES ('ZysqToOutAdmin', 'סԺת�����룬���������ҽ��', '{OutHospitalName}ת���ҽ�����ã���Ժ��{RequestTime}������һ��סԺת�����룬��������Ϊ{PatientName}���������Ϊ{FirstDiagnosis}������סԺ����Ϊ{OrderDate}���뼰ʱ����ת����ˡ�', NULL, NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZysqToOutAdmin', N'OutHospitalName', N'ת��ҽԺ', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZysqToOutAdmin', N'RequestTime', N'����ʱ��', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZysqToOutAdmin', N'PatientName', N'��������', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZysqToOutAdmin', N'FirstDiagnosis', N'�������', 4, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZysqToOutAdmin', N'OrderDate', N'����סԺ����', 5, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid, Kind) VALUES ('ZyshtgToInAdmin', 'סԺת��������ͨ������ת��ҽԺ����Ա', '{InHospitalName}ת���ҽ�����ã�{OutHospitalName}��{RequestTime}��Ժ������һ��סԺת�����룬��������Ϊ{PatientName}���������Ϊ{FirstDiagnosis}������סԺ����Ϊ{OrderDate}���뼰ʱת������', NULL, NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZyshtgToInAdmin', N'InHospitalName', N'ת��ҽԺ', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZyshtgToInAdmin', N'OutHospitalName', N'ת��ҽԺ', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZyshtgToInAdmin', N'RequestTime', N'����ʱ��', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZyshtgToInAdmin', N'PatientName', N'��������', 4, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZyshtgToInAdmin', N'FirstDiagnosis', N'�������', 5, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZyshtgToInAdmin', N'OrderDate', N'����סԺ����', 6, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid, Kind) VALUES ('ZyjcshtgToPatient', 'סԺת��������ͨ����������', '{PatientName}���ã�����һ��סԺת�������ѷ�����ת��ҽԺ{InHospitalName}������סԺ����Ϊ{OrderDate}����δͨ����ˣ��������״̬��鿴����ҳ�棬��ַ��{H5Url}', NULL, NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZyjcshtgToPatient', N'PatientName', N'��������', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZyjcshtgToPatient', N'InHospitalName', N'ת��ҽԺ', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZyjcshtgToPatient', N'OrderDate', N'����סԺ����', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZyjcshtgToPatient', N'H5Url', N'�����ַ', 4, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid, Kind) VALUES ('ZysltgToInAdmin', 'סԺת��ת��ҽԺ����ͨ������ת��ҽԺ����Ա', '{InHospitalName}ת���ҽ�����ã�{OutHospitalName}��{RequestTime}��Ժ������һ��סԺת�����룬��������Ϊ{PatientName}���������Ϊ{FirstDiagnosis}������סԺ����Ϊ{OrderDate}���뼰ʱ֪ͨ����ٴ�����ҽ������׼��������', NULL, NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZysltgToInAdmin', N'InHospitalName', N'ת��ҽԺ', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZysltgToInAdmin', N'OutHospitalName', N'ת��ҽԺ', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZysltgToInAdmin', N'RequestTime', N'����ʱ��', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZysltgToInAdmin', N'PatientName', N'��������', 4, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZysltgToInAdmin', N'FirstDiagnosis', N'�������', 5, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZysltgToInAdmin', N'OrderDate', N'����סԺ����', 6, MAX(ID) FROM SmsTemplate;


INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid, Kind) VALUES ('ZysltgToPatient', 'סԺת��ת��ҽԺ����ͨ����������', '{PatientName}���ã�����һ��סԺת�������ѱ�����ת��ҽԺ{InHospitalName}������סԺ����Ϊ{OrderDate}����ƾ��Ժ�����ţ�{VisitNo}����ʱ��ҽԺסԺ��������Ժ��������鿴����ҳ�棬��ַ{H5Url}', NULL, NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZysltgToPatient', N'PatientName', N'��������', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZysltgToPatient', N'InHospitalName', N'ת��ҽԺ', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZysltgToPatient', N'OrderDate', N'����סԺ����', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZysltgToPatient', N'VisitNo', N'��Ժ������', 4, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZysltgToPatient', N'H5Url', N'�����ַ', 5, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid, Kind) VALUES ('ZyzryysljjToOutAdmin', 'סԺת��ת��ҽԺ����ܾ�����ת��ҽԺ����Ա', '{OutHospitalName}ת���ҽ�����ã���Ժ��{RequestTime}��һ��סԺת�����룬ת��ҽԺ{InHospitalName}����������Ϊ{PatientName}���������Ϊ{FirstDiagnosis}������סԺ����Ϊ{OrderDate}���Է�ҽԺ�ѾܽӸ����룬��֪����', NULL, NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZyzryysljjToOutAdmin', N'OutHospitalName', N'ת��ҽԺ', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZyzryysljjToOutAdmin', N'RequestTime', N'����ʱ��', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZyzryysljjToOutAdmin', N'InHospitalName', N'ת��ҽԺ', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZyzryysljjToOutAdmin', N'PatientName', N'��������', 4, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZyzryysljjToOutAdmin', N'FirstDiagnosis', N'�������', 5, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZyzryysljjToOutAdmin', N'OrderDate', N'����סԺ����', 6, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid, Kind) VALUES ('ZyzrsljjToPatient', 'סԺת��ת��ҽԺ����ܾ���������', '{PatientName}���ã�����һ��סԺת��������˲�ͨ����ת��ҽԺ{InHospitalName}������סԺ����Ϊ{OrderDate}����鿴����ҳ�棬��ַ{H5Url}', NULL, NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZyzrsljjToPatient', N'PatientName', N'��������', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZyzrsljjToPatient', N'InHospitalName', N'ת��ҽԺ', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZyzrsljjToPatient', N'OrderDate', N'����סԺ����', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZyzrsljjToPatient', N'H5Url', N'�����ַ', 4, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid, Kind) VALUES ('ZylyToOutAdmin', 'סԺת����Լ����ת��ҽԺ����Ա', '{OutHospitalName}ת���ҽ�����ã���Ժ��{RequestTime}��һ��סԺת�����룬ת��ҽԺ{InHospitalName}����������Ϊ{PatientName}���������Ϊ{FirstDiagnosis}������סԺ����Ϊ{OrderDate}���ò����Ѿ���Լ����֪����', NULL, NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZylyToOutAdmin', N'OutHospitalName', N'ת��ҽԺ', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZylyToOutAdmin', N'RequestTime', N'����ʱ��', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZylyToOutAdmin', N'InHospitalName', N'ת��ҽԺ', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZylyToOutAdmin', N'PatientName', N'��������', 4, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZylyToOutAdmin', N'FirstDiagnosis', N'�������', 5, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZylyToOutAdmin', N'OrderDate', N'����סԺ����', 6, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid, Kind) VALUES ('MzToPatientButt', '����ת�����룬������ �ԽӺ�Դ��', '{PatientName} {PatientSex}������ԤԼ��{HospitalName} {OfficeName} {DoctorName} {OrderDate}  {TimeRange}�ľ���ţ���Я��������ҽ�������߾��￨���Լ����֤����Ч֤������Լ��ʱ�估ʱǰ��ҽԺ���ﲿ��������ȡ�Ż����߹ҺŴ��ڣ�ȡ�ž��', NULL, NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'MzToPatientButt', N'PatientName', N'��������', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'MzToPatientButt', N'PatientSex', N'�����Ա�', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'MzToPatientButt', N'HospitalName', N'ԤԼҽԺ', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'MzToPatientButt', N'OfficeName', N'ԤԼ����', 4, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'MzToPatientButt', N'DoctorName', N'ҽ������', 5, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'MzToPatientButt', N'OrderDate', N'ԤԼ����', 6, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'MzToPatientButt', N'TimeRange', N'ԤԼʱ���', 7, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid, Kind) VALUES ('MzToPatientNoButt', '����ת�����룬������ û�жԽӺ�Դ��', '{PatientName}{PatientSex}������ԤԼ��{HospitalName}�ľ���ţ���Я��������ҽ�������߾��￨���Լ����֤����Ч֤������Լ��ʱ�估ʱǰ��ҽԺ���ﲿ��������ȡ�Ż����߹ҺŴ��ڣ�ȡ�ž��', NULL, NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'MzToPatientNoButt', N'PatientName', N'��������', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'MzToPatientNoButt', N'PatientSex', N'�����Ա�', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'MzToPatientNoButt', N'HospitalName', N'ԤԼҽԺ', 3, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid, Kind) VALUES ('WaitMsgToPatient', 'סԺת��ת��ҽԺ����ȴ�����������', '{PatientName}���ã���ԤԼ{InHospitalName}��סԺ�����ѱ����ܣ�ҽԺ������Ϊ������סԺ���ڣ������ĵȴ���', NULL, NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'WaitMsgToPatient', N'PatientName', N'��������', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'WaitMsgToPatient', N'InHospitalName', N'ת��ҽԺ', 2, MAX(ID) FROM SmsTemplate;

	

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid, Kind) VALUES ('MzqxToPatientButt', '����ת��ȡ���������� �ԽӺ�Դ��', '{PatientName}{PatientSex}����ԤԼ��{HospitalName}{OfficeName}{DoctorName}{OrderDate} {TimeRange}������ѱ�ȡ���������½⣡', NULL, NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'MzqxToPatientButt', N'PatientName', N'��������', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'MzqxToPatientButt', N'PatientSex', N'�����Ա�', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'MzqxToPatientButt', N'HospitalName', N'����ҽԺ', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'MzqxToPatientButt', N'OfficeName', N'ԤԼ����', 4, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'MzqxToPatientButt', N'DoctorName', N'ҽ������', 5, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'MzqxToPatientButt', N'OrderDate', N'��������', 6, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'MzqxToPatientButt', N'TimeRange', N'����ʱ��', 7, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid, Kind) VALUES ('MzqxToPatientNoButt', '����ת��ȡ���������� û�жԽӺ�Դ��', '{PatientName}{PatientSex}����ԤԼ��{HospitalName}{OrderDate}������ѱ�ȡ���������½⣡', NULL, NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'MzqxToPatientNoButt', N'PatientName', N'��������', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'MzqxToPatientNoButt', N'PatientSex', N'�����Ա�', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'MzqxToPatientNoButt', N'HospitalName', N'����ҽԺ', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'MzqxToPatientNoButt', N'OrderDate', N'��������', 4, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid, Kind) VALUES ('ZysqfbhToPatient', 'סԺ���뷽���ظ����߷���', '{PatientName}����ԤԼ��{InHospitalName}{OrderDate}��סԺ���ѱ�{OutHospitalName}���أ������½⣡', NULL, NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZysqfbhToPatient', N'PatientName', N'��������', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZysqfbhToPatient', N'InHospitalName', N'ת��ҽԺ', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZysqfbhToPatient', N'OrderDate', N'סԺ����', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZysqfbhToPatient', N'OutHospitalName', N'ת��ҽԺ', 4, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid, Kind) VALUES ('QxzysqToPatient', 'ת���ͽ��շ�ȡ��סԺ�����߷���', '{PatientName}����ԤԼ��{InHospitalName}{OrderDate}��סԺ���ѱ�ȡ���������½⣡', NULL, NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'QxzysqToPatient', N'PatientName', N'��������', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'QxzysqToPatient', N'InHospitalName', N'ת��ҽԺ', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'QxzysqToPatient', N'OrderDate', N'סԺ����', 3, MAX(ID) FROM SmsTemplate;



--  ****************************  ˫��ת�� �Ķ���ģ�� ���� **************************************












