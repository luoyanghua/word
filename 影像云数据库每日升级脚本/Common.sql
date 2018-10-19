/*==============================================================*/
/* 2017-01-05 

OperatorLog(������־��) �����ֶΣ� SourceSystem SMALLINT
Alert(��Ϣ��) �����ֶΣ� SourceSystem SMALLINT
SMS(���ż�¼) �����ֶΣ� SourceSystem SMALLINT
Meeting(��Ƶ�����) �����ֶΣ� SourceSystem SMALLINT
Log(��־��) �����ֶΣ� SourceSystem SMALLINT

*/
/*==============================================================*/
# ��Դϵͳ��������־��
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. COLUMNS
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'OperatorLog'
	AND column_name = 'SourceSystem'
) THEN
	ALTER TABLE OperatorLog ADD SourceSystem SMALLINT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# ��Դϵͳ����Ϣ��
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. COLUMNS
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'Alert'
	AND column_name = 'SourceSystem'
) THEN
	ALTER TABLE Alert ADD SourceSystem SMALLINT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# ��Դϵͳ�����ż�¼��
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. COLUMNS
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'SMS'
	AND column_name = 'SourceSystem'
) THEN
	ALTER TABLE SMS ADD SourceSystem SMALLINT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# ��Դϵͳ����Ƶ�����
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. COLUMNS
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'Meeting'
	AND column_name = 'SourceSystem'
) THEN
	ALTER TABLE Meeting ADD SourceSystem SMALLINT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# ��Դϵͳ����־��
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. COLUMNS
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'Log'
	AND column_name = 'SourceSystem'
) THEN
	ALTER TABLE Log ADD SourceSystem SMALLINT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-01-22 

Hospital��ҽ�ƻ����������ֶΣ�ProID int��CityID int��CountyId int��
                  �޸��ֶΣ�ProName Ϊ ProvinceName nvarchar(20)��CityName Ϊ CityName nvarchar(20)��DisName Ϊ CountyName nvarchar(20)
                                              
*/
/*==============================================================*/
# ����ʡ��ҽ�ƻ�����
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. COLUMNS
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'Hospital'
	AND column_name = 'ProID'
) THEN
	ALTER TABLE Hospital ADD ProID INT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# �����У�ҽ�ƻ�����
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. COLUMNS
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'Hospital'
	AND column_name = 'CityID'
) THEN
	ALTER TABLE Hospital ADD CityID INT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# �����أ�ҽ�ƻ�����
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. COLUMNS
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'Hospital'
	AND column_name = 'CountyId'
) THEN
	ALTER TABLE Hospital ADD CountyId INT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# ����ʡ�����ƣ�ҽ�ƻ�����
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF EXISTS (
	SELECT
		*
	FROM
		information_schema. COLUMNS
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'Hospital'
	AND column_name = 'ProName'
) THEN
	ALTER TABLE Hospital CHANGE ProName ProvinceName VARCHAR (20) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# ���������ƣ�ҽ�ƻ�����
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF EXISTS (
	SELECT
		*
	FROM
		information_schema. COLUMNS
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'Hospital'
	AND column_name = 'CityName'
) THEN
	ALTER TABLE Hospital CHANGE CityName CityName VARCHAR (20) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# ���������ƣ�ҽ�ƻ�����
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF EXISTS (
	SELECT
		*
	FROM
		information_schema. COLUMNS
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'Hospital'
	AND column_name = 'DisName'
) THEN
	ALTER TABLE Hospital CHANGE DisName CountyName VARCHAR (20) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-02-15 

���ӱ�DocFirstItem��ҵ������һ����Ŀ����DocSecondItem��ҵ�����϶�����Ŀ��
���ӱ�SmsTemplate������ģ�����SmsTemplatePara������ģ�������                                                

*/
/*==============================================================*/
# ҵ������һ����Ŀ��
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. TABLES
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'DocFirstItem'
) THEN
	CREATE TABLE DocFirstItem (
		Id INT NOT NULL auto_increment,
		FirstItemGuid CHAR (36),
		FirstItemName VARCHAR (30),
		BusinessType SMALLINT,
		KindCode VARCHAR (30),
		KindName VARCHAR (30),
		SubKindCode VARCHAR (30),
		SubKindName VARCHAR (30),
		FilexExt VARCHAR (300),
		FormatCode VARCHAR (30),
		IsNeed TINYINT (1),
		IsHasSecond TINYINT (1),
		SortNo INT,
		PRIMARY KEY (Id)
	) DEFAULT CHARSET = utf8 ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# ҵ�����϶�����Ŀ��
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. TABLES
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'DocSecondItem'
) THEN
	CREATE TABLE DocSecondItem (
		Id INT NOT NULL auto_increment,
		SecondItemGuid CHAR (36),
		SecondItemName VARCHAR (50),
		FirstItemGuid CHAR (36),
		FilexExt VARCHAR (300),
		ServiceCenterId INT,
		ServiceCenterName VARCHAR (100),
		IsPlat TINYINT (1),
		IsNeed TINYINT (1),
		SortNo INT,
		PRIMARY KEY (Id)
	) DEFAULT CHARSET = utf8 ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# ����ģ���
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. TABLES
	WHERE
		table_schema = CurrentDatabase
	AND TABLE_name = 'SmsTemplate'
) THEN
	CREATE TABLE SmsTemplate (
		Id INT NOT NULL auto_increment,
		TemplateCode VARCHAR (30),
		TemplaeName VARCHAR (100),
		Content VARCHAR (500),
		PRIMARY KEY (Id)
	) DEFAULT CHARSET = utf8 ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# ����ģ�������
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. TABLES
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'SmsTemplatePara'
) THEN
	CREATE TABLE SmsTemplatePara (
		Id INT NOT NULL auto_increment,
		TemplateCode VARCHAR (30),
		ParaCode VARCHAR (30),
		ParaName VARCHAR (30),
		SortNo INT,
		PRIMARY KEY (Id)
	) DEFAULT CHARSET = utf8 ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-02-15 

ɾ����ConsultDataSetup�������������ñ�

*/
/*==============================================================*/
DROP TABLE
IF EXISTS ConsultDataSetup;

/*==============================================================*/
/* 2017-02-23

���ӱ�HistoryDocItem��ҵ����ʷ������Ŀ��                                              

*/
/*==============================================================*/
# ҵ����ʷ������Ŀ��
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. TABLES
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'HistoryDocItem'
) THEN
	CREATE TABLE HistoryDocItem (
		Id INT NOT NULL auto_increment,
		BusinessId CHAR (36),
		BusinessType SMALLINT,
		DocItemJson LONGTEXT,
		PRIMARY KEY (Id)
	) DEFAULT CHARSET = utf8 ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-03-06 

SmsTemplate(����ģ���) �����ֶΣ� ThirdTemplateId nvachar(30)

*/
/*==============================================================*/
# ������ģ��Id������ģ���
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. COLUMNS
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'SmsTemplate'
	AND column_name = 'ThirdTemplateId'
) THEN
	ALTER TABLE SmsTemplate ADD ThirdTemplateId VARCHAR (30) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-03-16

���ӱ�JBMC���������Ʊ�ICD-10������ACR��ACR��
���ӱ�ServiceCenterFallback��������Ķ��׹�ϵ��                                                

*/
/*==============================================================*/
# �������Ʊ�ICD-10��
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. TABLES
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'JBMC'
) THEN
	CREATE TABLE JBMC (
		DM VARCHAR (64) NOT NULL,
		ICD VARCHAR (18),
		MC VARCHAR (100),
		SRM1 VARCHAR (8),
		SRM2 VARCHAR (8),
		SYBZ CHAR (1) DEFAULT 'Y',
		QX VARCHAR (60) DEFAULT '**',
		ICD9 VARCHAR (18),
		TJDM9 VARCHAR (10),
		TJDM10 VARCHAR (10),
		CCMD VARCHAR (10),
		BATJDYBH VARCHAR (5),
		JBDMKZ CHAR (1) DEFAULT 'Y',
		DYBK VARCHAR (10),
		ZDTS VARCHAR (256),
		CZJG VARCHAR (5),
		ZDLX CHAR (1) DEFAULT '1',
		ZZDBZ CHAR (1),
		BBMC VARCHAR (64) DEFAULT 'ԭʼ����',
		GLBZ CHAR (1) DEFAULT 'N',
		CZSJ DATE,
		DYDJB VARCHAR (64),
		TECH_ID INT,
		SYKZBS CHAR (1),
		SINGLE_DISEASE VARCHAR (1024),
		DYJZDJB VARCHAR (10),
		YZYBZ CHAR (1),
		YZYFYSX DECIMAL (18, 2),
		BKYXTS VARCHAR (5),
		JBLX VARCHAR (4),
		HIS5_DIAG_ID INT,
		PRIMARY KEY (DM)
	) DEFAULT CHARSET = utf8 ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# �������������Ʊ�
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'JBMC'
	AND index_name = 'IDX_JBMC_SRM1'
) THEN
	CREATE INDEX IDX_JBMC_SRM1 ON JBMC (SRM1) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'JBMC'
	AND index_name = 'IDX_JBMC_SRM2'
) THEN
	CREATE INDEX IDX_JBMC_SRM2 ON JBMC (SRM2) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# ACR��
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. TABLES
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'ACR'
) THEN
	CREATE TABLE ACR (
		AcrId VARCHAR (64) NOT NULL,
		AcrCode VARCHAR (1),
		AcrRemark VARCHAR (256),
		ParentId VARCHAR (64),
		AcrType CHAR (1),
		Deleted TINYINT (1),
		PRIMARY KEY (AcrId)
	) DEFAULT CHARSET = utf8 ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# ������ACR��
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'ACR'
	AND index_name = 'IX_ACR_AcrCode'
) THEN
	CREATE INDEX IX_ACR_AcrCode ON ACR (AcrCode) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'ACR'
	AND index_name = 'IX_ACR_ParentId'
) THEN
	CREATE INDEX IX_ACR_ParentId ON ACR (ParentId) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'ACR'
	AND index_name = 'IX_ACR_AcrType'
) THEN
	CREATE INDEX IX_ACR_AcrType ON ACR (AcrType) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# ������Ķ��׹�ϵ��
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. TABLES
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'ServiceCenterFallback'
) THEN
	CREATE TABLE ServiceCenterFallback (
		Id INT NOT NULL auto_increment,
		InstitutionGuid CHAR (36),
		InstitutionlName VARCHAR (250),
		ServiceCenterId INT,
		ServiceCenterName VARCHAR (50),
		FallbackServiceCenterId INT,
		FallbackServiceCenterName VARCHAR (50),
		TypeCode VARCHAR (100),
		TypeName VARCHAR (100),
		FallBackMode SMALLINT,
		PRIMARY KEY (Id)
	) DEFAULT CHARSET = utf8 ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# ������������Ķ��׹�ϵ��
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'ServiceCenterFallback'
	AND index_name = 'IX_SCF_InstitutionGuid'
) THEN
	CREATE INDEX IX_SCF_InstitutionGuid ON ServiceCenterFallback (InstitutionGuid) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'ServiceCenterFallback'
	AND index_name = 'IX_SCF_ServiceCenterId'
) THEN
	CREATE INDEX IX_SCF_ServiceCenterId ON ServiceCenterFallback (ServiceCenterId) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'ServiceCenterFallback'
	AND index_name = 'IX_SCF_FServiceCenterId'
) THEN
	CREATE INDEX IX_SCF_FServiceCenterId ON ServiceCenterFallback (FallbackServiceCenterId) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-05-17

���ӱ�PushPersonInstitution��������Ա������                                              
���ӱ�PushPerson��������Ա��  
���ӱ�PushAccessRecord�����ƿͻ����ʼ�¼��  
���ӱ�PushRegistRecord�����ƿͻ�ע���¼��  

*/
/*==============================================================*/
# ������Ա������
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. TABLES
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'PushPersonInstitution'
) THEN
	CREATE TABLE PushPersonInstitution (
		Id INT NOT NULL auto_increment,
		InstitutionCode VARCHAR (250),
		InstitutionName VARCHAR (250),
		InstitutionGuid CHAR (36),
		LeaderName VARCHAR (50),
		ContactName VARCHAR (50),
		Telphone VARCHAR (20),
		PRIMARY KEY (Id)
	) DEFAULT CHARSET = utf8 ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# ������Ա��
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. TABLES
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'PushPerson'
) THEN
	CREATE TABLE PushPerson (
		Id INT NOT NULL auto_increment,
		ServiceNo VARCHAR (30),
		ServiceName VARCHAR (50),
		Telphone VARCHAR (20),
		InstitutionCode VARCHAR (250),
		InstitutionName VARCHAR (250),
		PRIMARY KEY (Id)
	) DEFAULT CHARSET = utf8 ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# ���ƿͻ����ʼ�¼��
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. TABLES
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'PushAccessRecord'
) THEN
	CREATE TABLE PushAccessRecord (
		Id INT NOT NULL auto_increment,
		ServiceNo VARCHAR (30),
		ServiceName VARCHAR (50),
		OpenId VARCHAR (64),
		NickName VARCHAR (50),
		Sex VARCHAR (20),
		AccessTime datetime,
		FocusTime datetime,
		IsFocus TINYINT (1),
		IsDownApp TINYINT (1),
		PRIMARY KEY (Id)
	) DEFAULT CHARSET = utf8 ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# ���������ƿͻ����ʼ�¼��
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'PushAccessRecord'
	AND index_name = 'IX_PAR_ServiceNo'
) THEN
	CREATE INDEX IX_PAR_ServiceNo ON PushAccessRecord (ServiceNo) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'PushAccessRecord'
	AND index_name = 'IX_PAR_OpenId'
) THEN
	CREATE INDEX IX_PAR_OpenId ON PushAccessRecord (OpenId) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# ���ƿͻ�ע���¼
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. TABLES
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'PushRegistRecord'
) THEN
	CREATE TABLE PushRegistRecord (
		Id INT NOT NULL auto_increment,
		ServiceNo VARCHAR (30),
		ServiceName VARCHAR (50),
		CustomerGuid CHAR (36),
		CustomerName VARCHAR (50),
		RegistTime datetime,
		PRIMARY KEY (Id)
	) DEFAULT CHARSET = utf8 ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# ���������ƿͻ�ע���¼��
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'PushRegistRecord'
	AND index_name = 'IX_PRR_ServiceNo'
) THEN
	CREATE INDEX IX_PRR_ServiceNo ON PushRegistRecord (ServiceNo) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'PushRegistRecord'
	AND index_name = 'IX_PRR_CustomerGuid'
) THEN
	CREATE INDEX IX_PRR_CustomerGuid ON PushRegistRecord (CustomerGuid) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-05-18 

SubjectFirst������һ������������ֶΣ�FirstCode nvarchar(30)  
SubjectSecond�����Ҷ�������������ֶΣ�SecondCode nvarchar(30) 
                                           
*/
/*==============================================================*/
# ���Ҵ��루����һ�������
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. COLUMNS
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'SubjectFirst'
	AND column_name = 'FirstCode'
) THEN
	ALTER TABLE SubjectFirst ADD FirstCode VARCHAR (30) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# ���Ҵ��루���Ҷ��������
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		INformation_schema. COLUMNS
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'SubjectSecond'
	AND column_name = 'SecondCode'
) THEN
	ALTER TABLE SubjectSecond ADD SecondCode VARCHAR (30) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-05-25 

SiteInfo����վ�Զ�����Ϣ�������ֶΣ�PushCodeLogoBinary LONGBLOB, ɾ���ֶΣ�ServiceLogoBinary��ExpertLogoBinary��MemberLogoBinary��HospitalLogoBinary��ManageLogoBinary  
 
                                           
*/
/*==============================================================*/
# ���ƶ�ά��LogoͼƬ������������վ�Զ�����Ϣ��
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. COLUMNS
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'SiteInfo'
	AND column_name = 'PushCodeLogoBinary'
) THEN
	ALTER TABLE SiteInfo ADD PushCodeLogoBinary LONGBLOB ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# ɾ���ֶΣ���վ�Զ�����Ϣ��
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF EXISTS (
	SELECT
		*
	FROM
		information_schema. COLUMNS
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'SiteInfo'
	AND column_name = 'ServiceLogoBinary'
) THEN
	ALTER TABLE SiteInfo DROP ServiceLogoBinary ;
END
IF ;
IF EXISTS (
	SELECT
		*
	FROM
		information_schema. COLUMNS
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'SiteInfo'
	AND column_name = 'ExpertLogoBinary'
) THEN
	ALTER TABLE SiteInfo DROP ExpertLogoBinary ;
END
IF ;
IF EXISTS (
	SELECT
		*
	FROM
		information_schema. COLUMNS
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'SiteInfo'
	AND column_name = 'MemberLogoBinary'
) THEN
	ALTER TABLE SiteInfo DROP MemberLogoBinary ;
END
IF ;
IF EXISTS (
	SELECT
		*
	FROM
		information_schema. COLUMNS
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'SiteInfo'
	AND column_name = 'HospitalLogoBinary'
) THEN
	ALTER TABLE SiteInfo DROP HospitalLogoBinary ;
END
IF ;
IF EXISTS (
	SELECT
		*
	FROM
		information_schema. COLUMNS
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'SiteInfo'
	AND column_name = 'ManageLogoBinary'
) THEN
	ALTER TABLE SiteInfo DROP ManageLogoBinary ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-05-27

���ӱ�OfficialPaper���İ����ݱ�                                               

*/
/*==============================================================*/
# �İ����ݱ�
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. TABLES
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'OfficialPaper'
) THEN
	CREATE TABLE OfficialPaper (
		Id INT NOT NULL auto_increment,
		PaperCode VARCHAR (64),
		PaperName VARCHAR (256),
		Content LONGTEXT,
		SubSystem SMALLINT,
		PRIMARY KEY (Id)
	) DEFAULT CHARSET = utf8 ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-06-07 

DayAccessCount���շ��������޸��ֶΣ�AccessDay Ϊ datetime
                                           
*/
/*==============================================================*/
# ���ڣ��շ�������
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF EXISTS (
	SELECT
		*
	FROM
		information_schema. COLUMNS
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'DayAccessCount'
	AND column_name = 'AccessDay'
) THEN
	ALTER TABLE DayAccessCount CHANGE AccessDay AccessDay datetime ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-06-14

Alert����Ϣ�������ֶΣ�CustomKind SMALLINT 

*/
/*==============================================================*/
# �Զ������ͣ���Ϣ��
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. COLUMNS
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'Alert'
	AND column_name = 'CustomKind'
) THEN
	ALTER TABLE Alert ADD CustomKind SMALLINT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-07-24

SMS�����ż�¼�������ֶΣ�State SMALLINT��FaultRetryCnt INT��IsFaultRetry bit 

*/
/*==============================================================*/
# ����״̬�����ż�¼��
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. COLUMNS
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'SMS'
	AND column_name = 'State'
) THEN
	ALTER TABLE SMS ADD State SMALLINT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# ʧ�����Դ��������ż�¼��
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. COLUMNS
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'SMS'
	AND column_name = 'FaultRetryCnt'
) THEN
	ALTER TABLE SMS ADD FaultRetryCnt INT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# �Ƿ�ʧ�����ԣ����ż�¼��
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. COLUMNS
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'SMS'
	AND column_name = 'IsFaultRetry'
) THEN
	ALTER TABLE SMS ADD IsFaultRetry TINYINT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-08-07 

SubjectFirst������һ������������ֶΣ�InstitutionGuid uniqueidentifier 
SubjectSecond�����Ҷ�������������ֶΣ�InstitutionGuid uniqueidentifier 
                                           
*/
/*==============================================================*/
# InstitutionGuid������һ�������
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. COLUMNS
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'SubjectFirst'
	AND column_name = 'InstitutionGuid'
) THEN
	ALTER TABLE SubjectFirst ADD InstitutionGuid CHAR (36) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# InstitutionGuid�����Ҷ��������
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. COLUMNS
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'SubjectSecond'
	AND column_name = 'InstitutionGuid'
) THEN
	ALTER TABLE SubjectSecond ADD InstitutionGuid CHAR (36) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-08-08 

SiteInfo����վ�Զ�����Ϣ�������ֶΣ�PhoneLogoBinary varbinary(max) 
                                           
*/
/*==============================================================*/
# �ֻ�LogoͼƬ������������վ�Զ�����Ϣ��
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. COLUMNS
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'SiteInfo'
	AND column_name = 'PhoneLogoBinary'
) THEN
	ALTER TABLE SiteInfo ADD PhoneLogoBinary LONGBLOB ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-08-18

SmsTemplate������ģ��������ֶΣ�ServiceCenterId int��InstitutionGuid uniqueidentifier
SMS�����ż�¼�������ֶΣ�InstitutionGuid uniqueidentifier��TemplateCode nvarchar(30)

*/
/*==============================================================*/
# ��������Id������ģ���
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. COLUMNS
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'SmsTemplate'
	AND column_name = 'ServiceCenterId'
) THEN
	ALTER TABLE SmsTemplate ADD ServiceCenterId INT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# InstitutionGuid������ģ���
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. COLUMNS
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'SmsTemplate'
	AND column_name = 'InstitutionGuid'
) THEN
	ALTER TABLE SmsTemplate ADD InstitutionGuid CHAR (36) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# InstitutionGuid�����ż�¼��
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. COLUMNS
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'SMS'
	AND column_name = 'InstitutionGuid'
) THEN
	ALTER TABLE SMS ADD InstitutionGuid CHAR (36) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# ���������ż�¼��
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'SMS'
	AND index_name = 'IX_SMS_InstitutionGuid'
) THEN
	CREATE INDEX IX_SMS_InstitutionGuid ON SMS (InstitutionGuid) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# ģ����루���ż�¼��
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. COLUMNS
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'SMS'
	AND column_name = 'TemplateCode'
) THEN
	ALTER TABLE SMS ADD TemplateCode VARCHAR (30) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-08-29

PushRegistRecord�����ƿͻ�ע���¼�������ֶΣ�ChangeTime datetime��State SMALLINT

*/
/*==============================================================*/
# ���ʱ�䣨���ƿͻ�ע���¼��
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. COLUMNS
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'PushRegistRecord'
	AND column_name = 'ChangeTime'
) THEN
	ALTER TABLE PushRegistRecord ADD ChangeTime datetime ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# ״̬�����ƿͻ�ע���¼��
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. COLUMNS
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'PushRegistRecord'
	AND column_name = 'State'
) THEN
	ALTER TABLE PushRegistRecord ADD State SMALLINT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-09-25

SMS�����ż�¼�������ֶΣ�CustomKind SMALLINT

*/
/*==============================================================*/
# �Զ������ͣ����ż�¼��
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. COLUMNS
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'SMS'
	AND column_name = 'CustomKind'
) THEN
	ALTER TABLE SMS ADD CustomKind SMALLINT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-09-29

SmsTemplatePara������ģ������������ֶΣ�TemplateId INT

*/
/*==============================================================*/
# ģ��Id������ģ�������
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. COLUMNS
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'SmsTemplatePara'
	AND column_name = 'TemplateId'
) THEN
	ALTER TABLE SmsTemplatePara ADD TemplateId INT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# ����������ģ�������
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'SmsTemplatePara'
	AND index_name = 'IX_STP_TemplateId'
) THEN
	CREATE INDEX IX_STP_TemplateId ON SmsTemplatePara (TemplateId) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-10-16 

Article����վ��Ϣ�������޸��ֶΣ�PicGuid Ϊ PicGuid uniqueidentifier
                                              
*/
/*==============================================================*/
# PicGuid����վ��Ϣ������
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF EXISTS (
	SELECT
		*
	FROM
		information_schema. COLUMNS
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'Article'
	AND column_name = 'PicGuid'
) THEN
	ALTER TABLE Article CHANGE PicGuid PicGuid CHAR (36) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-10-26

���ӱ�HWMeeting�������¼����HWSite���᳡�ն���Ϣ����HWSiteSchedule���᳡����������ڱ�

*/
/*==============================================================*/
# �����¼��
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. TABLES
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'HWMeeting'
) THEN
	CREATE TABLE HWMeeting (
		Id INT NOT NULL auto_increment,
		ServiceId CHAR (36),
		Kind INT,
		MeetId INT,
		NAME VARCHAR (200),
		BeginTime datetime,
		EndTime datetime,
		Duration INT,
		AccessCode VARCHAR (9),
		AccessPwd VARCHAR (6),
		MediaEncryptType SMALLINT,
		CPResource SMALLINT,
		Rate VARCHAR (16),
		IsRecording TINYINT (1),
		RecorderAddr VARCHAR (500),
		IsLiveBroadcast TINYINT (1),
		Presentation SMALLINT,
		PASSWORD VARCHAR (6),
		State SMALLINT,
		MainSiteUri INT,
		MaxSiteCount SMALLINT,
		RSEId INT,
		IsAutoRecord TINYINT (1),
		IsVoiceRecord TINYINT (1),
		MainMcuId INT,
		CustomerGuid CHAR (36),
		CustomerName VARCHAR (50),
		CreateTime datetime,
		SourceSystem SMALLINT,
		PRIMARY KEY (Id)
	) DEFAULT CHARSET = utf8 ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# �����������¼��
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'HWMeeting'
	AND index_name = 'IX_HWM_ServiceId'
) THEN
	CREATE INDEX IX_HWM_ServiceId ON HWMeeting (ServiceId) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'HWMeeting'
	AND index_name = 'IX_HWM_CustomerGuid'
) THEN
	CREATE INDEX IX_HWM_CustomerGuid ON HWMeeting (CustomerGuid) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'HWMeeting'
	AND index_name = 'IX_HWM_State'
) THEN
	CREATE INDEX IX_HWM_State ON HWMeeting (State) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# �᳡�ն���Ϣ
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. TABLES
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'HWSite'
) THEN
	CREATE TABLE HWSite (
		Id INT NOT NULL auto_increment,
		CustomerGuid CHAR (36),
		NAME VARCHAR (64),
		Uri VARCHAR (64),
		Type SMALLINT,
		Rate VARCHAR (16),
		UserName VARCHAR (32),
		UserPwd VARCHAR (32),
		PRIMARY KEY (Id)
	) DEFAULT CHARSET = utf8 ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# �������᳡�ն���Ϣ��
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'HWSite'
	AND index_name = 'IX_HWS_CustomerGuid'
) THEN
	CREATE INDEX IX_HWS_CustomerGuid ON HWSite (CustomerGuid) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'HWSite'
	AND index_name = 'IX_HWS_Uri'
) THEN
	CREATE INDEX IX_HWS_Uri ON HWSite (Uri) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# �᳡����������ڱ�
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. TABLES
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'HWSiteSchedule'
) THEN
	CREATE TABLE HWSiteSchedule (
		Id INT NOT NULL auto_increment,
		SiteUri VARCHAR (64),
		CustomerGuid CHAR (36),
		ServiceId CHAR (36),
		MeetId INT,
		BeginTime datetime,
		EndTime datetime,
		PRIMARY KEY (Id)
	) DEFAULT CHARSET = utf8 ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# �������᳡����������ڱ�
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'HWSiteSchedule'
	AND index_name = 'IX_HWSS_SiteUri'
) THEN
	CREATE INDEX IX_HWSS_SiteUri ON HWSiteSchedule (SiteUri) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'HWSiteSchedule'
	AND index_name = 'IX_HWSS_ServiceId'
) THEN
	CREATE INDEX IX_HWSS_ServiceId ON HWSiteSchedule (ServiceId) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'HWSiteSchedule'
	AND index_name = 'IX_HWSS_BeginTime'
) THEN
	CREATE INDEX IX_HWSS_BeginTime ON HWSiteSchedule (BeginTime) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'HWSiteSchedule'
	AND index_name = 'IX_HWSS_EndTime'
) THEN
	CREATE INDEX IX_HWSS_EndTime ON HWSiteSchedule (EndTime) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-10-27 

Article����վ��Ϣ�������޸��ֶΣ�Role Ϊ Role nvarchar(100)
                                              
*/
/*==============================================================*/
# �����ɫ����վ��Ϣ������
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF EXISTS (
	SELECT
		*
	FROM
		information_schema. COLUMNS
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'Article'
	AND column_name = 'Role'
) THEN
	ALTER TABLE Article CHANGE Role Role VARCHAR (100) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-12-11

Meeting����Ƶ����������ֶΣ�Number nvarchar(50)

*/
/*==============================================================*/
# ���飨ֱ������ţ���Ƶ�����
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. COLUMNS
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'Meeting'
	AND column_name = 'Number'
) THEN
	ALTER TABLE Meeting ADD Number VARCHAR (50) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-12-18

Article����վ��Ϣ�����������ֶΣ�ServiceKind SMALLINT
DataDownload���������ر������ֶΣ�ServiceKind SMALLINT

*/
/*==============================================================*/
# �������ͣ���վ��Ϣ������
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. COLUMNS
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'Article'
	AND column_name = 'ServiceKind'
) THEN
	ALTER TABLE Article ADD ServiceKind SMALLINT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# �������ͣ��������ر�
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. COLUMNS
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'DataDownload'
	AND column_name = 'ServiceKind'
) THEN
	ALTER TABLE DataDownload ADD ServiceKind SMALLINT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-12-20

City���б������ֶΣ�IsHot bit

*/
/*==============================================================*/
# �Ƿ����ų��У��б�
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. COLUMNS
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'City'
	AND column_name = 'IsHot'
) THEN
	ALTER TABLE City ADD IsHot TINYINT (1) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-12-25

Article����վ��Ϣ�����������ֶΣ�InstitutionGuid uniqueidentifier��InstitutionlName nvarchar(250)
DataDownload���������ر������ֶΣ�InstitutionGuid uniqueidentifier��InstitutionlName nvarchar(250)

*/
/*==============================================================*/
# InstitutionGuid����վ��Ϣ������
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. COLUMNS
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'Article'
	AND column_name = 'InstitutionGuid'
) THEN
	ALTER TABLE Article ADD InstitutionGuid CHAR (36) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# ҽ�ƻ������ƣ���վ��Ϣ������
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. COLUMNS
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'Article'
	AND column_name = 'InstitutionlName'
) THEN
	ALTER TABLE Article ADD InstitutionlName VARCHAR (250) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# ��������վ��Ϣ������
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'Article'
	AND index_name = 'IX_Article_InstitutionGuid'
) THEN
	CREATE INDEX IX_Article_InstitutionGuid ON Article (InstitutionGuid) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# InstitutionGuid���������ر�
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. COLUMNS
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'DataDownload'
	AND column_name = 'InstitutionGuid'
) THEN
	ALTER TABLE DataDownload ADD InstitutionGuid CHAR (36) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# ҽ�ƻ������ƣ��������ر�
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. COLUMNS
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'DataDownload'
	AND column_name = 'InstitutionlName'
) THEN
	ALTER TABLE DataDownload ADD InstitutionlName VARCHAR (250) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# �������������ر�
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'DataDownload'
	AND index_name = 'IX_DDownload_InstitutionGuid'
) THEN
	CREATE INDEX IX_DDownload_InstitutionGuid ON DataDownload (InstitutionGuid) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2018-01-10

���ӱ�Detection���˹����ܼ���
HWSite���᳡�ն���Ϣ�������ֶΣ�TerminalType SMALLINT��State SMALLINT��Address nvarchar(256)��Reason nvarchar(512)��InstitutionGuid uniqueidentifier��InstitutionlName nvarchar(250)

*/
/*==============================================================*/
# �˹����ܼ���
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. TABLES
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'Detection'
) THEN
	CREATE TABLE Detection (
		Id INT NOT NULL auto_increment,
		ServiceId CHAR (36),
		Kind SMALLINT,
		DetectionType SMALLINT,
		DetectionTimes INT,
		DetectionResult LONGTEXT,
		State SMALLINT,
		DetectionDate datetime,
		SubmitDate datetime,
		PRIMARY KEY (Id)
	) DEFAULT CHARSET = utf8 ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# �������˹����ܼ���
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'Detection'
	AND index_name = 'IX_Detection_ServiceId'
) THEN
	CREATE INDEX IX_Detection_ServiceId ON Detection (ServiceId) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'Detection'
	AND index_name = 'IX_Detection_DetectionType'
) THEN
	CREATE INDEX IX_Detection_DetectionType ON Detection (DetectionType) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'Detection'
	AND index_name = 'IX_Detection_SubmitDate'
) THEN
	CREATE INDEX IX_Detection_SubmitDate ON Detection (SubmitDate) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# �ն����ͣ��᳡�ն���Ϣ��
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. COLUMNS
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'HWSite'
	AND column_name = 'TerminalType'
) THEN
	ALTER TABLE HWSite ADD TerminalType SMALLINT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# �ն�״̬���᳡�ն���Ϣ��
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. COLUMNS
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'HWSite'
	AND column_name = 'State'
) THEN
	ALTER TABLE HWSite ADD State SMALLINT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# �ն˵�ַ���᳡�ն���Ϣ��
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. COLUMNS
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'HWSite'
	AND column_name = 'Address'
) THEN
	ALTER TABLE HWSite ADD Address VARCHAR (256) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# ͣ��ԭ�򣨻᳡�ն���Ϣ��
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. COLUMNS
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'HWSite'
	AND column_name = 'Reason'
) THEN
	ALTER TABLE HWSite ADD Reason VARCHAR (512) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# InstitutionGuid���᳡�ն���Ϣ��
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. COLUMNS
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'HWSite'
	AND column_name = 'InstitutionGuid'
) THEN
	ALTER TABLE HWSite ADD InstitutionGuid CHAR (36) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# ҽ�ƻ������ƣ��᳡�ն���Ϣ��
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. COLUMNS
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'HWSite'
	AND column_name = 'InstitutionlName'
) THEN
	ALTER TABLE HWSite ADD InstitutionlName VARCHAR (250) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2018-01-19

HWSite���᳡�ն���Ϣ�������ֶΣ�IP nvarchar(20)��Role SMALLINT

*/
/*==============================================================*/
# �ն�IP���᳡�ն���Ϣ��
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. COLUMNS
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'HWSite'
	AND column_name = 'IP'
) THEN
	ALTER TABLE HWSite ADD IP VARCHAR (20) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# �ն˽�ɫ���᳡�ն���Ϣ��
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. COLUMNS
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'HWSite'
	AND column_name = 'Role'
) THEN
	ALTER TABLE HWSite ADD Role SMALLINT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2018-01-31

���ӱ�LogAudit��������־��Ʊ�
OperatorLog��������־�������ֶΣ�State SMALLINT

*/
/*==============================================================*/
# ������־��Ʊ�
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. TABLES
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'LogAudit'
) THEN
	CREATE TABLE LogAudit (
		Id INT NOT NULL auto_increment,
		LogId INT,
		AuditCustomerGuid CHAR (36),
		AuditCustomerName VARCHAR (100),
		AuditResultCode VARCHAR (30),
		AuditResultName VARCHAR (100),
		AuditTime datetime,
		PRIMARY KEY (Id)
	) DEFAULT CHARSET = utf8 ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# ������������־��Ʊ�
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'LogAudit'
	AND index_name = 'IX_LA_LogId'
) THEN
	CREATE INDEX IX_LA_LogId ON LogAudit (LogId) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'LogAudit'
	AND index_name = 'IX_LA_AuditCustomerGuid'
) THEN
	CREATE INDEX IX_LA_AuditCustomerGuid ON LogAudit (AuditCustomerGuid) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'LogAudit'
	AND index_name = 'IX_LA_AuditResultCode'
) THEN
	CREATE INDEX IX_LA_AuditResultCode ON LogAudit (AuditResultCode) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# ���״̬��������־��
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. COLUMNS
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'OperatorLog'
	AND column_name = 'State'
) THEN
	ALTER TABLE OperatorLog ADD State SMALLINT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2018-02-06

DataDicType�������ֵ����������ֶΣ�TypeComment nvarchar(300)

*/
/*==============================================================*/
# ����˵���������ֵ�����
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. COLUMNS
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'DataDicType'
	AND column_name = 'TypeComment'
) THEN
	ALTER TABLE DataDicType ADD TypeComment VARCHAR (300) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2018-03-01

SmsTemplate�����ţ���Ϣ��ģ��������ֶΣ�Kind SMALLINT
DataDicType�������ֵ����������ֶΣ�IsEdit bit

*/
/*==============================================================*/
# ģ�����ͣ����ţ���Ϣ��ģ���
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. COLUMNS
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'SmsTemplate'
	AND column_name = 'Kind'
) THEN
	ALTER TABLE SmsTemplate ADD Kind SMALLINT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# �Ƿ�ɱ༭�������ֵ�����
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. COLUMNS
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'DataDicType'
	AND column_name = 'IsEdit'
) THEN
	ALTER TABLE DataDicType ADD IsEdit TINYINT (1) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2018-03-06

ServiceCenterFallback��������Ķ��׹�ϵ�������ֶΣ�HospitalCode nvarchar(250)
ServiceCenterFallback��������Ķ��׹�ϵ����������

*/
/*==============================================================*/
# ҽ�ƻ������루������Ķ��׹�ϵ��
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. COLUMNS
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'ServiceCenterFallback'
	AND column_name = 'HospitalCode'
) THEN
	ALTER TABLE ServiceCenterFallback ADD HospitalCode VARCHAR (250) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# ������������Ķ��׹�ϵ��
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'ServiceCenterFallback'
	AND index_name = 'IX_SCF_HospitalCode'
) THEN
	CREATE INDEX IX_SCF_HospitalCode ON ServiceCenterFallback (HospitalCode) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2018-03-30

JPushMessages������������Ϣ�������ֶΣ�SourceSystem SMALLINT

*/
/*==============================================================*/
# ��Դϵͳ������������Ϣ��
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. COLUMNS
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'JPushMessages'
	AND column_name = 'SourceSystem'
) THEN
	ALTER TABLE JPushMessages ADD SourceSystem SMALLINT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2018-05-04

���ӱ�PublicMessage��������Ϣ����PublicMessageTarget��������Ϣ���Ͷ����

*/
/*==============================================================*/
# ������Ϣ��
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. TABLES
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'PublicMessage'
) THEN
	CREATE TABLE PublicMessage (
		Id INT NOT NULL auto_increment,
		Title VARCHAR (300),
		Content LONGTEXT,
		IsAlert TINYINT (1),
		IsSMS TINYINT (1),
		IsEmail TINYINT (1),
		IsApp TINYINT (1),
		CreateTime datetime,
		PrepareSendTime datetime,
		IsPrepare TINYINT (1),
		State SMALLINT,
		PRIMARY KEY (Id)
	) DEFAULT CHARSET = utf8 ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# ������Ϣ���Ͷ����
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. TABLES
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'PublicMessageTarget'
) THEN
	CREATE TABLE PublicMessageTarget (
		Id INT NOT NULL auto_increment,
		MessageId INT,
		ReceiveCustomerGuid CHAR (36),
		ReceiveCustomerName VARCHAR (50),
		ReceivePhone VARCHAR (20),
		ReceiveEmail VARCHAR (100),
		RegistrationId VARCHAR (36),
		SendTime datetime,
		State SMALLINT,
		PRIMARY KEY (Id)
	) DEFAULT CHARSET = utf8 ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2018-05-07

PublicMessage��������Ϣ�������ֶΣ�ServiceCenterId INT��ServiceCenterName nvarchar(100)��InstitutionGuid uniqueidentifier��InstitutionlName nvarchar(250)

*/
/*==============================================================*/
# ��������ID��������Ϣ��
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. COLUMNS
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'PublicMessage'
	AND column_name = 'ServiceCenterId'
) THEN
	ALTER TABLE PublicMessage ADD ServiceCenterId INT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# �����������ƣ�������Ϣ��
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. COLUMNS
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'PublicMessage'
	AND column_name = 'ServiceCenterName'
) THEN
	ALTER TABLE PublicMessage ADD ServiceCenterName VARCHAR (100) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# ҽ�ƻ���Guid��������Ϣ��
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. COLUMNS
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'PublicMessage'
	AND column_name = 'InstitutionGuid'
) THEN
	ALTER TABLE PublicMessage ADD InstitutionGuid CHAR (36) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# ҽ�ƻ������ƣ�������Ϣ��
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. COLUMNS
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'PublicMessage'
	AND column_name = 'InstitutionlName'
) THEN
	ALTER TABLE PublicMessage ADD InstitutionlName VARCHAR (250) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2018-05-14

PublicMessageTarget��������Ϣ���Ͷ���������ֶΣ�SendResult nvarchar(300)

*/
/*==============================================================*/
# ���ͽ����������Ϣ���Ͷ����
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. COLUMNS
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'PublicMessageTarget'
	AND column_name = 'SendResult'
) THEN
	ALTER TABLE PublicMessageTarget ADD SendResult VARCHAR (300) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2018-06-01

OperatorLog��������־���޸��ֶΣ�OperateDescription nvarchar(max)

*/
/*==============================================================*/
# ����������������־��
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF EXISTS (
	SELECT
		*
	FROM
		information_schema. COLUMNS
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'OperatorLog'
	AND column_name = 'OperateDescription'
) THEN
	ALTER TABLE OperatorLog CHANGE OperateDescription OperateDescription LONGTEXT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2018-07-03

���ӱ�CrossCloudApply�����ƶ�ҵ�������

*/
/*==============================================================*/
# ���ƶ�ҵ�������
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. TABLES
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'CrossCloudApply'
) THEN
	CREATE TABLE CrossCloudApply (
		Id INT NOT NULL auto_increment,
		SourceId CHAR (36),
		SourceKind SMALLINT,
		ServiceId CHAR (36),
		ServiceKind SMALLINT,
		ServiceInfo LONGTEXT,
		CloudId VARCHAR (50),
		CustomerGuid CHAR (36),
		CustomerName VARCHAR (50),
		Phone VARCHAR (20),
		State SMALLINT,
		PRIMARY KEY (Id)
	) DEFAULT CHARSET = utf8 ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2018-07-24 

���ӱ�AppVersion��App�汾�����
                                              
*/
/*==============================================================*/
# App�汾�����
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. TABLES
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'AppVersion'
) THEN
	CREATE TABLE AppVersion (
		Id INT NOT NULL auto_increment,
		AppId SMALLINT,
		AppName VARCHAR (30),
		Plat SMALLINT,
		Version VARCHAR (30),
		ChangeLog LONGTEXT,
		UpdateDate datetime,
		VersionName VARCHAR (30),
		DownloadUrl VARCHAR (300),
		FileSize FLOAT,
		FileSHA VARCHAR (128),
		IsForceUpdate TINYINT (1),
		IsNew TINYINT (1),
		PRIMARY KEY (Id)
	) DEFAULT CHARSET = utf8 ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2018-07-30

OperatorLog��������־�������ֶΣ�OperateResult SMALLINT

*/
/*==============================================================*/
# ���������������־��
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. COLUMNS
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'OperatorLog'
	AND column_name = 'OperateResult'
) THEN
	ALTER TABLE OperatorLog ADD OperateResult SMALLINT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2018-08-02 

���ӱ�ClientAccessAddress����ͬ���οͻ��˻��õ�ַӳ���
                                              
*/
/*==============================================================*/
# ��ͬ���οͻ��˻��õ�ַӳ���
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. TABLES
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'ClientAccessAddress'
) THEN
	CREATE TABLE ClientAccessAddress (
		Id INT NOT NULL auto_increment,
		NetName VARCHAR (100),
		PortalIP VARCHAR (50),
		CRMIP VARCHAR (50),
		MedIP VARCHAR (50),
		PubIP VARCHAR (50),
		SsIP VARCHAR (50),
		EduIP VARCHAR (50),
		DmIP VARCHAR (50),
		QcIP VARCHAR (50),
		RsvIP VARCHAR (50),
		OcIP VARCHAR (50),
		IbIP VARCHAR (50),
		VmIP VARCHAR (50),
		MbIP VARCHAR (50),
		CookieIP VARCHAR (50),
		PRIMARY KEY (Id)
	) DEFAULT CHARSET = utf8 ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2018-10-12

Column���Զ�����Ŀ�������ֶΣ�SourceSystem SMALLINT
Module���Զ���ģ��������ֶΣ�SourceSystem SMALLINT
SiteInfo����վ�Զ�����Ϣ�������ֶΣ�OppositeLogoBinary varbinary(max)

*/
/*==============================================================*/
# ��Դϵͳ���Զ�����Ŀ��
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. COLUMNS
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'Column'
	AND column_name = 'SourceSystem'
) THEN
	ALTER TABLE `Column` ADD SourceSystem SMALLINT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# ��Դϵͳ���Զ���ģ���
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. COLUMNS
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'Module'
	AND column_name = 'SourceSystem'
) THEN
	ALTER TABLE Module ADD SourceSystem SMALLINT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# ��վLogo����Ч��ͼƬ������������վ�Զ�����Ϣ��
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN

DECLARE CurrentDatabase VARCHAR (100) ; SELECT
	DATABASE () INTO CurrentDatabase ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema. COLUMNS
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'SiteInfo'
	AND column_name = 'OppositeLogoBinary'
) THEN
	ALTER TABLE SiteInfo ADD OppositeLogoBinary LONGBLOB ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();