-- �������ݣ�ֻ��ִ��һ��

-- ********************** ������������ġ�����ҽԺ*********************

-- Institution ������
INSERT INTO Institution(InstitutionGuid,Kind,InstitutionlCode,InstitutionlName,PersonName,IsAudit)VALUES('94117694-8ecf-4792-9a86-3aff306b6d12','1','15113','�Ϻ���ͨ��ѧҽѧԺ�������ҽԺ','��˼',1);
INSERT INTO Institution(InstitutionGuid,Kind,InstitutionlCode,InstitutionlName,PersonName,IsAudit)VALUES('1b43fd4c-fb19-4078-859f-686ad95a92f3','1','15114','�Ϻ���ͨ��ѧҽѧԺ�����»�ҽԺ','����',1);
INSERT INTO Institution(InstitutionGuid,Kind,InstitutionlCode,InstitutionlName,PersonName,IsAudit)VALUES('018db453-d9c0-45ec-984c-05c5430bc2d5','1','15118','�Ϻ���ͨ��ѧҽѧԺ�����ʼ�ҽԺ','����',1);
INSERT INTO Institution(InstitutionGuid,Kind,InstitutionlCode,InstitutionlName,PersonName,IsAudit)VALUES('e4ffb321-a7d4-496d-b1cd-7f9d373906bd','1','17273','���������ҽԺ','����',1);

INSERT INTO Institution(InstitutionGuid,Kind,InstitutionlCode,InstitutionlName,PersonName,IsAudit)VALUES('24a960a1-de24-4ae8-9add-55ba51e0a00c','1','17330','ƽ���е�һ����ҽԺ','ƽ��',1);
INSERT INTO Institution(InstitutionGuid,Kind,InstitutionlCode,InstitutionlName,PersonName,IsAudit)VALUES('b474371a-13fc-4c7f-8e2c-6c58f787c115','1','17266','�����е�һ����ҽԺ','����',1);
INSERT INTO Institution(InstitutionGuid,Kind,InstitutionlCode,InstitutionlName,PersonName,IsAudit)VALUES('7dcf99d3-ece1-4cc8-b9ee-c46d3903d7dd','1','2329','�����ص�һ����ҽԺ','����',1);
INSERT INTO Institution(InstitutionGuid,Kind,InstitutionlCode,InstitutionlName,PersonName,IsAudit)VALUES('820f2a3c-b723-43ea-9bc8-45d597207d87','1','15136','���������ҽԺ','����',1);

-- ServiceCenter �������
INSERT INTO ServiceCenter(InstitutionGuid,Kind,ServiceCenterName,HospitalName,MemberHospitalCnt,IsAudit,IsDisplay,IsRecommend,IsTop,`Order`)VALUES('94117694-8ecf-4792-9a86-3aff306b6d12','0','���ҽԺ�������','�Ϻ���ͨ��ѧҽѧԺ�������ҽԺ', 5, 1, 1, 1, 0,1);

-- ������Ŀ�ͨ�ķ���
INSERT INTO ServiceOpen(ServiceCenterId,TypeCode,TypeName,BeginDate,EndDate,IsAudit)VALUES ( N'1', N'PACSDiagnosis', N'Ӱ�����','2016-08-03 00:00:00','2026-08-03 00:00:00', 1);
INSERT INTO ServiceOpen(ServiceCenterId,TypeCode,TypeName,BeginDate,EndDate,IsAudit)VALUES ( N'1', N'ECGDiagnosis', N'�ĵ����','2016-08-03 00:00:00','2026-08-03 00:00:00', 1);
INSERT INTO ServiceOpen(ServiceCenterId,TypeCode,TypeName,BeginDate,EndDate,IsAudit)VALUES ( N'1', N'XISDiagnosis', N'�������','2016-08-03 00:00:00','2026-08-03 00:00:00', 1);
INSERT INTO ServiceOpen(ServiceCenterId,TypeCode,TypeName,BeginDate,EndDate,IsAudit)VALUES ( N'1', N'PISDiagnosis', N'�������','2016-08-03 00:00:00','2026-08-03 00:00:00', 1);
INSERT INTO ServiceOpen(ServiceCenterId,TypeCode,TypeName,BeginDate,EndDate,IsAudit)VALUES ( N'1', N'PACSConsult', N'Ӱ�����','2016-08-03 00:00:00','2026-08-03 00:00:00', 1);
INSERT INTO ServiceOpen(ServiceCenterId,TypeCode,TypeName,BeginDate,EndDate,IsAudit)VALUES ( N'1', N'ECGConsult', N'�ĵ����','2016-08-03 00:00:00','2026-08-03 00:00:00', 1);
INSERT INTO ServiceOpen(ServiceCenterId,TypeCode,TypeName,BeginDate,EndDate,IsAudit)VALUES ( N'1', N'PISConsult', N'�������','2016-08-03 00:00:00','2026-08-03 00:00:00', 1);
INSERT INTO ServiceOpen(ServiceCenterId,TypeCode,TypeName,BeginDate,EndDate,IsAudit)VALUES ( N'1', N'ClinicConsult', N'�ٴ�����','2016-08-03 00:00:00','2026-08-03 00:00:00', 1);
INSERT INTO ServiceOpen(ServiceCenterId,TypeCode,TypeName,BeginDate,EndDate,IsAudit)VALUES ( N'1', N'RemoteClinic', N'Զ������','2016-08-03 00:00:00','2026-08-03 00:00:00', 1);
INSERT INTO ServiceOpen(ServiceCenterId,TypeCode,TypeName,BeginDate,EndDate,IsAudit)VALUES ( N'1', N'ApplyAsk', N'Զ������','2016-08-03 00:00:00','2026-08-03 00:00:00', 1);
INSERT INTO ServiceOpen(ServiceCenterId,TypeCode,TypeName,BeginDate,EndDate,IsAudit)VALUES ( N'1', N'ApplyImage', N'Ӱ����ѯ','2016-08-03 00:00:00','2026-08-03 00:00:00', 1);


-- ServiceCenter �������
INSERT INTO ServiceCenter(InstitutionGuid,Kind,ServiceCenterName,HospitalName,MemberHospitalCnt,IsAudit,IsDisplay,IsRecommend,IsTop,`Order`)VALUES('1b43fd4c-fb19-4078-859f-686ad95a92f3','0','�»�ҽԺ�������','�Ϻ���ͨ��ѧҽѧԺ�����»�ҽԺ', 1,1, 1, 1, 0,2);

-- ������Ŀ�ͨ�ķ���
INSERT INTO ServiceOpen(ServiceCenterId,TypeCode,TypeName,BeginDate,EndDate,IsAudit)VALUES ( N'2', N'PACSDiagnosis', N'Ӱ�����','2016-08-03 00:00:00','2026-08-03 00:00:00', 1);
INSERT INTO ServiceOpen(ServiceCenterId,TypeCode,TypeName,BeginDate,EndDate,IsAudit)VALUES ( N'2', N'ECGDiagnosis', N'�ĵ����','2016-08-03 00:00:00','2026-08-03 00:00:00', 1);
INSERT INTO ServiceOpen(ServiceCenterId,TypeCode,TypeName,BeginDate,EndDate,IsAudit)VALUES ( N'2', N'XISDiagnosis', N'�������','2016-08-03 00:00:00','2026-08-03 00:00:00', 1);
INSERT INTO ServiceOpen(ServiceCenterId,TypeCode,TypeName,BeginDate,EndDate,IsAudit)VALUES ( N'2', N'PISDiagnosis', N'�������','2016-08-03 00:00:00','2026-08-03 00:00:00', 1);
INSERT INTO ServiceOpen(ServiceCenterId,TypeCode,TypeName,BeginDate,EndDate,IsAudit)VALUES ( N'2', N'PACSConsult', N'Ӱ�����','2016-08-03 00:00:00','2026-08-03 00:00:00', 1);
INSERT INTO ServiceOpen(ServiceCenterId,TypeCode,TypeName,BeginDate,EndDate,IsAudit)VALUES ( N'2', N'ECGConsult', N'�ĵ����','2016-08-03 00:00:00','2026-08-03 00:00:00', 1);
INSERT INTO ServiceOpen(ServiceCenterId,TypeCode,TypeName,BeginDate,EndDate,IsAudit)VALUES ( N'2', N'PISConsult', N'�������','2016-08-03 00:00:00','2026-08-03 00:00:00', 1);
INSERT INTO ServiceOpen(ServiceCenterId,TypeCode,TypeName,BeginDate,EndDate,IsAudit)VALUES ( N'2', N'ClinicConsult', N'�ٴ�����','2016-08-03 00:00:00','2026-08-03 00:00:00', 1);
INSERT INTO ServiceOpen(ServiceCenterId,TypeCode,TypeName,BeginDate,EndDate,IsAudit)VALUES ( N'2', N'RemoteClinic', N'Զ������','2016-08-03 00:00:00','2026-08-03 00:00:00', 1);
INSERT INTO ServiceOpen(ServiceCenterId,TypeCode,TypeName,BeginDate,EndDate,IsAudit)VALUES ( N'2', N'ApplyAsk', N'Զ������','2016-08-03 00:00:00','2026-08-03 00:00:00', 1);
INSERT INTO ServiceOpen(ServiceCenterId,TypeCode,TypeName,BeginDate,EndDate,IsAudit)VALUES ( N'2', N'ApplyImage', N'Ӱ����ѯ','2016-08-03 00:00:00','2026-08-03 00:00:00', 1);

-- ServiceCenter �������
INSERT INTO ServiceCenter(InstitutionGuid,Kind,ServiceCenterName,HospitalName,MemberHospitalCnt,IsAudit,IsDisplay,IsRecommend,IsTop,`Order`)VALUES('018db453-d9c0-45ec-984c-05c5430bc2d5','0','�ʼ�ҽԺ�������','�Ϻ���ͨ��ѧҽѧԺ�����ʼ�ҽԺ', 2, 1,1, 1, 0,3);

-- ������Ŀ�ͨ�ķ���
INSERT INTO ServiceOpen(ServiceCenterId,TypeCode,TypeName,BeginDate,EndDate,IsAudit)VALUES ( N'3', N'PACSDiagnosis', N'Ӱ�����','2016-08-03 00:00:00','2026-08-03 00:00:00', 1);
INSERT INTO ServiceOpen(ServiceCenterId,TypeCode,TypeName,BeginDate,EndDate,IsAudit)VALUES ( N'3', N'ECGDiagnosis', N'�ĵ����','2016-08-03 00:00:00','2026-08-03 00:00:00', 1);
INSERT INTO ServiceOpen(ServiceCenterId,TypeCode,TypeName,BeginDate,EndDate,IsAudit)VALUES ( N'3', N'XISDiagnosis', N'�������','2016-08-03 00:00:00','2026-08-03 00:00:00', 1);
INSERT INTO ServiceOpen(ServiceCenterId,TypeCode,TypeName,BeginDate,EndDate,IsAudit)VALUES ( N'3', N'PISDiagnosis', N'�������','2016-08-03 00:00:00','2026-08-03 00:00:00', 1);
INSERT INTO ServiceOpen(ServiceCenterId,TypeCode,TypeName,BeginDate,EndDate,IsAudit)VALUES ( N'3', N'PACSConsult', N'Ӱ�����','2016-08-03 00:00:00','2026-08-03 00:00:00', 1);
INSERT INTO ServiceOpen(ServiceCenterId,TypeCode,TypeName,BeginDate,EndDate,IsAudit)VALUES ( N'3', N'ECGConsult', N'�ĵ����','2016-08-03 00:00:00','2026-08-03 00:00:00', 1);
INSERT INTO ServiceOpen(ServiceCenterId,TypeCode,TypeName,BeginDate,EndDate,IsAudit)VALUES ( N'3', N'PISConsult', N'�������','2016-08-03 00:00:00','2026-08-03 00:00:00', 1);
INSERT INTO ServiceOpen(ServiceCenterId,TypeCode,TypeName,BeginDate,EndDate,IsAudit)VALUES ( N'3', N'ClinicConsult', N'�ٴ�����','2016-08-03 00:00:00','2026-08-03 00:00:00', 1);
INSERT INTO ServiceOpen(ServiceCenterId,TypeCode,TypeName,BeginDate,EndDate,IsAudit)VALUES ( N'3', N'RemoteClinic', N'Զ������','2016-08-03 00:00:00','2026-08-03 00:00:00', 1);
INSERT INTO ServiceOpen(ServiceCenterId,TypeCode,TypeName,BeginDate,EndDate,IsAudit)VALUES ( N'3', N'ApplyAsk', N'Զ������','2016-08-03 00:00:00','2026-08-03 00:00:00', 1);
INSERT INTO ServiceOpen(ServiceCenterId,TypeCode,TypeName,BeginDate,EndDate,IsAudit)VALUES ( N'3', N'ApplyImage', N'Ӱ����ѯ','2016-08-03 00:00:00','2026-08-03 00:00:00', 1);


-- ServiceCenter �������
INSERT INTO ServiceCenter(InstitutionGuid,Kind,ServiceCenterName,HospitalName,MemberHospitalCnt,IsAudit,IsDisplay,IsRecommend,IsTop,`Order`)VALUES('e4ffb321-a7d4-496d-b1cd-7f9d373906bd','0','���������ҽԺ�������','���������ҽԺ', 1, 1,1, 1, 0,4);

-- ������Ŀ�ͨ�ķ���
INSERT INTO ServiceOpen(ServiceCenterId,TypeCode,TypeName,BeginDate,EndDate,IsAudit)VALUES ( N'4', N'PACSDiagnosis', N'Ӱ�����','2016-08-03 00:00:00','2026-08-03 00:00:00', 1);
INSERT INTO ServiceOpen(ServiceCenterId,TypeCode,TypeName,BeginDate,EndDate,IsAudit)VALUES ( N'4', N'PACSConsult', N'Ӱ�����','2016-08-03 00:00:00','2026-08-03 00:00:00', 1);
INSERT INTO ServiceOpen(ServiceCenterId,TypeCode,TypeName,BeginDate,EndDate,IsAudit)VALUES ( N'4', N'ClinicConsult', N'�ٴ�����','2016-08-03 00:00:00','2026-08-03 00:00:00', 1);
INSERT INTO ServiceOpen(ServiceCenterId,TypeCode,TypeName,BeginDate,EndDate,IsAudit)VALUES ( N'4', N'RemoteClinic', N'Զ������','2016-08-03 00:00:00','2026-08-03 00:00:00', 1);
INSERT INTO ServiceOpen(ServiceCenterId,TypeCode,TypeName,BeginDate,EndDate,IsAudit)VALUES ( N'4', N'ApplyAsk', N'Զ������','2016-08-03 00:00:00','2026-08-03 00:00:00', 1);
INSERT INTO ServiceOpen(ServiceCenterId,TypeCode,TypeName,BeginDate,EndDate,IsAudit)VALUES ( N'4', N'ApplyImage', N'Ӱ����ѯ','2016-08-03 00:00:00','2026-08-03 00:00:00', 1);

-- ����ҽԺ
INSERT INTO MemberHospital(InstitutionGuid) VALUES('e4ffb321-a7d4-496d-b1cd-7f9d373906bd');
INSERT INTO MemberHospital(InstitutionGuid) VALUES('24a960a1-de24-4ae8-9add-55ba51e0a00c');
INSERT INTO MemberHospital(InstitutionGuid) VALUES('b474371a-13fc-4c7f-8e2c-6c58f787c115');
INSERT INTO MemberHospital(InstitutionGuid) VALUES('7dcf99d3-ece1-4cc8-b9ee-c46d3903d7dd');
INSERT INTO MemberHospital(InstitutionGuid) VALUES('820f2a3c-b723-43ea-9bc8-45d597207d87');


-- Center_Hospital_Mapping ������ĺͺ���ҽԺ��Թ�ϵ
INSERT INTO Center_Hospital_Mapping(InstitutionGuid, ServiceCenterId) VALUES ( 'e4ffb321-a7d4-496d-b1cd-7f9d373906bd',N'1');
INSERT INTO Center_Hospital_Mapping(InstitutionGuid, ServiceCenterId) VALUES ( '24a960a1-de24-4ae8-9add-55ba51e0a00c',N'1');
INSERT INTO Center_Hospital_Mapping(InstitutionGuid, ServiceCenterId) VALUES ( '24a960a1-de24-4ae8-9add-55ba51e0a00c',N'2');
INSERT INTO Center_Hospital_Mapping(InstitutionGuid, ServiceCenterId) VALUES ( 'b474371a-13fc-4c7f-8e2c-6c58f787c115',N'1');
INSERT INTO Center_Hospital_Mapping(InstitutionGuid, ServiceCenterId) VALUES ( 'b474371a-13fc-4c7f-8e2c-6c58f787c115',N'3');
INSERT INTO Center_Hospital_Mapping(InstitutionGuid, ServiceCenterId) VALUES ( 'b474371a-13fc-4c7f-8e2c-6c58f787c115',N'4');
INSERT INTO Center_Hospital_Mapping(InstitutionGuid, ServiceCenterId) VALUES ( '7dcf99d3-ece1-4cc8-b9ee-c46d3903d7dd',N'1');
INSERT INTO Center_Hospital_Mapping(InstitutionGuid, ServiceCenterId) VALUES ( '820f2a3c-b723-43ea-9bc8-45d597207d87',N'1');
INSERT INTO Center_Hospital_Mapping(InstitutionGuid, ServiceCenterId) VALUES ( '820f2a3c-b723-43ea-9bc8-45d597207d87',N'3');


-- ***************************�û�******************************

-- *********** ��ͨҽ�� ***********
INSERT INTO Customer(CustomerGuid,UserID,CustomerName,NickName,Email,`Password`,PasswordFormatId,PasswordSalt,Phone,Active,Deleted,IsSystemAccount) VALUES ( N'a123d84b-d27b-44ca-affa-667a99d56eba', N'shenys', N'��ҽ��', N'double', N'shenys@sina.com', N'abc123',N'0',NULL,N'13500010004',1,0,0);

-- CUSTOMER_CUSTOMERROLE_MAPPING �û����ɫ��ϵ��
INSERT INTO CUSTOMER_CUSTOMERROLE_MAPPING(Customer_Id,CustomerRole_Id)VALUES ( N'3', N'2');
INSERT INTO CUSTOMER_CUSTOMERROLE_MAPPING(Customer_Id,CustomerRole_Id)VALUES ( N'3', N'4');

INSERT INTO DoctorMember(CustomerGuid,IsExpert,HospitalCode,HospitalName) VALUES ( N'a123d84b-d27b-44ca-affa-667a99d56eba', 0, '17273','���������ҽԺ');

INSERT INTO DoctorOffice(CustomerGuid,SubjectSecondId) VALUES(N'a123d84b-d27b-44ca-affa-667a99d56eba', N'1');


-- ************ ר�� ************
INSERT INTO Customer(CustomerGuid,UserID,CustomerName,NickName,Email,`Password`,PasswordFormatId,PasswordSalt,Phone,Active,Deleted,IsSystemAccount) VALUES ( N'cdc5f939-fc42-4297-a4d5-05788a4a31e0', N'wangzj', N'��ר��', N'king', N'wangzj@sina.com', N'abc123',N'0',NULL,N'18200040001',1,0,0);

INSERT INTO CUSTOMER_CUSTOMERROLE_MAPPING(Customer_Id,CustomerRole_Id) VALUES ( N'4', N'2');
INSERT INTO CUSTOMER_CUSTOMERROLE_MAPPING(Customer_Id,CustomerRole_Id) VALUES ( N'4', N'4');

INSERT INTO DoctorMember(CustomerGuid,IsExpert,HospitalCode,HospitalName) VALUES ( N'cdc5f939-fc42-4297-a4d5-05788a4a31e0', 1, '15113',N'�Ϻ���ͨ��ѧҽѧԺ�������ҽԺ');

INSERT INTO DoctorServiceCenter(CustomerGuid, ServiceCenterId, IsAudit) VALUES ( N'cdc5f939-fc42-4297-a4d5-05788a4a31e0', N'1',1);

INSERT INTO DoctorService(CustomerGuid,ServiceCenterId,ServiceTypeCode,ServiceTypeName,BeginDate,EndDate,IsStop,IsAudit) VALUES ( N'cdc5f939-fc42-4297-a4d5-05788a4a31e0', N'1', N'PACSDiagnosis', N'Ӱ�����','2016-08-03 00:00:00','2026-08-03 00:00:00', 0,1);
INSERT INTO DoctorService(CustomerGuid,ServiceCenterId,ServiceTypeCode,ServiceTypeName,BeginDate,EndDate,IsStop,IsAudit) VALUES ( N'cdc5f939-fc42-4297-a4d5-05788a4a31e0', N'1', N'ECGDiagnosis', N'�ĵ����','2016-08-03 00:00:00','2026-08-03 00:00:00', 0,1);
INSERT INTO DoctorService(CustomerGuid,ServiceCenterId,ServiceTypeCode,ServiceTypeName,BeginDate,EndDate,IsStop,IsAudit) VALUES ( N'cdc5f939-fc42-4297-a4d5-05788a4a31e0', N'1', N'XISDiagnosis',N'�������','2016-08-03 00:00:00','2026-08-03 00:00:00', 0,1);
INSERT INTO DoctorService(CustomerGuid,ServiceCenterId,ServiceTypeCode,ServiceTypeName,BeginDate,EndDate,IsStop,IsAudit) VALUES ( N'cdc5f939-fc42-4297-a4d5-05788a4a31e0', N'1', N'PISDiagnosis',N'�������','2016-08-03 00:00:00','2026-08-03 00:00:00', 0,1);
INSERT INTO DoctorService(CustomerGuid,ServiceCenterId,ServiceTypeCode,ServiceTypeName,BeginDate,EndDate,IsStop,IsAudit) VALUES ( N'cdc5f939-fc42-4297-a4d5-05788a4a31e0', N'1', N'PACSConsult',N'Ӱ�����','2016-08-03 00:00:00','2026-08-03 00:00:00', 0,1);
INSERT INTO DoctorService(CustomerGuid,ServiceCenterId,ServiceTypeCode,ServiceTypeName,BeginDate,EndDate,IsStop,IsAudit) VALUES ( N'cdc5f939-fc42-4297-a4d5-05788a4a31e0', N'1', N'ECGConsult',N'�ĵ����','2016-08-03 00:00:00','2026-08-03 00:00:00', 0,1);
INSERT INTO DoctorService(CustomerGuid,ServiceCenterId,ServiceTypeCode,ServiceTypeName,BeginDate,EndDate,IsStop,IsAudit) VALUES ( N'cdc5f939-fc42-4297-a4d5-05788a4a31e0', N'1', N'PISConsult',N'�������','2016-08-03 00:00:00','2026-08-03 00:00:00', 0,1);
INSERT INTO DoctorService(CustomerGuid,ServiceCenterId,ServiceTypeCode,ServiceTypeName,BeginDate,EndDate,IsStop,IsAudit) VALUES ( N'cdc5f939-fc42-4297-a4d5-05788a4a31e0', N'1', N'ClinicConsult',N'�ٴ�����','2016-08-03 00:00:00','2026-08-03 00:00:00', 0,1);
INSERT INTO DoctorService(CustomerGuid,ServiceCenterId,ServiceTypeCode,ServiceTypeName,BeginDate,EndDate,IsStop,IsAudit) VALUES ( N'cdc5f939-fc42-4297-a4d5-05788a4a31e0', N'1', N'RemoteClinic',N'Զ������','2016-08-03 00:00:00','2026-08-03 00:00:00', 0,1);
INSERT INTO DoctorService(CustomerGuid,ServiceCenterId,ServiceTypeCode,ServiceTypeName,BeginDate,EndDate,IsStop,IsAudit) VALUES ( N'cdc5f939-fc42-4297-a4d5-05788a4a31e0', N'1', N'ApplyAsk',N'Զ������','2016-08-03 00:00:00','2026-08-03 00:00:00', 0,1);
INSERT INTO DoctorService(CustomerGuid,ServiceCenterId,ServiceTypeCode,ServiceTypeName,BeginDate,EndDate,IsStop,IsAudit) VALUES ( N'cdc5f939-fc42-4297-a4d5-05788a4a31e0', N'1', N'ApplyImage',N'Ӱ����ѯ','2016-08-03 00:00:00','2026-08-03 00:00:00', 0,1);

INSERT INTO DoctorOffice(CustomerGuid,SubjectSecondId) VALUES(N'cdc5f939-fc42-4297-a4d5-05788a4a31e0', N'1');
INSERT INTO DoctorOffice(CustomerGuid,SubjectSecondId) VALUES(N'cdc5f939-fc42-4297-a4d5-05788a4a31e0', N'37');

-- �����ר��
INSERT INTO Customer(CustomerGuid,UserID,CustomerName,NickName,Email,`Password`,PasswordFormatId,PasswordSalt,Phone,Active,Deleted,IsSystemAccount) VALUES ( N'9fb704ce-8041-47d2-bbda-27d39b017cd3', N'xiaozj', N'Фר��', N'xiao', N'xiaozj@sina.com', N'abc123',N'0',NULL,N'18200040201',1,0,0);

INSERT INTO CUSTOMER_CUSTOMERROLE_MAPPING(Customer_Id,CustomerRole_Id) VALUES ( N'5', N'2');
INSERT INTO CUSTOMER_CUSTOMERROLE_MAPPING(Customer_Id,CustomerRole_Id) VALUES ( N'5', N'4');

INSERT INTO DoctorMember(CustomerGuid,IsExpert,HospitalCode,HospitalName) VALUES ( N'9fb704ce-8041-47d2-bbda-27d39b017cd3', 1, '15113',N'�Ϻ���ͨ��ѧҽѧԺ�������ҽԺ');

INSERT INTO DoctorServiceCenter(CustomerGuid, ServiceCenterId, IsAudit) VALUES ( N'9fb704ce-8041-47d2-bbda-27d39b017cd3', N'1',1);

INSERT INTO DoctorService(CustomerGuid,ServiceCenterId,ServiceTypeCode,ServiceTypeName,BeginDate,EndDate,IsStop,IsAudit) VALUES ( N'9fb704ce-8041-47d2-bbda-27d39b017cd3', N'1', N'PACSDiagnosis', N'Ӱ�����','2016-08-03 00:00:00','2026-08-03 00:00:00', 0,1);
INSERT INTO DoctorService(CustomerGuid,ServiceCenterId,ServiceTypeCode,ServiceTypeName,BeginDate,EndDate,IsStop,IsAudit) VALUES ( N'9fb704ce-8041-47d2-bbda-27d39b017cd3', N'1', N'PACSConsult',N'Ӱ�����','2016-08-03 00:00:00','2026-08-03 00:00:00', 0,1);
INSERT INTO DoctorService(CustomerGuid,ServiceCenterId,ServiceTypeCode,ServiceTypeName,BeginDate,EndDate,IsStop,IsAudit) VALUES ( N'9fb704ce-8041-47d2-bbda-27d39b017cd3', N'1', N'ApplyImage',N'Ӱ����ѯ','2016-08-03 00:00:00','2026-08-03 00:00:00', 0,1);

INSERT INTO DoctorOffice(CustomerGuid,SubjectSecondId) VALUES(N'9fb704ce-8041-47d2-bbda-27d39b017cd3', N'37');


-- �ٴ�ר��
INSERT INTO Customer(CustomerGuid,UserID,CustomerName,NickName,Email,`Password`,PasswordFormatId,PasswordSalt,Phone,Active,Deleted,IsSystemAccount) VALUES ( N'5ea38e04-026f-4109-b26f-f01490ee1019', N'zhangzj', N'��ר��', N'zhang', N'zhangzj@sina.com', N'abc123',N'0',NULL,N'18700010201',1,0,0);

INSERT INTO CUSTOMER_CUSTOMERROLE_MAPPING(Customer_Id,CustomerRole_Id) VALUES ( N'6', N'2');
INSERT INTO CUSTOMER_CUSTOMERROLE_MAPPING(Customer_Id,CustomerRole_Id) VALUES ( N'6', N'4');

INSERT INTO DoctorMember(CustomerGuid,IsExpert,HospitalCode,HospitalName) VALUES ( N'5ea38e04-026f-4109-b26f-f01490ee1019', 1, '15113',N'�Ϻ���ͨ��ѧҽѧԺ�������ҽԺ');

INSERT INTO DoctorServiceCenter(CustomerGuid, ServiceCenterId, IsAudit) VALUES ( N'5ea38e04-026f-4109-b26f-f01490ee1019', N'1',1);

INSERT INTO DoctorService(CustomerGuid,ServiceCenterId,ServiceTypeCode,ServiceTypeName,BeginDate,EndDate,IsStop,IsAudit) VALUES ( N'5ea38e04-026f-4109-b26f-f01490ee1019', N'1', N'ClinicConsult',N'�ٴ�����','2016-08-03 00:00:00','2026-08-03 00:00:00', 0,1);
INSERT INTO DoctorService(CustomerGuid,ServiceCenterId,ServiceTypeCode,ServiceTypeName,BeginDate,EndDate,IsStop,IsAudit) VALUES ( N'5ea38e04-026f-4109-b26f-f01490ee1019', N'1', N'RemoteClinic',N'Զ������','2016-08-03 00:00:00','2026-08-03 00:00:00', 0,1);
INSERT INTO DoctorService(CustomerGuid,ServiceCenterId,ServiceTypeCode,ServiceTypeName,BeginDate,EndDate,IsStop,IsAudit) VALUES ( N'5ea38e04-026f-4109-b26f-f01490ee1019', N'1', N'ApplyAsk',N'Զ������','2016-08-03 00:00:00','2026-08-03 00:00:00', 0,1);

INSERT INTO DoctorOffice(CustomerGuid,SubjectSecondId) VALUES(N'5ea38e04-026f-4109-b26f-f01490ee1019', N'1');


-- ************ �����û� ************
INSERT INTO Customer(CustomerGuid,UserID,CustomerName,NickName,Email,`Password`,PasswordFormatId,PasswordSalt,Phone,Active,Deleted,IsSystemAccount,IdNumber) VALUES ( N'3fcb73f1-fa20-4d88-aac2-897b83964e34', N'shentt', N'������', N'double', N'shentt@sina.com', N'abc123',N'0',NULL,N'18700000001',1,0,0,N'310101198001011483');

-- CUSTOMER_CUSTOMERROLE_MAPPING �û����ɫ��ϵ��
INSERT INTO CUSTOMER_CUSTOMERROLE_MAPPING(Customer_Id,CustomerRole_Id)VALUES ( N'7', N'2');
INSERT INTO CUSTOMER_CUSTOMERROLE_MAPPING(Customer_Id,CustomerRole_Id)VALUES ( N'7', N'5');

-- ��������
INSERT INTO MyHealthCard(CustomerGuid, HealthCardNumber, HealthCardType) VALUES( N'3fcb73f1-fa20-4d88-aac2-897b83964e34', N'100125', 0);

-- ��ʾ1
INSERT INTO Customer(CustomerGuid,UserID,CustomerName,NickName,Email,`Password`,PasswordFormatId,PasswordSalt,Phone,Active,Deleted,IsSystemAccount,IdNumber) VALUES ( N'1662f914-244f-4732-bc78-e0b18af83b59', N'yanshi1', N'��ʾ1', N'��ʾ1', N'yanshi1@sina.com', N'abc123',N'0',NULL,N'18767105385',1,0,0,N'330184199101010001');

-- CUSTOMER_CUSTOMERROLE_MAPPING �û����ɫ��ϵ��
INSERT INTO CUSTOMER_CUSTOMERROLE_MAPPING(Customer_Id,CustomerRole_Id)VALUES ( N'17', N'2');
INSERT INTO CUSTOMER_CUSTOMERROLE_MAPPING(Customer_Id,CustomerRole_Id)VALUES ( N'17', N'5');

-- ��������
INSERT INTO MyHealthCard(CustomerGuid, HealthCardNumber, HealthCardType) VALUES( N'1662f914-244f-4732-bc78-e0b18af83b59', N'200143', 0);

-- ************** ��������Ա *************
INSERT INTO Customer(CustomerGuid,UserID,CustomerName,NickName,Email,`Password`,PasswordFormatId,PasswordSalt,Phone,Active,Deleted,IsSystemAccount) VALUES ( N'0c512580-d158-408b-a68a-ac2055d9ee6f', N'ruijadmin', N'������Ա', N'', N'ruijamdin@sina.com', N'abc123',N'0',NULL,N'13500010001',1,0,0);
INSERT INTO CUSTOMER_CUSTOMERROLE_MAPPING(Customer_Id,CustomerRole_Id) VALUES ( N'8', N'11');
INSERT INTO InstitutionManager(CustomerGuid,InstitutionGuid) VALUES('0c512580-d158-408b-a68a-ac2055d9ee6f','94117694-8ecf-4792-9a86-3aff306b6d12');

INSERT INTO Customer(CustomerGuid,UserID,CustomerName,NickName,Email,`Password`,PasswordFormatId,PasswordSalt,Phone,Active,Deleted,IsSystemAccount) VALUES ( N'48d7b12b-2092-4bef-b1b4-63cf942bd579', N'xinhadmin', N'�»�����Ա', N'', N'xinhamdin@sina.com', N'abc123',N'0',NULL,N'13500010002',1,0,0);
INSERT INTO CUSTOMER_CUSTOMERROLE_MAPPING(Customer_Id,CustomerRole_Id) VALUES ( N'9', N'11');
INSERT INTO InstitutionManager(CustomerGuid,InstitutionGuid) VALUES('48d7b12b-2092-4bef-b1b4-63cf942bd579','1b43fd4c-fb19-4078-859f-686ad95a92f3');

INSERT INTO Customer(CustomerGuid,UserID,CustomerName,NickName,Email,`Password`,PasswordFormatId,PasswordSalt,Phone,Active,Deleted,IsSystemAccount) VALUES ( N'9bd23c82-b96a-4620-8709-7e1432a52a10', N'renjadmin', N'�ʼù���Ա', N'', N'renjamdin@sina.com', N'abc123',N'0',NULL,N'13500010002',1,0,0);
INSERT INTO CUSTOMER_CUSTOMERROLE_MAPPING(Customer_Id,CustomerRole_Id) VALUES ( N'10', N'11');
INSERT INTO InstitutionManager(CustomerGuid,InstitutionGuid) VALUES('9bd23c82-b96a-4620-8709-7e1432a52a10','018db453-d9c0-45ec-984c-05c5430bc2d5');

INSERT INTO Customer(CustomerGuid,UserID,CustomerName,NickName,Email,`Password`,PasswordFormatId,PasswordSalt,Phone,Active,Deleted,IsSystemAccount) VALUES ( N'132a63fc-3173-40b0-951b-978efba3a244', N'lhladmin', N'�������������Ա', N'', N'lhlamdin@sina.com', N'abc123',N'0',NULL,N'13500010002',1,0,0);
INSERT INTO CUSTOMER_CUSTOMERROLE_MAPPING(Customer_Id,CustomerRole_Id) VALUES ( N'11', N'11');
INSERT INTO InstitutionManager(CustomerGuid,InstitutionGuid) VALUES('132a63fc-3173-40b0-951b-978efba3a244','e4ffb321-a7d4-496d-b1cd-7f9d373906bd');


INSERT INTO Customer(CustomerGuid,UserID,CustomerName,NickName,Email,`Password`,PasswordFormatId,PasswordSalt,Phone,Active,Deleted,IsSystemAccount) VALUES ( N'89dc27d5-eb88-4541-81e5-35abbe5835fd', N'phadmin', N'ƽ������Ա', N'', N'lhlamdin@sina.com', N'abc123',N'0',NULL,N'13500010002',1,0,0);
INSERT INTO CUSTOMER_CUSTOMERROLE_MAPPING(Customer_Id,CustomerRole_Id) VALUES ( N'12', N'11');
INSERT INTO InstitutionManager(CustomerGuid,InstitutionGuid) VALUES('89dc27d5-eb88-4541-81e5-35abbe5835fd','24a960a1-de24-4ae8-9add-55ba51e0a00c');

INSERT INTO Customer(CustomerGuid,UserID,CustomerName,NickName,Email,`Password`,PasswordFormatId,PasswordSalt,Phone,Active,Deleted,IsSystemAccount) VALUES ( N'1269908e-7649-487f-b509-485a75a60e2a', N'jxadmin', N'���˹���Ա', N'', N'lhlamdin@sina.com', N'abc123',N'0',NULL,N'13500010002',1,0,0);
INSERT INTO CUSTOMER_CUSTOMERROLE_MAPPING(Customer_Id,CustomerRole_Id) VALUES ( N'13', N'11');
INSERT INTO InstitutionManager(CustomerGuid,InstitutionGuid) VALUES('1269908e-7649-487f-b509-485a75a60e2a','b474371a-13fc-4c7f-8e2c-6c58f787c115');

INSERT INTO Customer(CustomerGuid,UserID,CustomerName,NickName,Email,`Password`,PasswordFormatId,PasswordSalt,Phone,Active,Deleted,IsSystemAccount) VALUES ( N'15102fa2-ff8e-496d-bd43-7da339156d54', N'wyadmin', N'�������Ա', N'', N'lhlamdin@sina.com', N'abc123',N'0',NULL,N'13500010002',1,0,0);
INSERT INTO CUSTOMER_CUSTOMERROLE_MAPPING(Customer_Id,CustomerRole_Id) VALUES ( N'14', N'11');
INSERT INTO InstitutionManager(CustomerGuid,InstitutionGuid) VALUES('15102fa2-ff8e-496d-bd43-7da339156d54','7dcf99d3-ece1-4cc8-b9ee-c46d3903d7dd');

INSERT INTO Customer(CustomerGuid,UserID,CustomerName,NickName,Email,`Password`,PasswordFormatId,PasswordSalt,Phone,Active,Deleted,IsSystemAccount) VALUES ( N'c4ca6824-4d2e-4829-8749-2ad5f61e112f', N'xhrhadmin', N'�ջԹ���Ա', N'', N'lhlamdin@sina.com', N'abc123',N'0',NULL,N'13500010002',1,0,0);
INSERT INTO CUSTOMER_CUSTOMERROLE_MAPPING(Customer_Id,CustomerRole_Id) VALUES ( N'15', N'11');
INSERT INTO InstitutionManager(CustomerGuid,InstitutionGuid) VALUES('c4ca6824-4d2e-4829-8749-2ad5f61e112f','820f2a3c-b723-43ea-9bc8-45d597207d87');



