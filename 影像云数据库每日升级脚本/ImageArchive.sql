/*==============================================================*/
/* 2017-01-11 

ObservationRequest（观察请求记录表）增加字段：DiskSpace FLOAT
                                              
*/
/*==============================================================*/
# 消耗磁盘空间（Mb）（观察请求记录表）
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema. COLUMNS
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'ObservationRequest'
			AND column_name = 'DiskSpace'
		) THEN
			ALTER TABLE ObservationRequest ADD DiskSpace FLOAT ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-02-13 

ObservationResult（观察结果表）增加字段：ParentResultSeq BIGINT
                                              
*/
/*==============================================================*/
# ParentResultSeq（观察结果表）
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema. COLUMNS
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'ObservationResult'
			AND column_name = 'ParentResultSeq'
		) THEN
			ALTER TABLE ObservationResult ADD ParentResultSeq BIGINT ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-03-16 

删除表：JBMC（疾病名称表（ICD-10））、ACR（ACR表）

*/
/*==============================================================*/
DROP TABLE
IF EXISTS JBMC;

DROP TABLE
IF EXISTS ACR;

/*==============================================================*/
/* 2017-03-21 

JobServer（Job服务程序表）增加字段：UserName nvarchar(50)、Password nvarchar(50)
                                              
*/
/*==============================================================*/
# 用户名（Job服务程序表）
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema. COLUMNS
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'JobServer'
			AND column_name = 'UserName'
		) THEN
			ALTER TABLE JobServer ADD UserName VARCHAR (50) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 密码（Job服务程序表）
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema. COLUMNS
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'JobServer'
			AND column_name = 'Password'
		) THEN
			ALTER TABLE JobServer ADD PASSWORD VARCHAR (50) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-05-09 

Visit（病人就诊记录表）增加字段：IsHasPacemaker bit
                                              
*/
/*==============================================================*/
# 是否有心脏起搏器（病人就诊记录表）
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema. COLUMNS
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'Visit'
			AND column_name = 'IsHasPacemaker'
		) THEN
			ALTER TABLE Visit ADD IsHasPacemaker TINYINT (1) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-05-19

增加表：WriteReadModality（书写完成可以查看报告的检查类型表）                                              
增加表：ICACloudProduct（电信云存储产品表）  
增加表：CloudStorageServiceMst（云存储服务管理表）  
增加表：DataStorageStrategyMst（数据存储策略管理表）
ObservationRequest（观察请求记录）增加字段：IsSummary bit  

*/
/*==============================================================*/
# 书写完成可以查看报告的检查类型表
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema. TABLES
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'WriteReadModality'
		) THEN
			CREATE TABLE WriteReadModality (
				Id INT NOT NULL auto_increment,
				HospitalCode VARCHAR (250),
				HospitalName VARCHAR (250),
				ExamineType VARCHAR (16),
				PRIMARY KEY (Id)
			) DEFAULT CHARSET = utf8 ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 电信云存储产品表
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema. TABLES
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'ICACloudProduct'
		) THEN
			CREATE TABLE ICACloudProduct (
				Id INT NOT NULL auto_increment,
				ProductCode VARCHAR (256),
				ProductName VARCHAR (64),
				Discountcode VARCHAR (64),
				DiscountName VARCHAR (64),
				Price DECIMAL (18, 2),
				PRIMARY KEY (Id)
			) DEFAULT CHARSET = utf8 ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 索引（电信云存储产品表）
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema.statistics
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'ICACloudProduct'
			AND index_name = 'IX_ICACP_ProductCode'
		) THEN
			CREATE INDEX IX_ICACP_ProductCode ON ICACloudProduct (ProductCode) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 云存储服务管理表
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema. TABLES
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'CloudStorageServiceMst'
		) THEN
			CREATE TABLE CloudStorageServiceMst (
				Id INT NOT NULL auto_increment,
				CustID VARCHAR (64),
				CustAccount VARCHAR (64),
				CustName VARCHAR (64),
				AreaCode VARCHAR (256),
				TotalFee DECIMAL (18, 2),
				Discountcode VARCHAR (64),
				BeginTime datetime,
				InstitutionlName VARCHAR (250),
				EndTime datetime,
				InstitutionlCode VARCHAR (250),
				StorageSize FLOAT,
				OpenStatus SMALLINT,
				Endpoint VARCHAR (256),
				EndpointInternet VARCHAR (256),
				ImageUrl VARCHAR (256),
				ImageUrlInternet VARCHAR (256),
				PRIMARY KEY (Id)
			) DEFAULT CHARSET = utf8 ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 索引（云存储服务管理表）
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema.statistics
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'CloudStorageServiceMst'
			AND index_name = 'IX_CSSM_Discountcode'
		) THEN
			CREATE INDEX IX_CSSM_Discountcode ON CloudStorageServiceMst (Discountcode) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 数据存储策略管理表
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema. TABLES
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'DataStorageStrategyMst'
		) THEN
			CREATE TABLE DataStorageStrategyMst (
				Id INT NOT NULL auto_increment,
				InstitutionlCode VARCHAR (250),
				InstitutionlName VARCHAR (250),
				StratrgyType SMALLINT,
				StorageStrategy SMALLINT,
				MediaUID CHAR (36),
				MediaName VARCHAR (256),
				StorageTimeSlot INT,
				StorageTimeSlotUnit VARCHAR (10),
				StorageSize FLOAT,
				UsedStorageSize FLOAT,
				IsBackup TINYINT (1),
				OverrunSolution SMALLINT,
				IsCompacted TINYINT (1),
				CreateUserUID CHAR (36),
				CreateUserName VARCHAR (50),
				CreateDate datetime,
				LastUpdateDate datetime,
				PRIMARY KEY (Id)
			) DEFAULT CHARSET = utf8 ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 索引（数据存储策略管理表）
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema.statistics
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'DataStorageStrategyMst'
			AND index_name = 'IX_DSSM_InstitutionlCode'
		) THEN
			CREATE INDEX IX_DSSM_InstitutionlCode ON DataStorageStrategyMst (InstitutionlCode) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 已汇总标识（观察请求记录）
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema. COLUMNS
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'ObservationRequest'
			AND column_name = 'IsSummary'
		) THEN
			ALTER TABLE ObservationRequest ADD IsSummary TINYINT (1) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-05-23

LogClinicDataOperation（临床数据操作日志表）增加字段：IsSummary bit  

*/
/*==============================================================*/
# 已汇总标识（临床数据操作日志表）
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema. COLUMNS
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'LogClinicDataOperation'
			AND column_name = 'IsSummary'
		) THEN
			ALTER TABLE LogClinicDataOperation ADD IsSummary TINYINT (1) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-05-31

MediaMst（媒质表）增加字段：OrganizationName nvarchar(250)  

*/
/*==============================================================*/
# 机构名称（媒质表）
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema. COLUMNS
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'MediaMst'
			AND column_name = 'OrganizationName'
		) THEN
			ALTER TABLE MediaMst ADD OrganizationName VARCHAR (250) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-06-05

DataStorageStrategyMst（数据存储策略管理表）增加字段：ImplementDate datetime 

*/
/*==============================================================*/
# 最后执行时间（数据存储策略管理表）
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema. COLUMNS
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'DataStorageStrategyMst'
			AND column_name = 'ImplementDate'
		) THEN
			ALTER TABLE DataStorageStrategyMst ADD ImplementDate datetime ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-06-09

MediaMst（媒质表）增加字段：StorageSize FLOAT 

*/
/*==============================================================*/
# 容量大小（媒质表）
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema. COLUMNS
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'MediaMst'
			AND column_name = 'StorageSize'
		) THEN
			ALTER TABLE MediaMst ADD StorageSize FLOAT ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-06-12

DataStorageStrategyMst（数据存储策略管理表）增加字段：StorageEndTime datetime 

*/
/*==============================================================*/
# 存储结束时间（数据存储策略管理表）
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema. COLUMNS
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'DataStorageStrategyMst'
			AND column_name = 'StorageEndTime'
		) THEN
			ALTER TABLE DataStorageStrategyMst ADD StorageEndTime datetime ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-06-13

ObservationRequest（观察请求记录表）增加字段：ResultAssistantPhone nvarchar(20) 

*/
/*==============================================================*/
# 结果助理电话（观察请求记录表）
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema. COLUMNS
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'ObservationRequest'
			AND column_name = 'ResultAssistantPhone'
		) THEN
			ALTER TABLE ObservationRequest ADD ResultAssistantPhone VARCHAR (20) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-07-10

LogClinicDataOperation（临床数据操作日志表）增加字段：UserKind SMALLINT、ClientKind SMALLINT 

*/
/*==============================================================*/
# 访问用户类型（临床数据操作日志表）
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema. COLUMNS
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'LogClinicDataOperation'
			AND column_name = 'UserKind'
		) THEN
			ALTER TABLE LogClinicDataOperation ADD UserKind SMALLINT ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 客户端类型（临床数据操作日志表）
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema. COLUMNS
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'LogClinicDataOperation'
			AND column_name = 'ClientKind'
		) THEN
			ALTER TABLE LogClinicDataOperation ADD ClientKind SMALLINT ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-08-08

DataStorageStrategyMst（数据存储策略管理表）增加字段：IsLongTerm bit 

*/
/*==============================================================*/
# 是否长期存储（数据存储策略管理表）
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema. COLUMNS
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'DataStorageStrategyMst'
			AND column_name = 'IsLongTerm'
		) THEN
			ALTER TABLE DataStorageStrategyMst ADD IsLongTerm TINYINT (1) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-08-22 

增加表：LogError（错误日志表）
                                              
*/
/*==============================================================*/
# 错误日志表
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema. TABLES
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'LogError'
		) THEN
			CREATE TABLE LogError (
				Id INT NOT NULL auto_increment,
				BusinessID CHAR (36),
				AccessionNumber VARCHAR (30),
				ExamineType VARCHAR (10),
				DataSource VARCHAR (128),
				InstitutionlGuid CHAR (36),
				AcquisitionType SMALLINT,
				WrongTime datetime,
				CustomerGuid CHAR (36),
				WorkStation VARCHAR (256),
				WrongType SMALLINT,
				WrongDescribe LONGTEXT,
				PRIMARY KEY (Id)
			) DEFAULT CHARSET = utf8 ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 索引（错误日志表）
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema.statistics
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'LogError'
			AND index_name = 'IX_LE_CustomerGuid'
		) THEN
			CREATE INDEX IX_LE_CustomerGuid ON LogError (CustomerGuid) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-08-25 

ObservationRequest（观察请求记录表）增加字段：SourceOrganizationID nvarchar(64)、SourceOrganizationName nvarchar(64) 
                                              
*/
/*==============================================================*/
# 来源机构ID（观察请求记录表）
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema. COLUMNS
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'ObservationRequest'
			AND column_name = 'SourceOrganizationID'
		) THEN
			ALTER TABLE ObservationRequest ADD SourceOrganizationID VARCHAR (64) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 来源机构名称（观察请求记录表）
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema. COLUMNS
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'ObservationRequest'
			AND column_name = 'SourceOrganizationName'
		) THEN
			ALTER TABLE ObservationRequest ADD SourceOrganizationName VARCHAR (64) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-09-19

表LogClinicDataOperation、ObservationRequest、DataSourceSetup、LogError增加索引
                                              
*/
/*==============================================================*/
# 索引（临床数据操作日志表）
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema.statistics
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'LogClinicDataOperation'
			AND index_name = 'IX_LCDO_UserKind'
		) THEN
			CREATE INDEX IX_LCDO_UserKind ON LogClinicDataOperation (UserKind) ;
		END
		IF ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema.statistics
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'LogClinicDataOperation'
			AND index_name = 'IX_LCDO_CreateDate'
		) THEN
			CREATE INDEX IX_LCDO_CreateDate ON LogClinicDataOperation (CreateDate) ;
		END
		IF ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema.statistics
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'LogClinicDataOperation'
			AND index_name = 'IX_LCDO_ClientKind'
		) THEN
			CREATE INDEX IX_LCDO_ClientKind ON LogClinicDataOperation (ClientKind) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 索引（观察请求记录表）
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema.statistics
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'ObservationRequest'
			AND index_name = 'IX_ObservationRequest_ObservationDate'
		) THEN
			CREATE INDEX IX_ObservationRequest_ObservationDate ON ObservationRequest (ObservationDate) ;
		END
		IF ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema.statistics
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'ObservationRequest'
			AND index_name = 'IX_ObservationRequest_DataSource'
		) THEN
			CREATE INDEX IX_ObservationRequest_DataSource ON ObservationRequest (DataSource) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 索引（数据来源对应检查类型表）
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema.statistics
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'DataSourceSetup'
			AND index_name = 'IX_DSS_DataSource'
		) THEN
			CREATE INDEX IX_DSS_DataSource ON DataSourceSetup (DataSource) ;
		END
		IF ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema.statistics
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'DataSourceSetup'
			AND index_name = 'IX_DSS_ExamineType'
		) THEN
			CREATE INDEX IX_DSS_ExamineType ON DataSourceSetup (ExamineType) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 索引（错误日志表）
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema.statistics
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'LogError'
			AND index_name = 'IX_LE_ExamineType'
		) THEN
			CREATE INDEX IX_LE_ExamineType ON LogError (ExamineType) ;
		END
		IF ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema.statistics
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'LogError'
			AND index_name = 'IX_LE_WrongTime'
		) THEN
			CREATE INDEX IX_LE_WrongTime ON LogError (WrongTime) ;
		END
		IF ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema.statistics
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'LogError'
			AND index_name = 'IX_LE_WrongType'
		) THEN
			CREATE INDEX IX_LE_WrongType ON LogError (WrongType) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-10-10

Document（文档记录表）增加字段：IsSummary bit 
LogError（错误日志表）增加字段：IsSummary bit 

*/
/*==============================================================*/
# 已汇总标识（文档记录表）
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema. COLUMNS
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'Document'
			AND column_name = 'IsSummary'
		) THEN
			ALTER TABLE Document ADD IsSummary TINYINT (1) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 已汇总标识（错误日志表）
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema. COLUMNS
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'LogError'
			AND column_name = 'IsSummary'
		) THEN
			ALTER TABLE LogError ADD IsSummary TINYINT (1) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-10-13

Document（文档记录表）增加字段：Modality nvarchar(16)、CreateOrganizationName nvarchar(64) 
LogError（错误日志表）增加字段：HospitalCode nvarchar(250)、HospitalName nvarchar(250)，删除字段： InstitutionlGuid、AcquisitionType
增加表：ExamCheckData（检查数据校对表）  

*/
/*==============================================================*/
# 检查类型（文档记录表）
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema. COLUMNS
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'Document'
			AND column_name = 'Modality'
		) THEN
			ALTER TABLE Document ADD Modality VARCHAR (16) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 文档创建机构名称（文档记录表）
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema. COLUMNS
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'Document'
			AND column_name = 'CreateOrganizationName'
		) THEN
			ALTER TABLE Document ADD CreateOrganizationName VARCHAR (64) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 组织机构代码（错误日志表）
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema. COLUMNS
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'LogError'
			AND column_name = 'HospitalCode'
		) THEN
			ALTER TABLE LogError ADD HospitalCode VARCHAR (250) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 医疗机构名称（错误日志表）
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema. COLUMNS
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'LogError'
			AND column_name = 'HospitalName'
		) THEN
			ALTER TABLE LogError ADD HospitalName VARCHAR (250) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 删除字段（错误日志表）
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF EXISTS (
			SELECT
				*
			FROM
				information_schema. COLUMNS
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'LogError'
			AND column_name = 'InstitutionlGuid'
		) THEN
			ALTER TABLE LogError DROP InstitutionlGuid ;
		END
		IF ;
		IF EXISTS (
			SELECT
				*
			FROM
				information_schema. COLUMNS
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'LogError'
			AND column_name = 'AcquisitionType'
		) THEN
			ALTER TABLE LogError DROP AcquisitionType ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 索引（错误日志表）
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema.statistics
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'LogError'
			AND index_name = 'IX_LE_HospitalCode'
		) THEN
			CREATE INDEX IX_LE_HospitalCode ON LogError (HospitalCode) ;
		END
		IF ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema.statistics
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'LogError'
			AND index_name = 'IX_LE_DataSource'
		) THEN
			CREATE INDEX IX_LE_DataSource ON LogError (DataSource) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 检查数据校对表
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema. TABLES
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'ExamCheckData'
		) THEN
			CREATE TABLE ExamCheckData (
				ExamIndex VARCHAR (64) NOT NULL,
				HospitalCode VARCHAR (100) NOT NULL,
				HospitalName VARCHAR (250),
				DataSource VARCHAR (64) NOT NULL,
				DataSourceName VARCHAR (64),
				ExamineType VARCHAR (16) NOT NULL,
				PerformTime datetime,
				RegistFlag SMALLINT,
				UploadReportFlag SMALLINT,
				UploadImageFlag SMALLINT,
				UploadFilmFlag SMALLINT,
				PRIMARY KEY (
					ExamIndex,
					HospitalCode,
					DataSource,
					ExamineType
				)
			) DEFAULT CHARSET = utf8 ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 索引（检查数据校对表）
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema.statistics
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'ExamCheckData'
			AND index_name = 'IX_ECD_PerformTime'
		) THEN
			CREATE INDEX IX_ECD_PerformTime ON ExamCheckData (PerformTime) ;
		END
		IF ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema.statistics
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'ExamCheckData'
			AND index_name = 'IX_ECD_RegistFlag'
		) THEN
			CREATE INDEX IX_ECD_RegistFlag ON ExamCheckData (RegistFlag) ;
		END
		IF ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema.statistics
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'ExamCheckData'
			AND index_name = 'IX_ECD_UploadReportFlag'
		) THEN
			CREATE INDEX IX_ECD_UploadReportFlag ON ExamCheckData (UploadReportFlag) ;
		END
		IF ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema.statistics
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'ExamCheckData'
			AND index_name = 'IX_ECD_UploadImageFlag'
		) THEN
			CREATE INDEX IX_ECD_UploadImageFlag ON ExamCheckData (UploadImageFlag) ;
		END
		IF ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema.statistics
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'ExamCheckData'
			AND index_name = 'IX_ECD_UploadFilmFlag'
		) THEN
			CREATE INDEX IX_ECD_UploadFilmFlag ON ExamCheckData (UploadFilmFlag) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-10-16

LogError（错误日志表）增加字段：ExamIndex nvarchar(64)，删除字段： AccessionNumber

*/
/*==============================================================*/
# 检查内部唯一号（错误日志表）
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema. COLUMNS
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'LogError'
			AND column_name = 'ExamIndex'
		) THEN
			ALTER TABLE LogError ADD ExamIndex VARCHAR (64) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 索引（错误日志表）
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema.statistics
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'LogError'
			AND index_name = 'IX_LE_ExamIndex'
		) THEN
			CREATE INDEX IX_LE_ExamIndex ON LogError (ExamIndex) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 删除字段（错误日志表）
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF EXISTS (
			SELECT
				*
			FROM
				information_schema. COLUMNS
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'LogError'
			AND column_name = 'AccessionNumber'
		) THEN
			ALTER TABLE LogError DROP AccessionNumber ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-10-17 

增加表：DayExamAmount（每日检查数核查表）
                                              
*/
/*==============================================================*/
# 每日检查数核查表
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema. TABLES
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'DayExamAmount'
		) THEN
			CREATE TABLE DayExamAmount (
				DAY datetime NOT NULL,
				HospitalCode VARCHAR (100) NOT NULL,
				HospitalName VARCHAR (250),
				DataSource VARCHAR (64) NOT NULL,
				DataSourceName VARCHAR (64),
				ExamineType VARCHAR (16) NOT NULL,
				TotalAmount INT,
				RegistAmount INT,
				PRIMARY KEY (
					DAY,
					HospitalCode,
					DataSource,
					ExamineType
				)
			) DEFAULT CHARSET = utf8 ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-10-18 

ObservationRequest（观察请求记录）修改字段：PlacerOrderNO nvarchar(128)
                                              
*/
/*==============================================================*/
# 申请号（观察请求记录）
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF EXISTS (
			SELECT
				*
			FROM
				information_schema. COLUMNS
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'ObservationRequest'
			AND column_name = 'PlacerOrderNO'
		) THEN
			ALTER TABLE ObservationRequest CHANGE PlacerOrderNO PlacerOrderNO VARCHAR (128) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-10-30

ObservationRequest（观察请求记录表）增加字段：IsRepeatExamSum bit、IsDiseaseAnalysisSum bit 

*/
/*==============================================================*/
# 重复检查已汇总标识（观察请求记录表）
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema. COLUMNS
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'ObservationRequest'
			AND column_name = 'IsRepeatExamSum'
		) THEN
			ALTER TABLE ObservationRequest ADD IsRepeatExamSum TINYINT (1) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 疾病分析已汇总标识（观察请求记录表）
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema. COLUMNS
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'ObservationRequest'
			AND column_name = 'IsDiseaseAnalysisSum'
		) THEN
			ALTER TABLE ObservationRequest ADD IsDiseaseAnalysisSum TINYINT (1) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-11-01 

增加表：HospitalRegion（医院所属地区表）
                                              
*/
/*==============================================================*/
# 医院所属地区表
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema. TABLES
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'HospitalRegion'
		) THEN
			CREATE TABLE HospitalRegion (
				Id INT NOT NULL auto_increment,
				HospitalCode VARCHAR (250),
				HospitalName VARCHAR (250),
				ProID INT,
				ProvinceName VARCHAR (20),
				CityID INT,
				CityName VARCHAR (20),
				CountyId INT,
				CountyName VARCHAR (20),
				PRIMARY KEY (Id)
			) DEFAULT CHARSET = utf8 ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 索引（医院所属地区表）
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema.statistics
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'HospitalRegion'
			AND index_name = 'IX_HR_HospitalCode'
		) THEN
			CREATE INDEX IX_HR_HospitalCode ON HospitalRegion (HospitalCode) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-11-02

ExamCheckData（检查数据校对表）增加字段：CollectionTime datetime 
DayExamAmount（每日检查数核查表）增加字段：ImageAmount INT 

*/
/*==============================================================*/
# 采集时间（检查数据校对表）
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema. COLUMNS
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'ExamCheckData'
			AND column_name = 'CollectionTime'
		) THEN
			ALTER TABLE ExamCheckData ADD CollectionTime datetime ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 有影像检查总数量（每日检查数核查表）
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema. COLUMNS
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'DayExamAmount'
			AND column_name = 'ImageAmount'
		) THEN
			ALTER TABLE DayExamAmount ADD ImageAmount INT ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-11-14

DayExamAmount（每日检查数核查表）增加字段：FilmAmount INT 

*/
/*==============================================================*/
# 有胶片检查总数量（每日检查数核查表）
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema. COLUMNS
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'DayExamAmount'
			AND column_name = 'FilmAmount'
		) THEN
			ALTER TABLE DayExamAmount ADD FilmAmount INT ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-11-23

Document（文档记录表）增加字段：FileDeleteFlag bit 

*/
/*==============================================================*/
# 文件删除标志（文档记录表）
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema. COLUMNS
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'Document'
			AND column_name = 'FileDeleteFlag'
		) THEN
			ALTER TABLE Document ADD FileDeleteFlag TINYINT (1) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 索引（文档记录表）
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema.statistics
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'Document'
			AND index_name = 'IX_Document_FileDeleteFlag'
		) THEN
			CREATE INDEX IX_Document_FileDeleteFlag ON Document (FileDeleteFlag) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-12-25

MediaMst（媒质表）增加字段：IsDirect bit 

*/
/*==============================================================*/
# 是否直接上云（媒质表）
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema. COLUMNS
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'MediaMst'
			AND column_name = 'IsDirect'
		) THEN
			ALTER TABLE MediaMst ADD IsDirect TINYINT (1) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-12-28

ObservationRequest（观察请求记录表）增加索引

*/
/*==============================================================*/
# 索引（观察请求记录表）
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema.statistics
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'ObservationRequest'
			AND index_name = 'IX_ORE_PreliminaryDate'
		) THEN
			CREATE INDEX IX_ORE_PreliminaryDate ON ObservationRequest (PreliminaryDate) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2018-01-08

ExamCheckData（检查数据校对表）增加字段：ReportTime datetime
DayExamAmount（每日检查数核查表）增加字段：PrepareTotalAmount INT

*/
/*==============================================================*/
# 报告时间（检查数据校对表）
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema. COLUMNS
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'ExamCheckData'
			AND column_name = 'ReportTime'
		) THEN
			ALTER TABLE ExamCheckData ADD ReportTime datetime ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 可发布检查总数量（每日检查数核查表）
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema. COLUMNS
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'DayExamAmount'
			AND column_name = 'PrepareTotalAmount'
		) THEN
			ALTER TABLE DayExamAmount ADD PrepareTotalAmount INT ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2018-01-18

IntegrationTask（集成任务表）增加字段：PerformTime datetime

*/
/*==============================================================*/
# 检查时间（集成任务表）
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema. COLUMNS
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'IntegrationTask'
			AND column_name = 'PerformTime'
		) THEN
			ALTER TABLE IntegrationTask ADD PerformTime datetime ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 索引（集成任务表）
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema.statistics
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'IntegrationTask'
			AND index_name = 'IX_IT_PerformTime'
		) THEN
			CREATE INDEX IX_IT_PerformTime ON IntegrationTask (PerformTime) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2018-03-22

ObservationRequest（观察请求记录表）增加字段：CollectionMark SMALLINT
                                              
*/
/*==============================================================*/
# 采集标识（观察请求记录表）
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema. COLUMNS
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'ObservationRequest'
			AND column_name = 'CollectionMark'
		) THEN
			ALTER TABLE ObservationRequest ADD CollectionMark SMALLINT ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2018-04-04 

增加表：ShortUrlAccess（短链接访问表）、ShortUrlAccessLog（短链接访问记录表）
                                              
*/
/*==============================================================*/
# 短链接访问表
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema. TABLES
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'ShortUrlAccess'
		) THEN
			CREATE TABLE ShortUrlAccess (
				AccessUID CHAR (36) NOT NULL,
				AccessId VARCHAR (16),
				Kind SMALLINT,
				AccessMode SMALLINT,
				PatientMasterID VARCHAR (64),
				IDCardNO VARCHAR (20),
				ObservationUID CHAR (36),
				AccessionNumber VARCHAR (30),
				HospitalId VARCHAR (64),
				Modality VARCHAR (20),
				CustomParamContent VARCHAR (1024),
				ExpireTime datetime,
				PRIMARY KEY (AccessUID)
			) DEFAULT CHARSET = utf8 ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 索引（短链接访问表）
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema.statistics
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'ShortUrlAccess'
			AND index_name = 'IX_SUA_AccessId'
		) THEN
			CREATE INDEX IX_SUA_AccessId ON ShortUrlAccess (AccessId) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 短链接访问记录表
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema. TABLES
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'ShortUrlAccessLog'
		) THEN
			CREATE TABLE ShortUrlAccessLog (
				Id INT NOT NULL auto_increment,
				AccessUID CHAR (36),
				UserId VARCHAR (50),
				UserName VARCHAR (50),
				AccessIP VARCHAR (20),
				AccessTime datetime,
				PRIMARY KEY (Id)
			) DEFAULT CHARSET = utf8 ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 索引（短链接访问记录表）
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema.statistics
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'ShortUrlAccessLog'
			AND index_name = 'IX_SUAL_AccessUID'
		) THEN
			CREATE INDEX IX_SUAL_AccessUID ON ShortUrlAccessLog (AccessUID) ;
		END
		IF ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema.statistics
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'ShortUrlAccessLog'
			AND index_name = 'IX_SUAL_AccessIP'
		) THEN
			CREATE INDEX IX_SUAL_AccessIP ON ShortUrlAccessLog (AccessIP) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2018-04-13 

增加表：JobServerVersion（JobServer版本管理表）
JobServer（Job服务程序表）增加字段：Version nvarchar(30)、IsNeedUpdate bit
                                              
*/
/*==============================================================*/
# JobServer版本管理表
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema. TABLES
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'JobServerVersion'
		) THEN
			CREATE TABLE JobServerVersion (
				Id INT NOT NULL auto_increment,
				ServiceUID CHAR (36),
				Version VARCHAR (30),
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

# 索引（JobServer版本管理表）
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema.statistics
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'JobServerVersion'
			AND index_name = 'IX_JSV_ServiceUID'
		) THEN
			CREATE INDEX IX_JSV_ServiceUID ON JobServerVersion (ServiceUID) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 当前版本号（Job服务程序表）
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema. COLUMNS
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'JobServer'
			AND column_name = 'Version'
		) THEN
			ALTER TABLE JobServer ADD Version VARCHAR (30) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 是否需要更新（Job服务程序表）
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema. COLUMNS
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'JobServer'
			AND column_name = 'IsNeedUpdate'
		) THEN
			ALTER TABLE JobServer ADD IsNeedUpdate TINYINT (1) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2018-05-04

ObservationRequest（观察请求记录表）增加字段：ArchiveDate datetime
DayExamAmount（每日检查数核查表）增加字段：PublishTotalAmount INT、FaultTotalAmount INT
                                              
*/
/*==============================================================*/
# 归档时间（观察请求记录表）
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema. COLUMNS
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'ObservationRequest'
			AND column_name = 'ArchiveDate'
		) THEN
			ALTER TABLE ObservationRequest ADD ArchiveDate datetime ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 已发布总数量（每日检查数核查表）
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema. COLUMNS
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'DayExamAmount'
			AND column_name = 'PublishTotalAmount'
		) THEN
			ALTER TABLE DayExamAmount ADD PublishTotalAmount INT ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 失败总数量（每日检查数核查表）
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema. COLUMNS
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'DayExamAmount'
			AND column_name = 'FaultTotalAmount'
		) THEN
			ALTER TABLE DayExamAmount ADD FaultTotalAmount INT ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2018-05-29

DicomStudy（影像的检查信息表）增加字段：IsAnonymous bit
                                              
*/
/*==============================================================*/
# 是否匿名化（影像的检查信息表）
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema. COLUMNS
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'DicomStudy'
			AND column_name = 'IsAnonymous'
		) THEN
			ALTER TABLE DicomStudy ADD IsAnonymous TINYINT (1) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2018-06-01

JobServerVersion（JobServer版本管理表）增加字段：OrganizationID nvarchar(64)
                                              
*/
/*==============================================================*/
# 机构ID（JobServer版本管理表）
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema. COLUMNS
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'JobServerVersion'
			AND column_name = 'OrganizationID'
		) THEN
			ALTER TABLE JobServerVersion ADD OrganizationID VARCHAR (64) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2018-06-06 

Document（文档记录）修改字段：FileSize BIGINT
                                              
*/
/*==============================================================*/
# 文件大小（文档记录）
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF EXISTS (
			SELECT
				*
			FROM
				information_schema. COLUMNS
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'Document'
			AND column_name = 'FileSize'
		) THEN
			ALTER TABLE Document CHANGE FileSize FileSize BIGINT ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2018-06-07

JobServer（Job服务程序表）增加字段：IsCustomized bit
                                              
*/
/*==============================================================*/
# 是否机构定制（Job服务程序表）
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE schema_change ()
BEGIN
	DECLARE
		CurrentDatabase VARCHAR (100) ; SELECT
			DATABASE () INTO CurrentDatabase ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema. COLUMNS
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'JobServer'
			AND column_name = 'IsCustomized'
		) THEN
			ALTER TABLE JobServer ADD IsCustomized TINYINT (1) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();