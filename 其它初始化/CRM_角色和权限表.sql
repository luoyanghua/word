
-- 角色表
--TRUNCATE TABLE CustomerRole; 

INSERT INTO CustomerRole (Name, Active, IsSystemRole, SystemName) VALUES ('系统管理员',1,1,'系统管理员');
INSERT INTO CustomerRole (Name, Active, IsSystemRole, SystemName) VALUES ('Registered',1,1,'Registered');
INSERT INTO CustomerRole (Name, Active, IsSystemRole, SystemName) VALUES ('Guests',1,1,'Guests');
INSERT INTO CustomerRole (Name, Active, IsSystemRole, SystemName) VALUES ('医生',1,1,'医生');
INSERT INTO CustomerRole (Name, Active, IsSystemRole, SystemName) VALUES ('大众用户',1,1,'大众用户');
INSERT INTO CustomerRole (Name, Active, IsSystemRole, SystemName) VALUES ('讲师',1,1,'讲师');
INSERT INTO CustomerRole (Name, Active, IsSystemRole, SystemName) VALUES ('学员',1,1,'学员');

INSERT INTO CustomerRole (Name, Active, IsSystemRole, SystemName) VALUES ('平台管理员',1,1,'平台管理员');
INSERT INTO CustomerRole (Name, Active, IsSystemRole, SystemName) VALUES ('平台运维人员',1,1,'平台运维人员');
INSERT INTO CustomerRole (Name, Active, IsSystemRole, SystemName) VALUES ('平台客服人员',1,1,'平台客服人员');
INSERT INTO CustomerRole (Name, Active, IsSystemRole, SystemName) VALUES ('机构管理员',1,1,'机构管理员');
INSERT INTO CustomerRole (Name, Active, IsSystemRole, SystemName) VALUES ('诊断中心运维人员',1,1,'诊断中心运维人员');
INSERT INTO CustomerRole (Name, Active, IsSystemRole, SystemName) VALUES ('教学中心教学管理员',1,1,'教学中心教学管理员');
INSERT INTO CustomerRole (Name, Active, IsSystemRole, SystemName) VALUES( '行政管理人员', 1, 1, '行政管理人员');
INSERT INTO CustomerRole (Name, Active, IsSystemRole, SystemName) VALUES( '继教负责人', 1, 1, '继教负责人');
INSERT INTO CustomerRole (Name, Active, IsSystemRole, SystemName) VALUES( '质控人员', 1, 1, '质控人员');
INSERT INTO CustomerRole (Name, Active, IsSystemRole, SystemName) VALUES( '质控管理员', 1, 1, '质控管理员');

-- 权限表
-- TRUNCATE TABLE PermissionRecord; 

INSERT INTO PermissionRecord (Name,SystemName,Category) VALUES ('访问后台管理','AdministratorAccessPanel','Administrator');
INSERT INTO PermissionRecord (Name,SystemName,Category) VALUES ('访问远程医疗协同医生中心','RemoteMedDoctorAccessPanel','RemoteMed');
INSERT INTO PermissionRecord (Name,SystemName,Category) VALUES ('访问公共健康医生中心','PublilcHealthDoctorAccessPanel','PublilcHealth');
INSERT INTO PermissionRecord (Name,SystemName,Category) VALUES ('访问公共健康患者中心','PublilcHealthPatientAccessPanel','PublilcHealth');
INSERT INTO PermissionRecord (Name,SystemName,Category) VALUES ('访问平台管理中心','PlatManagerAccessPanel','PlatManager');
INSERT INTO PermissionRecord (Name,SystemName,Category) VALUES ('访问平台运维中心','PlatOperationAccessPanel','PlatOperation');
INSERT INTO PermissionRecord (Name,SystemName,Category) VALUES ('访问平台客服中心','PlatCustomerServiceAccessPanel','PlatCustomerService');
INSERT INTO PermissionRecord (Name,SystemName,Category) VALUES ('访问机构管理中心','InstitutionManagerAccessPanel','InstitutionManager');
INSERT INTO PermissionRecord (Name,SystemName,Category) VALUES ('访问诊断运维中心','ServiceOperationAccessPanel','ServiceOperation');
INSERT INTO PermissionRecord (Name,SystemName,Category) VALUES ('访问领导中心','LeaderAccessPanel','Leader');
INSERT INTO PermissionRecord (Name,SystemName,Category) VALUES ('访问远程医学教育管理中心','TeachAccessPanel','Teach');
INSERT INTO PermissionRecord (Name,SystemName,Category) VALUES ('远程教育','JoinRemoteTeach','Teach');
INSERT INTO PermissionRecord (Name,SystemName,Category) VALUES ('远程学习','JoinRemoteStudy','Teach');
INSERT INTO PermissionRecord (Name,SystemName,Category) VALUES ('远程教育管理','TeachManager','Teach');
INSERT INTO PermissionRecord (Name,SystemName,Category) VALUES ('继教项目审核','ConEduAudit','Teach');
INSERT INTO PermissionRecord (Name,SystemName,Category) VALUES ('访问质控中心','QualityAccessPanel','Quality');
INSERT INTO PermissionRecord (Name,SystemName,Category) VALUES ('访问质控管理中心','QualityManagerAccessPanel','Quality');


-- 角色和权限关联表

INSERT INTO PERMISSIONRECORD_ROLE_MAPPING (PermissionRecord_Id, CustomerRole_Id) VALUES(1,1);
INSERT INTO PERMISSIONRECORD_ROLE_MAPPING (PermissionRecord_Id, CustomerRole_Id) VALUES(2,4);
INSERT INTO PERMISSIONRECORD_ROLE_MAPPING (PermissionRecord_Id, CustomerRole_Id) VALUES(3,4);
INSERT INTO PERMISSIONRECORD_ROLE_MAPPING (PermissionRecord_Id, CustomerRole_Id) VALUES(4,5);
INSERT INTO PERMISSIONRECORD_ROLE_MAPPING (PermissionRecord_Id, CustomerRole_Id) VALUES(5,8);
INSERT INTO PERMISSIONRECORD_ROLE_MAPPING (PermissionRecord_Id, CustomerRole_Id) VALUES(6,9);
INSERT INTO PERMISSIONRECORD_ROLE_MAPPING (PermissionRecord_Id, CustomerRole_Id) VALUES(7,10);
INSERT INTO PERMISSIONRECORD_ROLE_MAPPING (PermissionRecord_Id, CustomerRole_Id) VALUES(8,11);
INSERT INTO PERMISSIONRECORD_ROLE_MAPPING (PermissionRecord_Id, CustomerRole_Id) VALUES(9,12);
INSERT INTO PERMISSIONRECORD_ROLE_MAPPING (PermissionRecord_Id, CustomerRole_Id) VALUES(10,14);
INSERT INTO PERMISSIONRECORD_ROLE_MAPPING (PermissionRecord_Id, CustomerRole_Id) VALUES(11,6);
INSERT INTO PERMISSIONRECORD_ROLE_MAPPING (PermissionRecord_Id, CustomerRole_Id) VALUES(11,7);
INSERT INTO PERMISSIONRECORD_ROLE_MAPPING (PermissionRecord_Id, CustomerRole_Id) VALUES(11,13);
INSERT INTO PERMISSIONRECORD_ROLE_MAPPING (PermissionRecord_Id, CustomerRole_Id) VALUES(11,15);
INSERT INTO PERMISSIONRECORD_ROLE_MAPPING (PermissionRecord_Id, CustomerRole_Id) VALUES(12,6);
INSERT INTO PERMISSIONRECORD_ROLE_MAPPING (PermissionRecord_Id, CustomerRole_Id) VALUES(13,7);
INSERT INTO PERMISSIONRECORD_ROLE_MAPPING (PermissionRecord_Id, CustomerRole_Id) VALUES(14,13);
INSERT INTO PERMISSIONRECORD_ROLE_MAPPING (PermissionRecord_Id, CustomerRole_Id) VALUES(15,15);
INSERT INTO PERMISSIONRECORD_ROLE_MAPPING (PermissionRecord_Id, CustomerRole_Id) VALUES(16,16);
INSERT INTO PERMISSIONRECORD_ROLE_MAPPING (PermissionRecord_Id, CustomerRole_Id) VALUES(17,17);


