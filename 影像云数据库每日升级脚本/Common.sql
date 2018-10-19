/*==============================================================*/
/* 2017-01-05 

OperatorLog(操作日志表) 增加字段： SourceSystem SMALLINT
Alert(消息表) 增加字段： SourceSystem SMALLINT
SMS(短信记录) 增加字段： SourceSystem SMALLINT
Meeting(视频会议表) 增加字段： SourceSystem SMALLINT
Log(日志表) 增加字段： SourceSystem SMALLINT

*/
/*==============================================================*/
# 来源系统（操作日志表）
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

# 来源系统（消息表）
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

# 来源系统（短信记录）
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

# 来源系统（视频会议表）
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

# 来源系统（日志表）
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

Hospital（医疗机构表）增加字段：ProID int、CityID int、CountyId int，
                  修改字段：ProName 为 ProvinceName nvarchar(20)、CityName 为 CityName nvarchar(20)、DisName 为 CountyName nvarchar(20)
                                              
*/
/*==============================================================*/
# 所在省（医疗机构表）
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

# 所在市（医疗机构表）
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

# 所在县（医疗机构表）
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

# 所在省份名称（医疗机构表）
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

# 所在市名称（医疗机构表）
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

# 所在县名称（医疗机构表）
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

增加表：DocFirstItem（业务资料一级项目表）、DocSecondItem（业务资料二级项目表）
增加表：SmsTemplate（短信模板表）、SmsTemplatePara（短信模板参数表）                                                

*/
/*==============================================================*/
# 业务资料一级项目表
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

# 业务资料二级项目表
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

# 短信模板表
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

# 短信模板参数表
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

删除表：ConsultDataSetup（会诊资料配置表）

*/
/*==============================================================*/
DROP TABLE
IF EXISTS ConsultDataSetup;

/*==============================================================*/
/* 2017-02-23

增加表：HistoryDocItem（业务历史资料项目表）                                              

*/
/*==============================================================*/
# 业务历史资料项目表
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

SmsTemplate(短信模板表) 增加字段： ThirdTemplateId nvachar(30)

*/
/*==============================================================*/
# 第三方模板Id（短信模板表）
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

增加表：JBMC（疾病名称表（ICD-10））、ACR（ACR表）
增加表：ServiceCenterFallback（诊断中心兜底关系表）                                                

*/
/*==============================================================*/
# 疾病名称表（ICD-10）
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
		BBMC VARCHAR (64) DEFAULT '原始疾病',
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

# 索引（疾病名称表）
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

# ACR表
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

# 索引（ACR表）
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

# 诊断中心兜底关系表
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

# 索引（诊断中心兜底关系表）
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

增加表：PushPersonInstitution（地推人员机构表）                                              
增加表：PushPerson（地推人员表）  
增加表：PushAccessRecord（地推客户访问记录表）  
增加表：PushRegistRecord（地推客户注册记录）  

*/
/*==============================================================*/
# 地推人员机构表
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

# 地推人员表
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

# 地推客户访问记录表
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

# 索引（地推客户访问记录表）
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

# 地推客户注册记录
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

# 索引（地推客户注册记录）
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

SubjectFirst（科室一级分类表）增加字段：FirstCode nvarchar(30)  
SubjectSecond（科室二级分类表）增加字段：SecondCode nvarchar(30) 
                                           
*/
/*==============================================================*/
# 科室代码（科室一级分类表）
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

# 科室代码（科室二级分类表）
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

SiteInfo（网站自定义信息表）增加字段：PushCodeLogoBinary LONGBLOB, 删除字段：ServiceLogoBinary、ExpertLogoBinary、MemberLogoBinary、HospitalLogoBinary、ManageLogoBinary  
 
                                           
*/
/*==============================================================*/
# 地推二维码Logo图片二进制流（网站自定义信息表）
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

# 删除字段（网站自定义信息表）
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

增加表：OfficialPaper（文案内容表）                                               

*/
/*==============================================================*/
# 文案内容表
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

DayAccessCount（日访问量表）修改字段：AccessDay 为 datetime
                                           
*/
/*==============================================================*/
# 日期（日访问量表）
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

Alert（消息表）增加字段：CustomKind SMALLINT 

*/
/*==============================================================*/
# 自定义类型（消息表）
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

SMS（短信记录表）增加字段：State SMALLINT、FaultRetryCnt INT、IsFaultRetry bit 

*/
/*==============================================================*/
# 发送状态（短信记录表）
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

# 失败重试次数（短信记录表）
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

# 是否失败重试（短信记录表）
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

SubjectFirst（科室一级分类表）增加字段：InstitutionGuid uniqueidentifier 
SubjectSecond（科室二级分类表）增加字段：InstitutionGuid uniqueidentifier 
                                           
*/
/*==============================================================*/
# InstitutionGuid（科室一级分类表）
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

# InstitutionGuid（科室二级分类表）
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

SiteInfo（网站自定义信息表）增加字段：PhoneLogoBinary varbinary(max) 
                                           
*/
/*==============================================================*/
# 手机Logo图片二进制流（网站自定义信息表）
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

SmsTemplate（短信模板表）增加字段：ServiceCenterId int、InstitutionGuid uniqueidentifier
SMS（短信记录表）增加字段：InstitutionGuid uniqueidentifier、TemplateCode nvarchar(30)

*/
/*==============================================================*/
# 服务中心Id（短信模板表）
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

# InstitutionGuid（短信模板表）
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

# InstitutionGuid（短信记录表）
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

# 索引（短信记录表）
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

# 模板代码（短信记录表）
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

PushRegistRecord（地推客户注册记录表）增加字段：ChangeTime datetime、State SMALLINT

*/
/*==============================================================*/
# 变更时间（地推客户注册记录表）
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

# 状态（地推客户注册记录表）
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

SMS（短信记录表）增加字段：CustomKind SMALLINT

*/
/*==============================================================*/
# 自定义类型（短信记录表）
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

SmsTemplatePara（短信模板参数表）增加字段：TemplateId INT

*/
/*==============================================================*/
# 模板Id（短信模板参数表）
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

# 索引（短信模板参数表）
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

Article（网站信息发布表）修改字段：PicGuid 为 PicGuid uniqueidentifier
                                              
*/
/*==============================================================*/
# PicGuid（网站信息发布表）
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

增加表：HWMeeting（会议记录表）、HWSite（会场终端信息）、HWSiteSchedule（会场参与会议排期表）

*/
/*==============================================================*/
# 会议记录表
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

# 索引（会议记录表）
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

# 会场终端信息
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

# 索引（会场终端信息）
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

# 会场参与会议排期表
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

# 索引（会场参与会议排期表）
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

Article（网站信息发布表）修改字段：Role 为 Role nvarchar(100)
                                              
*/
/*==============================================================*/
# 面向角色（网站信息发布表）
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

Meeting（视频会议表）增加字段：Number nvarchar(50)

*/
/*==============================================================*/
# 会议（直播）编号（视频会议表）
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

Article（网站信息发布表）增加字段：ServiceKind SMALLINT
DataDownload（资料下载表）增加字段：ServiceKind SMALLINT

*/
/*==============================================================*/
# 中心类型（网站信息发布表）
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

# 中心类型（资料下载表）
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

City（市表）增加字段：IsHot bit

*/
/*==============================================================*/
# 是否热门城市（市表）
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

Article（网站信息发布表）增加字段：InstitutionGuid uniqueidentifier、InstitutionlName nvarchar(250)
DataDownload（资料下载表）增加字段：InstitutionGuid uniqueidentifier、InstitutionlName nvarchar(250)

*/
/*==============================================================*/
# InstitutionGuid（网站信息发布表）
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

# 医疗机构名称（网站信息发布表）
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

# 索引（网站信息发布表）
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

# InstitutionGuid（资料下载表）
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

# 医疗机构名称（资料下载表）
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

# 索引（资料下载表）
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

增加表：Detection（人工智能检测表）
HWSite（会场终端信息表）增加字段：TerminalType SMALLINT、State SMALLINT、Address nvarchar(256)、Reason nvarchar(512)、InstitutionGuid uniqueidentifier、InstitutionlName nvarchar(250)

*/
/*==============================================================*/
# 人工智能检测表
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

# 索引（人工智能检测表）
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

# 终端类型（会场终端信息表）
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

# 终端状态（会场终端信息表）
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

# 终端地址（会场终端信息表）
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

# 停用原因（会场终端信息表）
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

# InstitutionGuid（会场终端信息表）
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

# 医疗机构名称（会场终端信息表）
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

HWSite（会场终端信息表）增加字段：IP nvarchar(20)、Role SMALLINT

*/
/*==============================================================*/
# 终端IP（会场终端信息表）
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

# 终端角色（会场终端信息表）
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

增加表：LogAudit（操作日志审计表）
OperatorLog（操作日志表）增加字段：State SMALLINT

*/
/*==============================================================*/
# 操作日志审计表
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

# 索引（操作日志审计表）
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

# 审计状态（操作日志表）
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

DataDicType（数据字典分类表）增加字段：TypeComment nvarchar(300)

*/
/*==============================================================*/
# 补充说明（数据字典分类表）
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

SmsTemplate（短信（消息）模板表）增加字段：Kind SMALLINT
DataDicType（数据字典分类表）增加字段：IsEdit bit

*/
/*==============================================================*/
# 模板类型（短信（消息）模板表）
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

# 是否可编辑（数据字典分类表）
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

ServiceCenterFallback（诊断中心兜底关系表）增加字段：HospitalCode nvarchar(250)
ServiceCenterFallback（诊断中心兜底关系表）增加索引

*/
/*==============================================================*/
# 医疗机构代码（诊断中心兜底关系表）
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

# 索引（诊断中心兜底关系表）
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

JPushMessages（极光推送消息表）增加字段：SourceSystem SMALLINT

*/
/*==============================================================*/
# 来源系统（极光推送消息表）
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

增加表：PublicMessage（公共消息表）、PublicMessageTarget（公共消息发送对象表）

*/
/*==============================================================*/
# 公共消息表
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

# 公共消息发送对象表
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

PublicMessage（公共消息表）增加字段：ServiceCenterId INT、ServiceCenterName nvarchar(100)、InstitutionGuid uniqueidentifier、InstitutionlName nvarchar(250)

*/
/*==============================================================*/
# 服务中心ID（公共消息表）
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

# 服务中心名称（公共消息表）
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

# 医疗机构Guid（公共消息表）
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

# 医疗机构名称（公共消息表）
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

PublicMessageTarget（公共消息发送对象表）增加字段：SendResult nvarchar(300)

*/
/*==============================================================*/
# 发送结果（公共消息发送对象表）
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

OperatorLog（操作日志表）修改字段：OperateDescription nvarchar(max)

*/
/*==============================================================*/
# 操作描述（操作日志表）
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

增加表：CrossCloudApply（跨云朵业务申请表）

*/
/*==============================================================*/
# 跨云朵业务申请表
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

增加表：AppVersion（App版本管理表）
                                              
*/
/*==============================================================*/
# App版本管理表
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

OperatorLog（操作日志表）增加字段：OperateResult SMALLINT

*/
/*==============================================================*/
# 操作结果（操作日志表）
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

增加表：ClientAccessAddress（不同网段客户端互访地址映射表）
                                              
*/
/*==============================================================*/
# 不同网段客户端互访地址映射表
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

Column（自定义栏目表）增加字段：SourceSystem SMALLINT
Module（自定义模块表）增加字段：SourceSystem SMALLINT
SiteInfo（网站自定义信息表）增加字段：OppositeLogoBinary varbinary(max)

*/
/*==============================================================*/
# 来源系统（自定义栏目表）
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

# 来源系统（自定义模块表）
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

# 网站Logo反白效果图片二进制流（网站自定义信息表）
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