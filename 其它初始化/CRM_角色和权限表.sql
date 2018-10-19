
-- ��ɫ��
--TRUNCATE TABLE CustomerRole; 

INSERT INTO CustomerRole (Name, Active, IsSystemRole, SystemName) VALUES ('ϵͳ����Ա',1,1,'ϵͳ����Ա');
INSERT INTO CustomerRole (Name, Active, IsSystemRole, SystemName) VALUES ('Registered',1,1,'Registered');
INSERT INTO CustomerRole (Name, Active, IsSystemRole, SystemName) VALUES ('Guests',1,1,'Guests');
INSERT INTO CustomerRole (Name, Active, IsSystemRole, SystemName) VALUES ('ҽ��',1,1,'ҽ��');
INSERT INTO CustomerRole (Name, Active, IsSystemRole, SystemName) VALUES ('�����û�',1,1,'�����û�');
INSERT INTO CustomerRole (Name, Active, IsSystemRole, SystemName) VALUES ('��ʦ',1,1,'��ʦ');
INSERT INTO CustomerRole (Name, Active, IsSystemRole, SystemName) VALUES ('ѧԱ',1,1,'ѧԱ');

INSERT INTO CustomerRole (Name, Active, IsSystemRole, SystemName) VALUES ('ƽ̨����Ա',1,1,'ƽ̨����Ա');
INSERT INTO CustomerRole (Name, Active, IsSystemRole, SystemName) VALUES ('ƽ̨��ά��Ա',1,1,'ƽ̨��ά��Ա');
INSERT INTO CustomerRole (Name, Active, IsSystemRole, SystemName) VALUES ('ƽ̨�ͷ���Ա',1,1,'ƽ̨�ͷ���Ա');
INSERT INTO CustomerRole (Name, Active, IsSystemRole, SystemName) VALUES ('��������Ա',1,1,'��������Ա');
INSERT INTO CustomerRole (Name, Active, IsSystemRole, SystemName) VALUES ('���������ά��Ա',1,1,'���������ά��Ա');
INSERT INTO CustomerRole (Name, Active, IsSystemRole, SystemName) VALUES ('��ѧ���Ľ�ѧ����Ա',1,1,'��ѧ���Ľ�ѧ����Ա');
INSERT INTO CustomerRole (Name, Active, IsSystemRole, SystemName) VALUES( '����������Ա', 1, 1, '����������Ա');
INSERT INTO CustomerRole (Name, Active, IsSystemRole, SystemName) VALUES( '�̸̽�����', 1, 1, '�̸̽�����');
INSERT INTO CustomerRole (Name, Active, IsSystemRole, SystemName) VALUES( '�ʿ���Ա', 1, 1, '�ʿ���Ա');
INSERT INTO CustomerRole (Name, Active, IsSystemRole, SystemName) VALUES( '�ʿع���Ա', 1, 1, '�ʿع���Ա');

-- Ȩ�ޱ�
-- TRUNCATE TABLE PermissionRecord; 

INSERT INTO PermissionRecord (Name,SystemName,Category) VALUES ('���ʺ�̨����','AdministratorAccessPanel','Administrator');
INSERT INTO PermissionRecord (Name,SystemName,Category) VALUES ('����Զ��ҽ��Эͬҽ������','RemoteMedDoctorAccessPanel','RemoteMed');
INSERT INTO PermissionRecord (Name,SystemName,Category) VALUES ('���ʹ�������ҽ������','PublilcHealthDoctorAccessPanel','PublilcHealth');
INSERT INTO PermissionRecord (Name,SystemName,Category) VALUES ('���ʹ���������������','PublilcHealthPatientAccessPanel','PublilcHealth');
INSERT INTO PermissionRecord (Name,SystemName,Category) VALUES ('����ƽ̨��������','PlatManagerAccessPanel','PlatManager');
INSERT INTO PermissionRecord (Name,SystemName,Category) VALUES ('����ƽ̨��ά����','PlatOperationAccessPanel','PlatOperation');
INSERT INTO PermissionRecord (Name,SystemName,Category) VALUES ('����ƽ̨�ͷ�����','PlatCustomerServiceAccessPanel','PlatCustomerService');
INSERT INTO PermissionRecord (Name,SystemName,Category) VALUES ('���ʻ�����������','InstitutionManagerAccessPanel','InstitutionManager');
INSERT INTO PermissionRecord (Name,SystemName,Category) VALUES ('���������ά����','ServiceOperationAccessPanel','ServiceOperation');
INSERT INTO PermissionRecord (Name,SystemName,Category) VALUES ('�����쵼����','LeaderAccessPanel','Leader');
INSERT INTO PermissionRecord (Name,SystemName,Category) VALUES ('����Զ��ҽѧ������������','TeachAccessPanel','Teach');
INSERT INTO PermissionRecord (Name,SystemName,Category) VALUES ('Զ�̽���','JoinRemoteTeach','Teach');
INSERT INTO PermissionRecord (Name,SystemName,Category) VALUES ('Զ��ѧϰ','JoinRemoteStudy','Teach');
INSERT INTO PermissionRecord (Name,SystemName,Category) VALUES ('Զ�̽�������','TeachManager','Teach');
INSERT INTO PermissionRecord (Name,SystemName,Category) VALUES ('�̽���Ŀ���','ConEduAudit','Teach');
INSERT INTO PermissionRecord (Name,SystemName,Category) VALUES ('�����ʿ�����','QualityAccessPanel','Quality');
INSERT INTO PermissionRecord (Name,SystemName,Category) VALUES ('�����ʿع�������','QualityManagerAccessPanel','Quality');


-- ��ɫ��Ȩ�޹�����

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


