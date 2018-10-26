/*============================================================================================*/
/* 数据初始化                                                                                 */
/* UpdateDate:2018-09-03                                                                     */
/* Author:Shentt                                                                              */
/* 短信参数 SmsTemplate 和 SmsTemplatePara                                                    */
/* COMMON 数据库                                                                              */
/*============================================================================================*/

-- 公共部分、用户账号、机构、服务审核等
INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('SmsVerifyCode', N'短信验证码', N'验证码为{#verifyCode#}, {#expireTime#}分钟内有效，如非本人操作，请忽略此短信。', NULL, NULL, NULL);

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('ResetPassword', N'重置密码', N'尊敬的用户[{CustomerName}]，您的密码已经重置，新密码为: {Password}。', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ResetPassword', N'CustomerName', N'密码', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ResetPassword', N'Password', N'密码', 2, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('PublicRegiste', N'公众用户注册成功', N'尊敬的用户，您的账户已开通，可使用账号{UserId}或注册的手机号进行登录，初始密码为{Password}，登录成功后请立即修改密码。', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'PublicRegiste', N'UserId', N'用户名', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'PublicRegiste', N'Password', N'密码', 2, MAX(ID) FROM SmsTemplate;

/*
INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('DoctorRegiste', N'医生注册完成', N'尊敬的用户，您的注册申请已提交成功，请耐心等待平台运营人员的审核。', NULL, NULL, NULL);

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('InstitutionlRegiste', N'机构注册完成', N'尊敬的用户，您为{InstitutionlName}的注册申请已提交成功，请耐心等待平台运营人员的审核。', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'InstitutionlRegiste', N'InstitutionlName', N'机构名称', 1, MAX(ID) FROM SmsTemplate;
*/

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('DoctorAuditSucceed', N'医生审核通过', N'尊敬的用户,您注册的账号已通过审核，可使用账号{UserId}或注册的手机号进行登录。', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DoctorAuditSucceed', N'UserId', N'用户名', 1, MAX(ID) FROM SmsTemplate;


INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('DoctorAuditFailed', N'医生审核失败', N'尊敬的用户，您的注册申请因为{Reason}未通过审核。如有疑问，请致电:{Phone}。', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DoctorAuditFailed', N'Reason', N'失败原因', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DoctorAuditFailed', N'Phone', N'热线电话', 2, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('InstitutionlNameAuditSucceed', N'机构审核通过', N'尊敬的用户，您注册的{InstitutionlName}已通过审核，可使用账号{UserId}或注册的手机号进行登录，初始密码为{Password}，登录成功后请立即修改密码。', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'InstitutionlNameAuditSucceed', N'InstitutionlName', N'机构名称', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'InstitutionlNameAuditSucceed', N'UserId', N'用户名', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'InstitutionlNameAuditSucceed', N'Password', N'密码', 3, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('InstitutionlNameAuditFailed', N'机构审核失败', N'尊敬的用户，您申请注册的{InstitutionlName}因为{Reason}未通过审核，请修改资料后再次提交申请。', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'InstitutionlNameAuditFailed', N'InstitutionlName', N'机构名称', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'InstitutionlNameAuditFailed', N'Reason', N'审核失败的原因', 2, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('AuthenticationNotice', N'实名认证审核结果', N'您在影像云的实名认证结果为 {result}，备注：{notice}。', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'AuthenticationNotice', N'result', N'结果', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'AuthenticationNotice', N'notice', N'备注信息', 2, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('InstitutionlAdminRegiste', N'机构后台注册', N'尊敬的用户，平台为您分配了{InstitutionlName}的管理员账号:{UserId}，可以凭此账号登录，初始密码为{Password}。', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'InstitutionlNameAuditSucceed', N'InstitutionlName', N'机构名称', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'InstitutionlNameAuditSucceed', N'UserId', N'用户名', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'InstitutionlNameAuditSucceed', N'Password', N'密码', 3, MAX(ID) FROM SmsTemplate;

-- 20180418 新增短信模板  InstitutionUpdateInfo  平台修改信息通知管理员
INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('InstitutionUpdateInfo', N'平台修改信息通知管理员', N'尊敬的{InstitutionlName}管理员，平台为本机构变更了[{information}]', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'InstitutionUpdateInfo', N'InstitutionlName', N'机构名称', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'InstitutionUpdateInfo', N'information', N'修改的信息', 2, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('InstitutionInsertInfo', N'平台新增信息通知管理员', N'尊敬的{InstitutionlName}管理员，平台为本机构新增了[{information}]', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'InstitutionInsertInfo', N'InstitutionlName', N'机构名称', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'InstitutionInsertInfo', N'information', N'修改的信息', 2, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('InsertInstitutionlAdmin', N'平台添加用户为机构管理员进行通知', N'尊敬的用户[{CustomerName}]，平台已把您设置为[{InstitutionlName}]的管理员，登入地址: {Url}', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'InsertInstitutionlAdmin', N'CustomerName', N'用户姓名', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'InsertInstitutionlAdmin', N'InstitutionlName', N'机构名称', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'InsertInstitutionlAdmin', N'Url', N'地址', 3, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('DeleteInstitutionlAdmin', N'平台将用户从机构管理员删除进行通知', N'尊敬的用户[{CustomerName}]，平台已把您从[{InstitutionlName}]的管理员中移除。', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DeleteInstitutionlAdmin', N'CustomerName', N'用户姓名', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DeleteInstitutionlAdmin', N'InstitutionlName', N'机构名称', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DeleteInstitutionlAdmin', N'Url', N'地址', 3, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('PassThroughInstitutionlService', N'平台修改信息通知管理员', N'尊敬的{InstitutionlName}管理员，机构申请的以下服务已开通: {information}', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'PassThroughInstitutionlService', N'InstitutionlName', N'机构名称', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'PassThroughInstitutionlService', N'information', N'服务信息', 2, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('NotThroughInstitutionlService', N'平台修改信息通知管理员', N'尊敬的{InstitutionlName}管理员，机构申请的以下服务未通过审核: {information}', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'NotThroughInstitutionlService', N'InstitutionlName', N'机构名称', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'NotThroughInstitutionlService', N'information', N'服务信息', 2, MAX(ID) FROM SmsTemplate;


/*
INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('OperationAuthenticationSucceed', N'运营实名认证审核通过', N'尊敬的用户，您在影像云平台注册的账号已经审核通过。', NULL, NULL, NULL);
*/


-- 机构管理：服务中心签约医生，成功之后短信通知医生
INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('SignDoctorSuccess', N'服务中心签约医生后通知医生', N'{DoctorName}医生，[{ServiceCenterName}]邀请您加入[{ServiceList}]服务，请登录系统及时确认。', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SignDoctorSuccess', N'DoctorName', N'医生姓名', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SignDoctorSuccess', N'ServiceCenterName', N'服务中心名称', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SignDoctorSuccess', N'ServiceList', N'开通服务列表', 3, MAX(ID) FROM SmsTemplate;


-- 机构管理：服务中心签约医生，成功之后短信通知管理员
INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('SignHospitalSuccess', N'服务中心签约医生后通知服务中心', N'{DoctorName}管理员，您管理的{InstitutionName}与{ServiceCenterName}已成功签约了[{ServiceList}]的服务，请登录系统及时确认。', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SignHospitalSuccess', N'DoctorName', N'管理员姓名', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SignHospitalSuccess', N'InstitutionName', N'机构名称', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SignHospitalSuccess', N'ServiceCenterName', N'服务中心名称', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SignHospitalSuccess', N'ServiceList', N'开通服务列表', 4, MAX(ID) FROM SmsTemplate;

 
 /* 影像云归档系统的相关短信模板 */
 
INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('IntegrationServiceSmsTemplate', N'集成服务短信内容模板', N'您{examdate}在{hospital}的检查信息已生成，详见{link}', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'IntegrationServiceSmsTemplate', N'examdate', N'检查日期', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'IntegrationServiceSmsTemplate', N'hospital', N'医院', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'IntegrationServiceSmsTemplate', N'link', N'链接', 3, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('ExamInfoShareSmsTemplate', N'检查信息分享短信内容模板', N'{name}医生给您分享了一个病例：{servicetext}，请打开医网云医生APP查看。', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ExamInfoShareSmsTemplate', N'name', N'用户姓名', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ExamInfoShareSmsTemplate', N'servicetext', N'观察服务类型内容（如检查项目、检验）', 2, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('SubscribeSmsTemplate', N'云归档质量报告消息推送', N'{institutionname}{subscriptionDeadline}影像云存储质量报告：{statisticaMemorylContent}；最近{SubscriptionCycle}天，数据采集总数{successCount}条，失败数{failCount}条，{statisticaInformationlContent}。您可以登录系统{idcasUrl}查看详情。', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SubscribeSmsTemplate', N'institutionname', N'机构名称', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SubscribeSmsTemplate', N'subscriptionDeadline', N'订阅截止时间', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SubscribeSmsTemplate', N'statisticaMemorylContent', N'统计存储量内容', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SubscribeSmsTemplate', N'SubscriptionCycle', N'订阅周期时间', 4, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SubscribeSmsTemplate', N'successCount', N'成功数量', 5, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SubscribeSmsTemplate', N'failCount', N'失败数量', 6, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SubscribeSmsTemplate', N'statisticaInformationlContent', N'统计信息数内容', 7, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SubscribeSmsTemplate', N'idcasUrl', N'影像云URL', 8, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('CloudExamFilmNote', N'云胶片检查模板', N'您{examdate}在{institutionname}的检查报告已生成。点击{cloudfilmurl}查看。', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'CloudExamFilmNote', N'examdate', N'检查时间', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'CloudExamFilmNote', N'institutionname', N'检查机构', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'CloudExamFilmNote', N'cloudfilmurl', N'云胶片URL', 3, MAX(ID) FROM SmsTemplate;

-- 20180418新增 检查归档预警   DataCheckWarning
INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('DataCheckWarning', N'检查归档预警', N'尊敬的用户，您好！今日[{OrganizationName}]的检查数据归档，自[{LastDateTime}]至[{NowTime}]未检测到新检查数据，请及时查看处理。', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DataCheckWarning', N'OrganizationName', N'机构名称', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DataCheckWarning', N'LastDateTime', N'开始时间', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DataCheckWarning', N'NowTime', N'现在时间/截止时间', 3, MAX(ID) FROM SmsTemplate;

-- 20180525 云存储  DataStorageWarning 存储空间不足警告  
INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('DataStorageWarning', N'存储空间不足警告', N'尊敬的用户：您订购的存储空间{StorageSize}TB,目前已使用{UsedSize}TB,为了不影响数据存储，请及时扩充存储空间。', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DataStorageWarning', N'StorageSize', N'订购空间大小', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DataStorageWarning', N'UsedSize', N'已使用空间', 2, MAX(ID) FROM SmsTemplate;

-- 20180919 ExamArchiveErrorWarning 检查归档错误预警
-- ****（联系人），您好，您管理的****机构由于****（原因）*****（病人姓名、号码）数据采集失败，请及时处理
INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('ExamArchiveErrorWarning', N'检查归档错误预警', N'{CustomerName}，您好，您管理的[{OrganizationName}]由于{Reason}，[{PatientName}][{AccessionNumber}]数据采集失败，请及时处理！', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ExamArchiveErrorWarning', N'CustomerName', N'联系人名字', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ExamArchiveErrorWarning', N'OrganizationName', N'机构名称', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ExamArchiveErrorWarning', N'Reason', N'失败原因', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ExamArchiveErrorWarning', N'PatientName', N'病人姓名', 4, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ExamArchiveErrorWarning', N'AccessionNumber', N'检查号', 5, MAX(ID) FROM SmsTemplate;



 
 /* 远程协同服务 - 远程诊断 的相关短信模板 */
 
 INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('DiagnosisRequest', N'申请医生提交诊断申请后通知中心管理员', N'{RequestDoctorName}医生，患者{PatientName}需要{SmsMessage}。如有疑问请联系{DiagnosisDoctorName}医生，电话：{DiagnosisDoctorTel}。', NULL, NULL, NULL);
INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('DianosisWorkFlow', N'诊断流程通知', N'{RequestDoctorName}医生，患者{PatientName}需要{SmsMessage}。如有疑问请联系{DiagnosisDoctorName}医生，电话：{DiagnosisDoctorTel}。', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DianosisWorkFlow', N'RequestDoctorName', N'申请医生姓名', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DianosisWorkFlow', N'PatientName', N'患者姓名', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DianosisWorkFlow', N'SmsMessage', N'短信内容', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DianosisWorkFlow', N'DiagnosisDoctorName', N'诊断医生姓名', 4, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DianosisWorkFlow', N'DiagnosisDoctorTel', N'诊断医生电话', 5, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('DiagnosisRevise', N'诊断专家修订后通知申请医生', '{RequestDoctorName}医生，患者{PatientName}{ExamineDate}{SendType}诊断报告已被修订。如有疑问请联系{DiagnosisDoctorName}医生，电话：{DiagnosisDoctorTel}。', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DiagnosisRevise', N'RequestDoctorName', N'申请医生姓名', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DiagnosisRevise', N'PatientName', N'患者姓名', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DiagnosisRevise', N'ExamineDate', N'检查时间', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DiagnosisRevise', N'SendType', N'发送类型：心电、影像、超声、病理', 4, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DiagnosisRevise', N'DiagnosisDoctorName', N'诊断医生姓名', 5, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DiagnosisRevise', N'DiagnosisDoctorTel', N'诊断医生电话', 6, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('DiagnosisTaskPush', N'诊断任务推送', N'{DoctorName}医生，{RequestHospitalName}提交了一份{ExamineType}诊断申请，患者姓名:{PatientName}，请您及时安排处理。', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DiagnosisTaskPush', N'DoctorName', N'医生姓名', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DiagnosisTaskPush', N'RequestHospitalName', N'申请医院名称', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DiagnosisTaskPush', N'ExamineType', N'检查类型', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DiagnosisTaskPush', N'PatientName', N'患者姓名', 4, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('DiagnosisBeforeRevise', N'诊断修订前通知', N'{RequestDoctorName}医生，患者{PatientName}{ExamineDate}{ExamineType}{SendType}诊断报告正在被修订。如有疑问请联系{DiagnosisDoctorName}医生，电话：{DiagnosisDoctorTel}', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DiagnosisBeforeRevise', N'RequestDoctorName', N'申请用户姓名', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DiagnosisBeforeRevise', N'PatientName', N'患者姓名', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DiagnosisBeforeRevise', N'ExamineDate', N'检查时间', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DiagnosisBeforeRevise', N'ExamineType', N'影像类型', 4, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DiagnosisBeforeRevise', N'SendType', N'短信来源（影像、心电等）', 5, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DiagnosisBeforeRevise', N'DiagnosisDoctorName', N'诊断医生姓名', 6, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DiagnosisBeforeRevise', N'DiagnosisDoctorTel', N'诊断医生电话', 7, MAX(ID) FROM SmsTemplate;

/* 协同 影像诊断 报告回退 20180514 */
INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('ImageReportBack', N'审核影像诊断报告并执行报告回退时，短信通知原书写医生', N'{WriteCustomerName}医生您好！您书写的患者[{PatientName}-{PatientSex}]的报告由于 {Reason}，被{AuditCustomerName}医生在{OperateTime}进行报告退回，请您及时登录平台查看并处理。', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ImageReportBack', N'WriteCustomerName', N'书写医生', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ImageReportBack', N'PatientName', N'患者姓名', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ImageReportBack', N'PatientSex', N'患者性别', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ImageReportBack', N'Reason', N'回退原因', 4, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ImageReportBack', N'AuditCustomerName', N'审核医生', 5, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ImageReportBack', N'OperateTime', N'操作时间', 6, MAX(ID) FROM SmsTemplate;



 /* 远程协同服务 - 远程会诊 的相关短信模板 */
 /* 20180525 重新修改 */
 INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('DoctorNISchedulingSuccess', N'远程会诊通知申请医生调度成功（非交互式）', N'您提交的会诊申请（{PatientName}，{KindName}）已指派给{ExpertName}，请耐心等待会诊结果。', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DoctorNISchedulingSuccess', N'PatientName', N'患者姓名', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DoctorNISchedulingSuccess', N'KindName', N'会诊类型', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DoctorNISchedulingSuccess', N'ExpertName', N'会诊专家姓名', 3, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('DoctorISchedulingSuccess', N'远程会诊通知申请医生调度成功（交互式）', N'您提交的会诊申请（{PatientName}，{KindName}）已指派给{ExpertName}，于{ConsultDate}开始，请您做好准备，准时参加。', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DoctorISchedulingSuccess', N'PatientName', N'患者姓名', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DoctorISchedulingSuccess', N'KindName', N'会诊类型', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DoctorISchedulingSuccess', N'ExpertName', N'会诊专家姓名', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DoctorISchedulingSuccess', N'ConsultDate', N'会诊时间', 4, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('ConsultDoctorSchedulingFail', N'远程会诊通知申请医生调度失败', N'您提交的会诊申请（{PatientName}，{KindName}）调度失败，原因如下：{Reason}。如有疑问请联系[{CenterPersonName}]，电话[{CenterTelPhone}]。', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ConsultDoctorSchedulingFail', N'PatientName', N'患者姓名', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ConsultDoctorSchedulingFail', N'KindName', N'会诊类型', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ConsultDoctorSchedulingFail', N'Reason', N'审核失败原因', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ConsultDoctorSchedulingFail', N'CenterPersonName', N'服务中心联系人姓名', 4, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ConsultDoctorSchedulingFail', N'CenterTelPhone', N'服务中心联系电话', 5, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('ConsultDoctorConsultFinished', N'远程会诊通知申请医生会诊完成或结束', N'您提交的会诊（{PatientName}，{KindName}）已完成。请登录平台查看会诊结果，并对本次会诊给予评价。', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ConsultDoctorConsultFinished', N'PatientName', N'患者姓名', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ConsultDoctorConsultFinished', N'KindName', N'会诊类型', 2, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('ConsultExpertRequested', N'远程会诊通知会诊专家会诊已申请(快速会诊)', N'{RequestHospitalName}申请了会诊（{PatientName}，{KindName}）需要您处理。', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ConsultExpertRequested', N'RequestHospitalName', N'申请医院/机构', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ConsultExpertRequested', N'PatientName', N'患者姓名', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ConsultExpertRequested', N'KindName', N'会诊类型', 3, MAX(ID) FROM SmsTemplate;


INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('ExpertISchedulingConfirm', N'远程会诊通知会诊专家新增已调度会诊任务（交互式）', N'由{RequestHospitalName}提交的会诊申请（{PatientName}，{KindName}）已指派给您，于{ConsultDate}开始，请您做好准备，准时参加。', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ExpertISchedulingConfirm', N'RequestHospitalName', N'申请机构名称', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ExpertISchedulingConfirm', N'PatientName', N'患者姓名', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ExpertISchedulingConfirm', N'KindName', N'会诊类型', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ExpertISchedulingConfirm', N'ConsultDate', N'会诊时间', 4, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('ExpertNISchedulingConfirm', N'远程会诊通知会诊专家新增已调度会诊任务（非交互式）', N'由{RequestHospitalName}提交的会诊申请（{PatientName}，{KindName}）已指派给您，请尽快处理。', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ExpertNISchedulingConfirm', N'RequestHospitalName', N'申请机构名称', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ExpertNISchedulingConfirm', N'PatientName', N'患者姓名', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ExpertNISchedulingConfirm', N'KindName', N'会诊类型', 3, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('ConsultExpertSchedulingChange', N'远程会诊通知会诊专家已重新调度(已取消专家)', N'{ExpertName}医生，{RequestHospitalName}申请的会诊（{PatientName}，{KindName}）已经重新调度。若再次需要您会诊，会短信通知您。 ', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ConsultExpertSchedulingChange', N'ExpertName', N'会诊专家姓名', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ConsultExpertSchedulingChange', N'RequestHospitalName', N'申请医院/机构', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ConsultExpertSchedulingChange', N'PatientName', N'患者姓名', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ConsultExpertSchedulingChange', N'KindName', N'会诊类型', 4, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('CSCManagerRequested', N'远程会诊通知服务中心运维新调度任务', N'{RequestHospitalName}申请的会诊（{PatientName}，{KindName}）等待您调度。', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'CSCManagerRequested', N'RequestHospitalName', N'申请医院/机构', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'CSCManagerRequested', N'PatientName', N'患者姓名', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'CSCManagerRequested', N'KindName', N'会诊类型', 3, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('ConsultBeforeQCFail', N'会诊诊前质控失败', N'您向{ServiceCenterName}提交的会诊({PatientName}，{KindName})由于{Reason}，诊前质控未通过，请您及时处理！如有疑问请联系[{CenterPersonName}]，电话[{CenterTelPhone}]。', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ConsultBeforeQCFail', N'ServiceCenterName', N'服务中心名字', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ConsultBeforeQCFail', N'PatientName', N'患者姓名', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ConsultBeforeQCFail', N'KindName', N'会诊类型', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ConsultBeforeQCFail', N'Reason', N'原因', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ConsultBeforeQCFail', N'CenterPersonName', N'中心负责人', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ConsultBeforeQCFail', N'CenterTelPhone', N'中心电话', 3, MAX(ID) FROM SmsTemplate;


-- 20181008 新增的会诊短信模板
INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('ConsultNInteractiveRequest', N'远程会诊通知服务中心运维新会诊申请任务', N'{ManagerName} ，您好，您所在的服务中心有一个新的远程会诊任务等待处理！患者姓名[{PatientName}]、类型[{KindName}]、类别[{ClassName}]，申请人[{RequestDoctorName}]、申请用户电话[{RequestDoctorPhone}]。', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ConsultNInteractiveRequest', N'ManagerName', N'运营人员姓名', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ConsultNInteractiveRequest', N'PatientName', N'患者姓名', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ConsultNInteractiveRequest', N'KindName', N'会诊类型', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ConsultNInteractiveRequest', N'ClassName', N'会诊类别', 4, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ConsultNInteractiveRequest', N'RequestDoctorName', N'申请医生姓名', 5, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ConsultNInteractiveRequest', N'RequestDoctorPhone', N'申请医生手机号', 6, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('CSCDoctorRequested', N'远程会诊申请通知诊断医生', N'{ExpertName}专家，您好，您有一个新的远程会诊任务等待处理！患者姓名[{PatientName}]、类型[{KindName}]、类别[{ClassName}]，申请人[{RequestDoctorName}]、申请用户电话[{RequestDoctorPhone}]。', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'CSCDoctorRequested', N'ExpertName', N'专家姓名', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'CSCDoctorRequested', N'PatientName', N'患者姓名', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'CSCDoctorRequested', N'KindName', N'会诊类型', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'CSCDoctorRequested', N'ClassName', N'会诊类别', 4, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'CSCDoctorRequested', N'RequestDoctorName', N'申请医生姓名', 5, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'CSCDoctorRequested', N'RequestDoctorPhone', N'申请医生手机号', 6, MAX(ID) FROM SmsTemplate;



 /* 远程协同服务 - 远程门诊 的相关短信模板 */
 -- 20180607 更新
INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('ClinicExpertRequested', N'通知专家新增门诊任务', N'{ExpertName}专家，您好，{RequestHospitalName}{DoctorName}医生向您预约了{Time}的{KindName}，请及时查看', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClinicExpertRequested', N'ExpertName', N'专家姓名', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClinicExpertRequested', N'RequestHospitalName', N'申请医院', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClinicExpertRequested', N'DoctorName', N'申请医生姓名', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClinicExpertRequested', N'Time', N'预约时间', 4, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClinicExpertRequested', N'KindName', N'门诊类型', 5, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('ClinicPatientRequested', N'通知患者预约成功', N'{PatientName}，您已成功预约{Time}{ExpertName}专家的{KindName}，请您提前安排好时间，准时就诊', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClinicPatientRequested', N'PatientName', N'患者名称', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClinicPatientRequested', N'Time', N'预约时间', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClinicPatientRequested', N'ExpertName', N'专家姓名', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClinicPatientRequested', N'KindName', N'门诊类型', 4, MAX(ID) FROM SmsTemplate;


INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('ClinicExpertCancel', N'通知专家门诊取消', N'{ExpertName}专家，您好，{RequestHospitalName}{DoctorName}医生向您预约的{Time}{KindName}已取消，请及时查看', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClinicExpertCancel', N'ExpertName', N'专家姓名', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClinicExpertCancel', N'RequestHospitalName', N'申请医院', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClinicExpertCancel', N'DoctorName', N'申请医生姓名', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClinicExpertCancel', N'Time', N'预约时间', 4, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClinicExpertCancel', N'KindName', N'门诊类型', 5, MAX(ID) FROM SmsTemplate;

 
INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('ClinicDoctorFinished', N'通知申请医生门诊完成', N'{DoctorName}医生，您好，患者{PatientName}的远程门诊已由{ExpertName}专家于{DiagnosisTime}书写门诊意见，请及时查看', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClinicDoctorFinished', N'DoctorName', N'申请医生姓名', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClinicDoctorFinished', N'PatientName', N'患者姓名', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClinicDoctorFinished', N'ExpertName', N'专家姓名', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClinicDoctorFinished', N'DiagnosisTime', N'诊断时间', 3, MAX(ID) FROM SmsTemplate;



/* 远程医学教育系统 */

-- 教学：导入讲师（ImportTeacher）20180122
INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('ImportTeacher', N'导入讲师', N'{TeacherName}老师，{ServiceCenterName}邀请您开展远程教学服务。请您登录{ShortUrl}，账号：{Phone}，密码：{Password}。', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ImportTeacher', N'TeacherName', N'讲师姓名', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ImportTeacher', N'ServiceCenterName', N'服务中心名称', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ImportTeacher', N'ShortUrl', N'课程地址', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ImportTeacher', N'Phone', N'登录名手机号', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ImportTeacher', N'Password', N'密码', 2, MAX(ID) FROM SmsTemplate;

-- 教学：注册讲师（RegisterTeacher）20180122
INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('RegisterTeacher', N'注册讲师', N'{TeacherName}老师，您已成功注册为{ServiceCenterName}的讲师。请您登录{ShortUrl}，账号：{Phone}，密码：{Password}。', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'RegisterTeacher', N'TeacherName', N'讲师姓名', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'RegisterTeacher', N'ServiceCenterName', N'服务中心名称', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'RegisterTeacher', N'ShortUrl', N'课程地址', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'RegisterTeacher', N'Phone', N'登录名手机号', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'RegisterTeacher', N'Password', N'密码', 2, MAX(ID) FROM SmsTemplate;
 


INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('CreateTeachToServiceMessage', N'教学任务审核通知', N'您有一份新的教学任务需要您进行审核和处理，请登录系统{ShortUrl}查看详情。', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'CreateTeachToServiceMessage', N'ShortUrl', N'短链接', 1, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('AuditPassTeachToExpertMessage', N'教学任务审核通过后的通知', N'您有一份提交的教学任务已通过审核，请登录系统{ShortUrl}查看详情。', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'AuditPassTeachToExpertMessage', N'ShortUrl', N'短链接', 1, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('AuditFailTeachToExpertMessage', N'教学任务审核不通过的通知', N'您有一份提交的教学任务审核不通过，原因：{Reason}。请登录系统{ShortUrl}查看详情。', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'AuditFailTeachToExpertMessage', N'Reason', N'原因', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'AuditFailTeachToExpertMessage', N'ShortUrl', N'短链接', 2, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('ServiceToExpertTeachMessage', N'教学任务通知讲师', N'您有一份新的教学任务，请登录系统{ShortUrl}查看详情。', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ServiceToExpertTeachMessage', N'ShortUrl', N'短链接', 1, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('FollowTeacherUrlMessage', N'通知学员所关注讲师的课程发布信息', N'您关注的讲师{TeacherName}发布了新的{TeachKind}课程{TeachName}，点击链接查看：{ShortUrl}。  ', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'FollowTeacherUrlMessage', N'TeacherName', N'讲师名称', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'FollowTeacherUrlMessage', N'TeachKind', N'课程类型', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'FollowTeacherUrlMessage', N'TeachName', N'课程名称', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'FollowTeacherUrlMessage', N'ShortUrl', N'课程地址', 4, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('FollowTeachCenterUrlMessage', N'通知学员所关注教学中心的课程发布信息', N'您关注的教学中心{TeachCenter}发布了新的{TeachKind}课程{TeachName}，点击链接查看：{ShortUrl}。', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'FollowTeachCenterUrlMessage', N'TeachCenter', N'教学中心名称', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'FollowTeachCenterUrlMessage', N'TeachKind', N'课程类型', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'FollowTeachCenterUrlMessage', N'TeachName', N'课程名称', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'FollowTeachCenterUrlMessage', N'ShortUrl', N'课程地址', 4, MAX(ID) FROM SmsTemplate;


/* 质控系统 */
INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('CorrectiveNotice', N'发送整改通知', N'您收到了一条来自{ServiceCenterName}的质控评估结果：{resultName}。请登录系统查看详情。', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'CorrectiveNotice', N'ServiceCenterName', N'', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'CorrectiveNotice', N'resultName', N'评估结果', 2, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('CancelQualityControlTask', N'取消质控任务通知', N'计划于{StartDate}在{Address}执行的{TaskName}质控任务临时已被取消.', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'CancelQualityControlTask', N'StartDate', N'开始时间', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'CancelQualityControlTask', N'Address', N'地点', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'CancelQualityControlTask', N'TaskName', N'质控任务', 3, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('IndependenceQualityControl', N'发送独立质控通知', N'您有一条新的独立质控任务.', NULL, NULL, NULL);

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('SendQualityControlTask', N'发送质控任务(除了独立质控外)通知', N'由{UserInfoName}创建的{TaskName}将在{StartDate}在{Address}开始{QualityName}邀请您参加！请准时参加。', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SendQualityControlTask', N'UserInfoName', N'创建用户姓名', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SendQualityControlTask', N'TaskName', N'质控任务', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SendQualityControlTask', N'StartDate', N'开始时间', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SendQualityControlTask', N'Address', N'质控地点', 4, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SendQualityControlTask', N'QualityName', N'质控人员', 5, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('SendFeedBack', N'质控反馈通知', N'您收到一条任务{taskName}反馈信息,消息来源于{feedBackHospital}的{feedBackName}.', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SendFeedBack', N'taskName', N'质控任务名称', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SendFeedBack', N'feedBackHospital', N'反馈医院', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SendFeedBack', N'feedBackName', N'反馈医生', 3, MAX(ID) FROM SmsTemplate;


/* 监控系统 */
INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('SendMonitorMessage', N'发送监控消息', N' {ServerName}[{Host}]{Content}{HappenDate}', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SendMonitorMessage', N'ServerName', N'服务器名称', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SendMonitorMessage', N'Host', N'主机IP', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SendMonitorMessage', N'Content', N'内容', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SendMonitorMessage', N'HappenDate', N'发生时间', 4, MAX(ID) FROM SmsTemplate;


INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('SendCheckExamMessage', N'发送检查核查消息', N' {HospitalName}{ExamDate}数据核查结果:检查(可发布/已发布/缺失){ExamStatistics},影像(可发布/已发布/缺失){ImageStatistics},胶片(可发布/已发布/缺失){FilmStatistics},数据合格率:{QualifiedRate}.', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SendCheckExamMessage', N'HospitalName', N'医院名称', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SendCheckExamMessage', N'ExamDate', N'检查日期', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SendCheckExamMessage', N'ExamStatistics', N'检查状态', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SendCheckExamMessage', N'ImageStatistics', N'影像状态', 4, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SendCheckExamMessage', N'FilmStatistics', N'胶片状态', 5, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SendCheckExamMessage', N'QualifiedRate', N'数据合格率', 6, MAX(ID) FROM SmsTemplate;



/* 公众服务系统 */
INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('ClientExpertsReceivedImage', N'影像咨询为已接单已推送或已点名的状态通知用户', N'您{RequestDate}申请的影像咨询[{ExamineType}，{ExamineDesc}]，申请号：{OrderNo}，{CustomerName}专家已经接受，请等待专家的咨询意见。', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClientExpertsReceivedImage', N'RequestDate', N'申请时间', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClientExpertsReceivedImage', N'ExamineType', N'检查类型', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClientExpertsReceivedImage', N'ExamineDesc', N'检查部位', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClientExpertsReceivedImage', N'OrderNo', N'申请号', 4, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClientExpertsReceivedImage', N'CustomerName', N'专家姓名', 5, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('ClientExpertsReceivedAsk', N'远程问诊为已接单已推送或已点名的状态通知用户', N'您{RequestDate}申请的{AskMode}，申请号：{OrderNo}，{CustomerName}专家已经接受，请等待专家的咨询意见。', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClientExpertsReceivedAsk', N'RequestDate', N'申请时间', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClientExpertsReceivedAsk', N'AskMode', N'问诊方式', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClientExpertsReceivedAsk', N'OrderNo', N'申请号', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClientExpertsReceivedAsk', N'CustomerName', N'专家姓名', 4, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('DoctorExpertsReceivedImage', N'影像咨询为已接单已推送或已点名的状态通知医生', N'您收到一次新的影像咨询{OrderNo}，{ExamineType}，{ExamineDesc}申请，请您及时处理。', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DoctorExpertsReceivedImage', N'OrderNo', N'申请号', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DoctorExpertsReceivedImage', N'ExamineType', N'检查类型', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DoctorExpertsReceivedImage', N'ExamineDesc', N'检查部位', 3, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('DoctorExpertsReceivedAsk', N'远程问诊为已接单已推送或已点名的状态通知医生', N'您收到一次新的{AskMode}{OrderNo}，{Purpose}，请您及时处理。', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DoctorExpertsReceivedAsk', N'AskMode', N'问诊方式', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DoctorExpertsReceivedAsk', N'OrderNo', N'申请号', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DoctorExpertsReceivedAsk', N'Purpose', N'问诊目的', 3, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('ClientExpertWithdrawalImage', N'影像咨询专家退单通知用户', N'您{RequestDate}的影像咨询申请[单号：{OrderNo}]专家已退回。您可以选择其他医生或申请退款。如有疑问，请联系客服。', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClientExpertWithdrawalImage', N'RequestDate', N'申请时间', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClientExpertWithdrawalImage', N'OrderNo', N'申请号', 2, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('ClientExpertWithdrawalAsk', N'远程问诊专家退单通知用户', N'您{RequestDate}的{AskMode}申请[单号：{OrderNo}]专家已退回。您可以选择其他医生或申请退款。', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClientExpertWithdrawalAsk', N'RequestDate', N'申请时间', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClientExpertWithdrawalAsk', N'AskMode', N'问诊方式', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClientExpertWithdrawalAsk', N'OrderNo', N'申请号', 3, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('ClientExpertsRespondedImage', N'影像咨询专家已回复通知用户', N'您{RequestDate}的影像咨询[{ExamineType} {ExamineDesc}]，专家已回复。请登录系统查看详情。', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClientExpertsRespondedImage', N'RequestDate', N'申请时间', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClientExpertsRespondedImage', N'ExamineType', N'检查类型', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClientExpertsRespondedImage', N'ExamineDesc', N'检查部位', 3, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('ClientExpertsRespondedAsk', N'远程问诊专家已回复通知用户', N'您{RequestDate}的{AskMode}申请，专家已回复。请登录系统查看详情。', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClientExpertsRespondedAsk', N'RequestDate', N'申请时间', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClientExpertsRespondedAsk', N'AskMode', N'问诊方式', 2, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('ClientHasEditImage', N'影像咨询专家修订后通知用户', N'您{RequestDate}的影像咨询[{ExamineType},{ExamineDesc}],专家对意见进行了修改。请登录系统查看详情。', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClientHasEditImage', N'RequestDate', N'申请时间', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClientHasEditImage', N'ExamineType', N'检查类型', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClientHasEditImage', N'ExamineDesc', N'检查部位', 3, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('ClientHasEditAsk', N'远程问诊专家修订后通知用户', N'您{RequestDate}的{AskMode}申请，专家对意见进行了修改。请登录系统查看详情。', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClientHasEditAsk', N'RequestDate', N'申请时间', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClientHasEditAsk', N'AskMode', N'问诊方式', 2, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('DoctorAppointmentTimeDenied', N'用户拒绝预约时间通知医生', N'您对单号为{OrderNo}的{AskMode}设定的预约时间{AskPreDate}，申请人已经拒绝。请登录系统查看详情。', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DoctorAppointmentTimeDenied', N'OrderNo', N'订单号', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DoctorAppointmentTimeDenied', N'AskMode', N'问诊方式', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DoctorAppointmentTimeDenied', N'AskPreDate', N'预约时间', 3, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('DoctorConfirmedAppointmentTime', N'用户确认预约时间通知医生', N'您对单号为{OrderNo}的{AskMode}设定的预约时间{AskPreDate}，申请人已经同意。', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DoctorConfirmedAppointmentTime', N'OrderNo', N'订单号', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DoctorConfirmedAppointmentTime', N'AskMode', N'问诊方式', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'DoctorConfirmedAppointmentTime', N'AskPreDate', N'预约时间', 3, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('ClientScheduledTime', N'视频问诊的预约时间通知公众', N'您的单号为{OrderNo}的{AskMode}，医生设定预约时间为{AskPreDate}，请您登录系统确认是否同意。', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClientScheduledTime', N'OrderNo', N'订单号', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClientScheduledTime', N'AskMode', N'问诊方式', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClientScheduledTime', N'AskPreDate', N'预约时间', 3, MAX(ID) FROM SmsTemplate;

/* 全程99健康 */
INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('ImageReviewExpert', N'分诊成功短信通知专家', N'尊敬的{ExpertName}专家：您好，{PatientName}客户(性别{PatientSex}，电话：{PatientPhone}) 已成功预约您{SheduleDate} {SheduleBeginTime} 的影像咨询服务，当日敬请莅临上海市黄浦区外马路978号三盛宏业大厦12楼坐诊。服务热线：400-112-1881【万达全程健康门诊部】', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ImageReviewExpert', N'ExpertName', N'专家姓名', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ImageReviewExpert', N'PatientName', N'患者姓名', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ImageReviewExpert', N'PatientSex', N'患者性别', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ImageReviewExpert', N'PatientPhone', N'患者电话', 4, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ImageReviewExpert', N'SheduleDate', N'预约日期', 5, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ImageReviewExpert', N'SheduleBeginTime', N'预约时间点', 6, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('ImageReviewPatient', N'分诊成功短信通知患者', N'尊敬的客户：您好，已成功为您预约{SheduleDate} {SheduleBeginTime} {ExpertName}专家的影像咨询服务。咨询当日请您携带：{CarryData}。亲临上海市黄浦区外马路978号三盛宏业大厦12楼就诊。服务热线：400-112-1881，路线导航：http://t.cn/RKYIfx4 【万达全程健康门诊部】', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ImageReviewPatient', N'SheduleDate', N'预约日期', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ImageReviewPatient', N'SheduleBeginTime', N'预约时间点', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ImageReviewPatient', N'ExpertName', N'专家姓名', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ImageReviewPatient', N'CarryData', N'患者携带资料', 4, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('PublicBookingSuccess ', N'公众预约影像咨询成功', N'尊敬的{PatientName}客户，您好！您已成功预约{SheduleDate} {SheduleBeginTime}{ExpertName}专家的影像咨询服务，请您携带好身份证，相关影像资料（不限于胶片、光盘、U盘、病历卡，检验、检查报告，出院小结等）前往上海万达全程健康门诊部进行影像咨询。地址：黄浦区外马路978号三盛宏业大厦12楼（近赖义码头街）。服务热线：400-112-1881【全程99健康】', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'PublicBookingSuccess ', N'PatientName', N'患者姓名', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'PublicBookingSuccess ', N'SheduleDate', N'预约日期', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'PublicBookingSuccess ', N'SheduleBeginTime', N'预约时间点', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'PublicBookingSuccess ', N'ExpertName', N'专家姓名', 4, MAX(ID) FROM SmsTemplate;

/* 瑞金特许门诊 */
INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('NetClinicBookingSuccess', N'网络门诊预约成功', N'尊敬的客户，已为您成功预约专家特需门诊服务，请您准时进入网络会议室参与。服务热线：400-112-1881【瑞金特需门诊】', NULL, NULL, NULL);


/* 2018-01-10 眼底诊断流程通知 */
INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('FundusDianosisWorkFlow', N'眼底诊断流程通知', N'{RequestDoctorName}医生，您好，患者{PatientName}（患者编号：{PatientId}，病历号：{MedRecNo} ，检查编号：{AccessionNumber}），{Sex}，{Age}{AgeUnit}，需要{ProcessType}，{ProcessType}原因：{Cause}。如有问题请联系{DiagnosisDoctorName}医生，电话 {DiagnosisDoctorTel}', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'FundusDianosisWorkFlow', N'RequestDoctorName', N'申请医生姓名', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'FundusDianosisWorkFlow', N'PatientName', N'患者姓名', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'FundusDianosisWorkFlow', N'PatientId', N'患者编号', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'FundusDianosisWorkFlow', N'MedRecNo', N'病历号', 4, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'FundusDianosisWorkFlow', N'AccessionNumber', N'检查编号', 5, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'FundusDianosisWorkFlow', N'Sex', N'性别', 6, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'FundusDianosisWorkFlow', N'Age', N'年龄', 7, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'FundusDianosisWorkFlow', N'AgeUnit', N'年龄单位', 8, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'FundusDianosisWorkFlow', N'ProcessType', N'处理类型', 9, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'FundusDianosisWorkFlow', N'DiagnosisDoctorName', N'诊断医生姓名', 10, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'FundusDianosisWorkFlow', N'Cause', N'回退原因', 11, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'FundusDianosisWorkFlow', N'DiagnosisDoctorTel', N'诊断医生电话', 12, MAX(ID) FROM SmsTemplate;

/* MDT */
INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('MDTConcel', N'MDT取消申请通知', N'[多学科会诊系统短信通知]{Name}，您好，您有一条多学科会诊任务已取消申请！申请医生：{DoctorName}，申请医院：{HospitalName}，联系电话：{Phone}。', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'MDTConcel', N'Name', N'接收人姓名', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'MDTConcel', N'DoctorName', N'医生姓名', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'MDTConcel', N'HospitalName', N'医院名称', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'MDTConcel', N'Phone', N'联系电话', 4, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('MedicalRegistDoctor', N'医技系统注册医生账号成功通知医生', N'{DoctorName}医生您好，您的初始用户名：{UserId}，初始密码：{Password}', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'MedicalRegistDoctor', N'DoctorName', N'医生姓名', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'MedicalRegistDoctor', N'UserId', N'登录名', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'MedicalRegistDoctor', N'Password', N'密码', 3, MAX(ID) FROM SmsTemplate;


/* 授权 20180328 */
INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('AuthorizeRequestNotice', N'授权通知', N'{EngineerName}在{Time}提交{ImageCloud}授权申请，请及时处理！', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'AuthorizeRequestNotice', N'EngineerName', N'工程师姓名', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'AuthorizeRequestNotice', N'Time', N'提交时间', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'AuthorizeRequestNotice', N'ImageCloud', N'影像云名称', 3, MAX(ID) FROM SmsTemplate;

/* 补充授权 20180402 */
INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('SupplyAuthRequestNotice', N'补充授权通知', N'{EngineerName}在{Time}提交了{ImageCloud}补充授权申请，理由：{SupplyReason}，请及时处理！', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SupplyAuthRequestNotice', N'EngineerName', N'工程师姓名', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SupplyAuthRequestNotice', N'Time', N'提交时间', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SupplyAuthRequestNotice', N'ImageCloud', N'影像云名称', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'SupplyAuthRequestNotice', N'SupplyReason', N'补充理由', 4, MAX(ID) FROM SmsTemplate;


/* 公共短信模板 20180508 */
INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('CommonTemplate', N'公共短信模板', N'{Info}', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'CommonTemplate', N'Info', N'短信内容', 1, MAX(ID) FROM SmsTemplate;


/* 机构质量报告的短信 20180514 */
INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('InstitutionQueuedNotice', N'机构质量报告', N'{CustomerName}，您好，您所在机构{InstitutionName}的{Year}年第{Month}期（{BeginMonth} - {EndMonth}）机构服务报告单 已出，请前往查看！ {Url}', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'InstitutionQueuedNotice', N'CustomerName', N'机构管理员', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'InstitutionQueuedNotice', N'InstitutionName', N'机构名称', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'InstitutionQueuedNotice', N'Year', N'年', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'InstitutionQueuedNotice', N'Month', N'月', 4, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'InstitutionQueuedNotice', N'BeginMonth', N'开始时间/月', 5, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'InstitutionQueuedNotice', N'EndMonth', N'结束时间/月', 6, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'InstitutionQueuedNotice', N'Url', N'URL地址', 7, MAX(ID) FROM SmsTemplate;

/* 申请机构签约医生 InstitutionlContractDoctor 20180620 */
INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('InstitutionlContractDoctor', N'申请机构签约医生', N'{DoctorName}医生，您好，{InstitutionlName}已签约您为该医院的{ServiceTypeName}服务专家，该医院提交的诊断申请将优先安排给您，请注意及时处理', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'InstitutionlContractDoctor', N'DoctorName', N'医生', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'InstitutionlContractDoctor', N'InstitutionlName', N'申请机构名称', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'InstitutionlContractDoctor', N'ServiceTypeName', N'签约服务名称', 3, MAX(ID) FROM SmsTemplate;

/* 申请机构移除签约医生 InstitutionlContractDoctorDel 20180620 */
INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('InstitutionlContractDoctorDel', N'申请机构移除签约医生', N'{DoctorName}医生，您好，{InstitutionlName}已经终止了关于{ServiceTypeName}服务的签约。', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'InstitutionlContractDoctorDel', N'DoctorName', N'医生', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'InstitutionlContractDoctorDel', N'InstitutionlName', N'申请机构名称', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'InstitutionlContractDoctorDel', N'ServiceTypeName', N'签约服务名称', 3, MAX(ID) FROM SmsTemplate;


/* 区域预约的短信模板  20180724 */

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('ClinicReferralNoButt', N'成功预约未对接院内号源的门诊', N'{CustomerName}，您已成功预约[{InstitutionlName}][{OrderDate}]的门诊，请按时去医院就诊。祝您早日康复！', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClinicReferralNoButt', N'CustomerName', N'姓名', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClinicReferralNoButt', N'InstitutionlName', N'医院名称', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClinicReferralNoButt', N'OrderDate', N'就诊日期', 3, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('ClinicReferralNoButtCancle', N'未对接院内号源的门诊预约失败', N'{CustomerName}，您预约的[{InstitutionlName}][{OrderDate}]的门诊，因“{Result}”已被取消，请您谅解！', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClinicReferralNoButtCancle', N'CustomerName', N'姓名', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClinicReferralNoButtCancle', N'InstitutionlName', N'医院名称', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClinicReferralNoButtCancle', N'OrderDate', N'就诊日期', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClinicReferralNoButtCancle', N'Result', N'拒绝原因', 4, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('ClinicReferralButt', N'成功预约对接院内号源的门诊', N'{CustomerName}，您已成功预约[{InstitutionlName}][{OrderDate}][{TimeRange}][{Number}]的门诊，请按时去医院就诊。祝您早日康复！', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClinicReferralButt', N'CustomerName', N'姓名', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClinicReferralButt', N'InstitutionlName', N'医院名称', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClinicReferralButt', N'OrderDate', N'就诊日期', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClinicReferralButt', N'TimeRange', N'时间段', 4, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClinicReferralButt', N'Number', N'号源', 5, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('ClinicReferralButtCancle', N'对接院内号源的门诊预约失败', N'{CustomerName}，您预约的[{InstitutionlName}][{OrderDate}][{TimeRange}][{Number}]的门诊，因“{Result}”已被取消，请您谅解！', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClinicReferralButtCancle', N'CustomerName', N'姓名', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClinicReferralButtCancle', N'InstitutionlName', N'医院名称', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClinicReferralButtCancle', N'OrderDate', N'就诊日期', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClinicReferralButtCancle', N'TimeRange', N'时间段', 4, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClinicReferralButtCancle', N'Number', N'号源', 5, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ClinicReferralButtCancle', N'Result', N'拒绝原因', 6, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('RequestInHospitalReferral', N'住院转诊记录提醒', N'有新的住院转诊申请，请及时处理！', NULL, NULL, NULL);

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('InHospitalReferralSuccess', N'成功预约住院转诊', N'{CustomerName}，您已成功预约[{InstitutionlName}][{OrderDate}]的住院，请按时去医院办理住院手续。祝您早日康复！', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'InHospitalReferralSuccess', N'CustomerName', N'姓名', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'InHospitalReferralSuccess', N'InstitutionlName', N'医院名称', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'InHospitalReferralSuccess', N'OrderDate', N'就诊日期', 3, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('InHospitalReferralCancle', N'住院转诊预约失败', N'{CustomerName}，您预约的[{InstitutionlName}][{OrderDate}]的住院，因“{Result}”已被取消，请您谅解！', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'InHospitalReferralCancle', N'CustomerName', N'姓名', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'InHospitalReferralCancle', N'InstitutionlName', N'医院名称', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'InHospitalReferralCancle', N'OrderDate', N'就诊日期', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'InHospitalReferralCancle', N'Result', N'拒绝原因', 4, MAX(ID) FROM SmsTemplate;

-- 20180903 修改
INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('ReserveSuccess', N'预约成功', N'{PatientName},您的检查已预约成功,{ExamHospitalName},{ReserveDate},{ExamItem},请提前{AdvanceHour}小时前往检查医院准备.谢谢配合。了解详情请点击：{Url}', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ReserveSuccess', N'PatientName', N'患者姓名', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ReserveSuccess', N'ExamHospitalName', N'检查医院', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ReserveSuccess', N'ReserveDate', N'预约日期', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ReserveSuccess', N'ExamItem', N'检查项目', 4, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ReserveSuccess', N'AdvanceHour', N'提前时间', 5, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ReserveSuccess', N'Url', N'浏览地址', 6, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('ReserveCancle', N'预约取消', N'您已成功取消了[{ExamItem}]的检查项目,预约日期:[{ReserveDate}],检查医院:[{ExamHospitalName}]', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ReserveCancle', N'ExamItem', N'检查项目', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ReserveCancle', N'ReserveDate', N'预约日期', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ReserveCancle', N'ExamHospitalName', N'检查医院', 3, MAX(ID) FROM SmsTemplate;

-- 20180903 新增
INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid) VALUES ('ReserveReportComplete ', N'检查报告完成', N'{PatientName},您的检查已报告完成,{ExamHospitalName},{ReserveDate},{ExamItem},了解详情请点击：{Url}', NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ReserveReportComplete', N'PatientName', N'患者姓名', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ReserveReportComplete', N'ExamHospitalName', N'检查医院', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ReserveReportComplete', N'ReserveDate', N'预约日期', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ReserveReportComplete', N'ExamItem', N'检查项目', 4, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ReserveReportComplete', N'Url', N'浏览地址', 5, MAX(ID) FROM SmsTemplate;


--  ****************************  双向转诊 的短信模板 20180822 **************************************、

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid, Kind) VALUES ('ZysqToOutAdmin', '住院转诊申请，给基层审核医生', '{OutHospitalName}转诊办医生您好，本院在{RequestTime}发起了一条住院转诊申请，患者姓名为{PatientName}，初步诊断为{FirstDiagnosis}，申请住院日期为{OrderDate}，请及时进行转出审核。', NULL, NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZysqToOutAdmin', N'OutHospitalName', N'转出医院', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZysqToOutAdmin', N'RequestTime', N'申请时间', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZysqToOutAdmin', N'PatientName', N'患者姓名', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZysqToOutAdmin', N'FirstDiagnosis', N'初步诊断', 4, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZysqToOutAdmin', N'OrderDate', N'申请住院日期', 5, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid, Kind) VALUES ('ZyshtgToInAdmin', '住院转诊基层审核通过，给转入医院管理员', '{InHospitalName}转诊办医生您好，{OutHospitalName}在{RequestTime}向本院发送了一条住院转诊申请，患者姓名为{PatientName}，初步诊断为{FirstDiagnosis}，申请住院日期为{OrderDate}，请及时转入受理。', NULL, NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZyshtgToInAdmin', N'InHospitalName', N'转入医院', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZyshtgToInAdmin', N'OutHospitalName', N'转出医院', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZyshtgToInAdmin', N'RequestTime', N'申请时间', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZyshtgToInAdmin', N'PatientName', N'患者姓名', 4, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZyshtgToInAdmin', N'FirstDiagnosis', N'初步诊断', 5, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZyshtgToInAdmin', N'OrderDate', N'申请住院日期', 6, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid, Kind) VALUES ('ZyjcshtgToPatient', '住院转诊基层审核通过，给患者', '{PatientName}您好，你有一条住院转诊申请已发出，转入医院{InHospitalName}，申请住院日期为{OrderDate}。暂未通过审核，具体审核状态请查看导诊页面，地址：{H5Url}', NULL, NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZyjcshtgToPatient', N'PatientName', N'患者姓名', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZyjcshtgToPatient', N'InHospitalName', N'转入医院', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZyjcshtgToPatient', N'OrderDate', N'申请住院日期', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZyjcshtgToPatient', N'H5Url', N'浏览地址', 4, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid, Kind) VALUES ('ZysltgToInAdmin', '住院转诊转入医院受理通过，给转入医院管理员', '{InHospitalName}转诊办医生您好，{OutHospitalName}在{RequestTime}向本院发送了一条住院转诊申请，患者姓名为{PatientName}，初步诊断为{FirstDiagnosis}，申请住院日期为{OrderDate}，请及时通知相关临床科室医生做好准备工作。', NULL, NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZysltgToInAdmin', N'InHospitalName', N'转入医院', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZysltgToInAdmin', N'OutHospitalName', N'转出医院', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZysltgToInAdmin', N'RequestTime', N'申请时间', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZysltgToInAdmin', N'PatientName', N'患者姓名', 4, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZysltgToInAdmin', N'FirstDiagnosis', N'初步诊断', 5, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZysltgToInAdmin', N'OrderDate', N'申请住院日期', 6, MAX(ID) FROM SmsTemplate;


INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid, Kind) VALUES ('ZysltgToPatient', '住院转诊转入医院受理通过，给患者', '{PatientName}您好，你有一条住院转诊申请已被受理，转入医院{InHospitalName}，申请住院日期为{OrderDate}，请凭入院导诊编号：{VisitNo}，按时到医院住院处办理入院，详情请查看导诊页面，地址{H5Url}', NULL, NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZysltgToPatient', N'PatientName', N'患者姓名', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZysltgToPatient', N'InHospitalName', N'转入医院', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZysltgToPatient', N'OrderDate', N'申请住院日期', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZysltgToPatient', N'VisitNo', N'入院导诊编号', 4, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZysltgToPatient', N'H5Url', N'浏览地址', 5, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid, Kind) VALUES ('ZyzryysljjToOutAdmin', '住院转诊转入医院受理拒绝，给转出医院管理员', '{OutHospitalName}转诊办医生您好，本院在{RequestTime}有一条住院转诊申请，转入医院{InHospitalName}，患者姓名为{PatientName}，初步诊断为{FirstDiagnosis}，申请住院日期为{OrderDate}，对方医院已拒接该申请，请知晓。', NULL, NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZyzryysljjToOutAdmin', N'OutHospitalName', N'转出医院', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZyzryysljjToOutAdmin', N'RequestTime', N'申请时间', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZyzryysljjToOutAdmin', N'InHospitalName', N'转入医院', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZyzryysljjToOutAdmin', N'PatientName', N'患者姓名', 4, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZyzryysljjToOutAdmin', N'FirstDiagnosis', N'初步诊断', 5, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZyzryysljjToOutAdmin', N'OrderDate', N'申请住院日期', 6, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid, Kind) VALUES ('ZyzrsljjToPatient', '住院转诊转入医院受理拒绝，给患者', '{PatientName}您好，你有一条住院转诊申请审核不通过，转入医院{InHospitalName}，申请住院日期为{OrderDate}，请查看导诊页面，地址{H5Url}', NULL, NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZyzrsljjToPatient', N'PatientName', N'患者姓名', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZyzrsljjToPatient', N'InHospitalName', N'转入医院', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZyzrsljjToPatient', N'OrderDate', N'申请住院日期', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZyzrsljjToPatient', N'H5Url', N'浏览地址', 4, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid, Kind) VALUES ('ZylyToOutAdmin', '住院转诊履约，给转出医院管理员', '{OutHospitalName}转诊办医生您好，本院在{RequestTime}有一条住院转诊申请，转入医院{InHospitalName}，患者姓名为{PatientName}，初步诊断为{FirstDiagnosis}，申请住院日期为{OrderDate}，该病人已经履约，请知晓。', NULL, NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZylyToOutAdmin', N'OutHospitalName', N'转出医院', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZylyToOutAdmin', N'RequestTime', N'申请时间', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZylyToOutAdmin', N'InHospitalName', N'转入医院', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZylyToOutAdmin', N'PatientName', N'患者姓名', 4, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZylyToOutAdmin', N'FirstDiagnosis', N'初步诊断', 5, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZylyToOutAdmin', N'OrderDate', N'申请住院日期', 6, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid, Kind) VALUES ('MzToPatientButt', '门诊转诊申请，给患者 对接号源的', '{PatientName} {PatientSex}，您已预约了{HospitalName} {OfficeName} {DoctorName} {OrderDate}  {TimeRange}的就诊号，请携带好您的医保卡或者就诊卡，以及身份证等有效证件，按约定时间及时前往医院门诊部大厅自助取号机或者挂号窗口，取号就诊。', NULL, NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'MzToPatientButt', N'PatientName', N'患者姓名', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'MzToPatientButt', N'PatientSex', N'患者性别', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'MzToPatientButt', N'HospitalName', N'预约医院', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'MzToPatientButt', N'OfficeName', N'预约科室', 4, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'MzToPatientButt', N'DoctorName', N'医生姓名', 5, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'MzToPatientButt', N'OrderDate', N'预约日期', 6, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'MzToPatientButt', N'TimeRange', N'预约时间段', 7, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid, Kind) VALUES ('MzToPatientNoButt', '门诊转诊申请，给患者 没有对接号源的', '{PatientName}{PatientSex}，您已预约了{HospitalName}的就诊号，请携带好您的医保卡或者就诊卡，以及身份证等有效证件，按约定时间及时前往医院门诊部大厅自助取号机或者挂号窗口，取号就诊。', NULL, NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'MzToPatientNoButt', N'PatientName', N'患者姓名', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'MzToPatientNoButt', N'PatientSex', N'患者性别', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'MzToPatientNoButt', N'HospitalName', N'预约医院', 3, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid, Kind) VALUES ('WaitMsgToPatient', '住院转诊转入医院受理等待处理，给患者', '{PatientName}您好，您预约{InHospitalName}的住院申请已被接受，医院将尽快为您安排住院日期，请耐心等待！', NULL, NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'WaitMsgToPatient', N'PatientName', N'患者姓名', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'WaitMsgToPatient', N'InHospitalName', N'转入医院', 2, MAX(ID) FROM SmsTemplate;


INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid, Kind) VALUES ('MzqxToPatientButt', '门诊转诊取消，给患者 对接号源的', '{PatientName}{PatientSex}，您预约的{HospitalName}{OfficeName}{DoctorName}{OrderDate} {TimeRange}的门诊，已被取消，请您谅解！', NULL, NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'MzqxToPatientButt', N'PatientName', N'患者姓名', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'MzqxToPatientButt', N'PatientSex', N'患者性别', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'MzqxToPatientButt', N'HospitalName', N'门诊医院', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'MzqxToPatientButt', N'OfficeName', N'预约科室', 4, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'MzqxToPatientButt', N'DoctorName', N'医生姓名', 5, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'MzqxToPatientButt', N'OrderDate', N'门诊日期', 6, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'MzqxToPatientButt', N'TimeRange', N'门诊时段', 7, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid, Kind) VALUES ('MzqxToPatientNoButt', '门诊转诊取消，给患者 没有对接号源的', '{PatientName}{PatientSex}，您预约的{HospitalName}{OrderDate}的门诊，已被取消，请您谅解！', NULL, NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'MzqxToPatientNoButt', N'PatientName', N'患者姓名', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'MzqxToPatientNoButt', N'PatientSex', N'患者性别', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'MzqxToPatientNoButt', N'HospitalName', N'门诊医院', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'MzqxToPatientNoButt', N'OrderDate', N'门诊日期', 4, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid, Kind) VALUES ('ZysqfbhToPatient', '住院申请方驳回给患者发送', '{PatientName}，您预约的{InHospitalName}{OrderDate}的住院，已被{OutHospitalName}驳回，请您谅解！', NULL, NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZysqfbhToPatient', N'PatientName', N'患者姓名', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZysqfbhToPatient', N'InHospitalName', N'转入医院', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZysqfbhToPatient', N'OrderDate', N'住院日期', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ZysqfbhToPatient', N'OutHospitalName', N'转出医院', 4, MAX(ID) FROM SmsTemplate;

INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid, Kind) VALUES ('QxzysqToPatient', '转出和接收方取消住院给患者发送', '{PatientName}，您预约的{InHospitalName}{OrderDate}的住院，已被取消，请您谅解！', NULL, NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'QxzysqToPatient', N'PatientName', N'患者姓名', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'QxzysqToPatient', N'InHospitalName', N'转入医院', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'QxzysqToPatient', N'OrderDate', N'住院日期', 3, MAX(ID) FROM SmsTemplate;

--  ****************************  双向转诊 的短信模板 以上 **************************************

-- 20181016
-- 运营
INSERT INTO SmsTemplate (TemplateCode, TemplaeName, Content, ThirdTemplateId, ServiceCenterId, InstitutionGuid, Kind) VALUES ('ServiceExpirationReminder', '服务时间到期提醒', '尊敬的{InstitutionlName}管理员，您在{CloudSystemName}上的{TypeName}将于{EndDate}过期，请及时处理。', NULL, NULL, NULL, NULL);
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ServiceExpirationReminder', N'InstitutionlName', N'医院名称', 1, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ServiceExpirationReminder', N'CloudSystemName', N'影像云名称', 2, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ServiceExpirationReminder', N'TypeName', N'服务名称', 3, MAX(ID) FROM SmsTemplate;
INSERT INTO SmsTemplatePara (TemplateCode, ParaCode, ParaName, SortNo, TemplateId )  SELECT  'ServiceExpirationReminder', N'EndDate', N'到期时间', 4, MAX(ID) FROM SmsTemplate;


COMMIT;















