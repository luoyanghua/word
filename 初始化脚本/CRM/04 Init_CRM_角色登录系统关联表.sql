/*============================================================================================*/
/* 数据初始化                                                                                 */
/* UpdateDate:2017-06-20                                                                      */
/* Author:Shentt                                                                              */
/* 共1项：角色登录系统关联表  Role_Category_Mapping                                           */
/* CRM 数据库                                                                                 */
/*============================================================================================*/



-- ******************* Role_Category_Mapping ************************


INSERT INTO Role_Category_Mapping (CustomerRole_Id, Category) SELECT ID, N'CRM' FROM CustomerRole WHERE Name ='系统管理员';

INSERT INTO Role_Category_Mapping (CustomerRole_Id, Category) SELECT ID, N'CRM' FROM CustomerRole WHERE Name ='医生';
INSERT INTO Role_Category_Mapping (CustomerRole_Id, Category) SELECT ID, N'ImageArchive' FROM CustomerRole WHERE Name ='医生';
INSERT INTO Role_Category_Mapping (CustomerRole_Id, Category) SELECT ID, N'RemoteMed' FROM CustomerRole WHERE Name ='医生';
INSERT INTO Role_Category_Mapping (CustomerRole_Id, Category) SELECT ID, N'PublilcHealth' FROM CustomerRole WHERE Name ='医生';

INSERT INTO Role_Category_Mapping (CustomerRole_Id, Category) SELECT ID, N'CRM' FROM CustomerRole WHERE Name ='公众用户';
INSERT INTO Role_Category_Mapping (CustomerRole_Id, Category) SELECT ID, N'ImageArchive' FROM CustomerRole WHERE Name ='公众用户';
INSERT INTO Role_Category_Mapping (CustomerRole_Id, Category) SELECT ID, N'PublilcHealth' FROM CustomerRole WHERE Name ='公众用户';

INSERT INTO Role_Category_Mapping (CustomerRole_Id, Category) SELECT ID, N'CRM' FROM CustomerRole WHERE Name ='讲师';
INSERT INTO Role_Category_Mapping (CustomerRole_Id, Category) SELECT ID, N'Teach' FROM CustomerRole WHERE Name ='讲师';

INSERT INTO Role_Category_Mapping (CustomerRole_Id, Category) SELECT ID, N'CRM' FROM CustomerRole WHERE Name ='学员';
INSERT INTO Role_Category_Mapping (CustomerRole_Id, Category) SELECT ID, N'Teach' FROM CustomerRole WHERE Name ='学员';

INSERT INTO Role_Category_Mapping (CustomerRole_Id, Category) SELECT ID, N'CRM' FROM CustomerRole WHERE Name ='教学管理员';
INSERT INTO Role_Category_Mapping (CustomerRole_Id, Category) SELECT ID, N'Teach' FROM CustomerRole WHERE Name ='教学管理员';

INSERT INTO Role_Category_Mapping (CustomerRole_Id, Category) SELECT ID, N'CRM' FROM CustomerRole WHERE Name ='继教负责人';
INSERT INTO Role_Category_Mapping (CustomerRole_Id, Category) SELECT ID, N'Teach' FROM CustomerRole WHERE Name ='继教负责人';

INSERT INTO Role_Category_Mapping (CustomerRole_Id, Category) SELECT ID, N'CRM' FROM CustomerRole WHERE Name ='运营团队管理者';
INSERT INTO Role_Category_Mapping (CustomerRole_Id, Category) SELECT ID, N'PlatManage' FROM CustomerRole WHERE Name ='运营团队管理者';
INSERT INTO Role_Category_Mapping (CustomerRole_Id, Category) SELECT ID, N'Leader' FROM CustomerRole WHERE Name ='运营团队管理者';

INSERT INTO Role_Category_Mapping (CustomerRole_Id, Category) SELECT ID, N'CRM' FROM CustomerRole WHERE Name ='运营管理人员';
INSERT INTO Role_Category_Mapping (CustomerRole_Id, Category) SELECT ID, N'PlatManage' FROM CustomerRole WHERE Name ='运营管理人员';
INSERT INTO Role_Category_Mapping (CustomerRole_Id, Category) SELECT ID, N'Leader' FROM CustomerRole WHERE Name ='运营管理人员';
INSERT INTO Role_Category_Mapping (CustomerRole_Id, Category) SELECT ID, N'RemoteMonitor' FROM CustomerRole WHERE Name ='运营管理人员';

INSERT INTO Role_Category_Mapping (CustomerRole_Id, Category) SELECT ID, N'CRM' FROM CustomerRole WHERE Name ='运营服务人员';
INSERT INTO Role_Category_Mapping (CustomerRole_Id, Category) SELECT ID, N'PlatManage' FROM CustomerRole WHERE Name ='运营服务人员';
INSERT INTO Role_Category_Mapping (CustomerRole_Id, Category) SELECT ID, N'Leader' FROM CustomerRole WHERE Name ='运营服务人员';

INSERT INTO Role_Category_Mapping (CustomerRole_Id, Category) SELECT ID, N'CRM' FROM CustomerRole WHERE Name ='服务质量监督人员';
INSERT INTO Role_Category_Mapping (CustomerRole_Id, Category) SELECT ID, N'PlatManage' FROM CustomerRole WHERE Name ='服务质量监督人员';

INSERT INTO Role_Category_Mapping (CustomerRole_Id, Category) SELECT ID, N'CRM' FROM CustomerRole WHERE Name ='审计管理员';
INSERT INTO Role_Category_Mapping (CustomerRole_Id, Category) SELECT ID, N'PlatManage' FROM CustomerRole WHERE Name ='审计管理员';

INSERT INTO Role_Category_Mapping (CustomerRole_Id, Category) SELECT ID, N'CRM' FROM CustomerRole WHERE Name ='客服人员';

INSERT INTO Role_Category_Mapping (CustomerRole_Id, Category) SELECT ID, N'CRM' FROM CustomerRole WHERE Name ='机构管理员';
INSERT INTO Role_Category_Mapping (CustomerRole_Id, Category) SELECT ID, N'InstitutionManager' FROM CustomerRole WHERE Name ='机构管理员';
INSERT INTO Role_Category_Mapping (CustomerRole_Id, Category) SELECT ID, N'ImageArchive' FROM CustomerRole WHERE Name ='机构管理员';

INSERT INTO Role_Category_Mapping (CustomerRole_Id, Category) SELECT ID, N'CRM' FROM CustomerRole WHERE Name ='服务中心运维人员';
INSERT INTO Role_Category_Mapping (CustomerRole_Id, Category) SELECT ID, N'InstitutionManager' FROM CustomerRole WHERE Name ='服务中心运维人员';

INSERT INTO Role_Category_Mapping (CustomerRole_Id, Category) SELECT ID, N'CRM' FROM CustomerRole WHERE Name ='影像云主管领导';
INSERT INTO Role_Category_Mapping (CustomerRole_Id, Category) SELECT ID, N'Leader' FROM CustomerRole WHERE Name ='影像云主管领导';

INSERT INTO Role_Category_Mapping (CustomerRole_Id, Category) SELECT ID, N'CRM' FROM CustomerRole WHERE Name ='影像云分管领导';
INSERT INTO Role_Category_Mapping (CustomerRole_Id, Category) SELECT ID, N'Leader' FROM CustomerRole WHERE Name ='影像云分管领导';

INSERT INTO Role_Category_Mapping (CustomerRole_Id, Category) SELECT ID, N'CRM' FROM CustomerRole WHERE Name ='行政领导';
INSERT INTO Role_Category_Mapping (CustomerRole_Id, Category) SELECT ID, N'Leader' FROM CustomerRole WHERE Name ='行政领导';

INSERT INTO Role_Category_Mapping (CustomerRole_Id, Category) SELECT ID, N'CRM' FROM CustomerRole WHERE Name ='机构领导';
INSERT INTO Role_Category_Mapping (CustomerRole_Id, Category) SELECT ID, N'Leader' FROM CustomerRole WHERE Name ='机构领导';

INSERT INTO Role_Category_Mapping (CustomerRole_Id, Category) SELECT ID, N'CRM' FROM CustomerRole WHERE Name ='质控人员';
INSERT INTO Role_Category_Mapping (CustomerRole_Id, Category) SELECT ID, N'Quality' FROM CustomerRole WHERE Name ='质控人员';

INSERT INTO Role_Category_Mapping (CustomerRole_Id, Category) SELECT ID, N'CRM' FROM CustomerRole WHERE Name ='质控管理员';
INSERT INTO Role_Category_Mapping (CustomerRole_Id, Category) SELECT ID, N'Quality' FROM CustomerRole WHERE Name ='质控管理员';

INSERT INTO Role_Category_Mapping (CustomerRole_Id, Category) SELECT ID, N'CRM' FROM CustomerRole WHERE Name ='质控联系人';
INSERT INTO Role_Category_Mapping (CustomerRole_Id, Category) SELECT ID, N'Quality' FROM CustomerRole WHERE Name ='质控联系人';

INSERT INTO Role_Category_Mapping (CustomerRole_Id, Category) SELECT ID, N'CRM' FROM CustomerRole WHERE Name ='服务中心助理';

INSERT INTO Role_Category_Mapping (CustomerRole_Id, Category) SELECT ID, N'CRM' FROM CustomerRole WHERE Name ='服务中心导诊人员';
INSERT INTO Role_Category_Mapping (CustomerRole_Id, Category) SELECT ID, N'PublilcHealth' FROM CustomerRole WHERE Name ='服务中心导诊人员';

INSERT INTO Role_Category_Mapping (CustomerRole_Id, Category) SELECT ID, N'CRM' FROM CustomerRole WHERE Name ='监控管理员';
INSERT INTO Role_Category_Mapping (CustomerRole_Id, Category) SELECT ID, N'RemoteMonitor' FROM CustomerRole WHERE Name ='监控管理员';

INSERT INTO Role_Category_Mapping (CustomerRole_Id, Category) SELECT ID, N'CRM' FROM CustomerRole WHERE Name ='监控维护人员';
INSERT INTO Role_Category_Mapping (CustomerRole_Id, Category) SELECT ID, N'RemoteMonitor' FROM CustomerRole WHERE Name ='监控维护人员';

INSERT INTO Role_Category_Mapping (CustomerRole_Id, Category) SELECT ID, N'CRM' FROM CustomerRole WHERE Name ='医护人员';
INSERT INTO Role_Category_Mapping (CustomerRole_Id, Category) SELECT ID, N'RemoteMed' FROM CustomerRole WHERE Name ='医护人员';
INSERT INTO Role_Category_Mapping (CustomerRole_Id, Category) SELECT ID, N'PublilcHealth' FROM CustomerRole WHERE Name ='医护人员';




