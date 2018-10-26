/*==============================================================*/
/* 2016-12-27 

增加表：CustomerBillDetail（用户账单表）
PayRecord（公众支付订单表）增加字段：IsSettle bit
DoctorFee（医生收入明细表）增加字段：DoctorFeeGuid uniqueidentifier                                                  

*/
/*==============================================================*/
# 用户账单表 
/*
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
			AND table_name = 'CustomerBillDetail'
		) THEN
			CREATE TABLE CustomerBillDetail (
				Id INT NOT NULL auto_increment,
				CustomerGuid CHAR (36),
				BillName VARCHAR (256),
				Fee DECIMAL (18, 2),
				BillKind SMALLINT,
				OccurTime datetime,
				Kind SMALLINT,
				SubKind SMALLINT,
				BusinessId CHAR (36),
				OrderNo VARCHAR (64),
				DoctorFeeGuid CHAR (36),
				State SMALLINT,
				PRIMARY KEY (Id)
			) DEFAULT CHARSET = utf8 ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();
*/
# 收入唯一号（公众支付订单表）
/*
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
			AND table_name = 'PayRecord'
			AND column_name = 'IsSettle'
		) THEN
			ALTER TABLE PayRecord ADD IsSettle TINYINT (1) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();
*/
# 收入唯一号（生收入明细表）
/*
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
			AND table_name = 'DoctorFee'
			AND column_name = 'DoctorFeeGuid'
		) THEN
			ALTER TABLE DoctorFee ADD DoctorFeeGuid CHAR (36) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();
*/
/*==============================================================*/
/* 2016-12-29 

删除表：CustomerBillDetail（用户账单表）

*/
/*==============================================================*/
DROP TABLE
IF EXISTS CustomerBillDetail;

/*==============================================================*/
/* 2017-01-03 

DoctorKeyWord（医生设备类型、擅长部位、擅长疾病关键字表）增加字段：Kind SMALLINT
                                              
*/
/*==============================================================*/
# 关键字类型（医生设备类型、擅长部位、擅长疾病关键字表）
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
	AND table_name = 'DoctorKeyWord'
	AND column_name = 'Kind'
) THEN
	ALTER TABLE DoctorKeyWord ADD Kind SMALLINT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2016-12-27 

增加表：AccessControl（访问控制表）

*/
/*==============================================================*/
# 访问控制表
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
	AND table_name = 'AccessControl'
) THEN
	CREATE TABLE AccessControl (
		Id INT NOT NULL auto_increment,
		ClientId VARCHAR (64),
		ClientSecret VARCHAR (64),
		ClientKind SMALLINT,
		ClientSystem SMALLINT,
		PRIMARY KEY (Id)
	) DEFAULT CHARSET = utf8 ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-01-10 

Customer（用户表）增加字段：RelationPhone nvarchar(20)
                                              
*/
/*==============================================================*/
# 关联手机号（用户表）
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
	AND table_name = 'Customer'
	AND column_name = 'RelationPhone'
) THEN
	ALTER TABLE Customer ADD RelationPhone VARCHAR (20) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-01-11 

增加表：StoreShareDiskSpace（机构存储共享磁盘空间消耗表）                                               

*/
/*==============================================================*/
# 用户账单表 
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
	AND table_name = 'StoreShareDiskSpace'
) THEN
	CREATE TABLE StoreShareDiskSpace (
		Id INT NOT NULL auto_increment,
		InstitutionGuid CHAR (36),
		InstitutionlCode VARCHAR (250),
		DataSource VARCHAR (64),
		DataSourceName VARCHAR (64),
		ExamineType VARCHAR (20),
		ExaminationCnt INT,
		DiskSpace FLOAT,
		BeginDate datetime,
		EndDate datetime,
		PRIMARY KEY (Id)
	) DEFAULT CHARSET = utf8 ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-01-12 

MyServiceDateShedule（我的公众服务日期绑定日期）修改字段：SheduleDate datetime
                                              
*/
/*==============================================================*/
# 关联手机号（用户表）
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
	AND table_name = 'MyServiceDateShedule'
	AND column_name = 'SheduleDate'
) THEN
	ALTER TABLE MyServiceDateShedule CHANGE SheduleDate SheduleDate datetime ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-01-22 

Customer（用户表）增加字段：ProID int、CityID int、CountyId int，
                  修改字段：ProName 为 ProvinceName nvarchar(20)、CityName 为 CityName nvarchar(20)、DisName 为 CountyName nvarchar(20)
                                              
*/
/*==============================================================*/
# 所在省（用户表）
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
	AND table_name = 'Customer'
	AND column_name = 'ProID'
) THEN
	ALTER TABLE Customer ADD ProID INT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 所在市（用户表）
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
	AND table_name = 'Customer'
	AND column_name = 'CityID'
) THEN
	ALTER TABLE Customer ADD CityID INT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 所在县（用户表）
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
	AND table_name = 'Customer'
	AND column_name = 'CountyId'
) THEN
	ALTER TABLE Customer ADD CountyId INT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 所在省份名称（用户表）
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
	AND table_name = 'Customer'
	AND column_name = 'ProName'
) THEN
	ALTER TABLE Customer CHANGE ProName ProvinceName VARCHAR (20) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 所在市名称（用户表）
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
	AND table_name = 'Customer'
	AND column_name = 'CityName'
) THEN
	ALTER TABLE Customer CHANGE CityName CityName VARCHAR (20) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 所在县名称（用户表）
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
	AND table_name = 'Customer'
	AND column_name = 'DisName'
) THEN
	ALTER TABLE Customer CHANGE DisName CountyName VARCHAR (20) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2016-12-27 

增加表：ServiceCenterPic（服务中心图片表）                                               

*/
/*==============================================================*/
# 服务中心图片表
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
	AND table_name = 'ServiceCenterPic'
) THEN
	CREATE TABLE ServiceCenterPic (
		Id INT NOT NULL auto_increment,
		ServiceCenterId INT,
		Kind SMALLINT,
		PicGuid CHAR (36),
		PRIMARY KEY (Id)
	) DEFAULT CHARSET = utf8 ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-02-09 

增加表：CenterExamineType（服务中心检查类型表）                                               

*/
/*==============================================================*/
# 服务中心检查类型表
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
	AND table_name = 'CenterExamineType'
) THEN
	CREATE TABLE CenterExamineType (
		Id INT NOT NULL auto_increment,
		ServiceCenterId INT,
		ExamineType VARCHAR (10),
		PRIMARY KEY (Id)
	) DEFAULT CHARSET = utf8 ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-02-21 

Refund（退款表）增加字段：RefundBatch nvarchar(64)，
                                                                
*/
/*==============================================================*/
# 退款流水号（唯一号）（退款表）
/*DROP PROCEDURE
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
			AND table_name = 'Refund'
			AND column_name = 'RefundBatch'
		) THEN
			ALTER TABLE Refund ADD RefundBatch VARCHAR (64) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();
*/
/*==============================================================*/
/* 2017-03-07 

PayRecord(公众支付订单表) 增加字段： CreateTime datetime

*/
/*==============================================================*/
# 创建时间（公众支付订单表）
/*DROP PROCEDURE
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
			AND table_name = 'PayRecord'
			AND column_name = 'CreateTime'
		) THEN
			ALTER TABLE PayRecord ADD CreateTime datetime ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();
*/
/*==============================================================*/
/* 2017-03-13 

HospitalGroup(医院集团、联合体或区域表) 修改字段： CustomerGuid 为 InstitutionGuid uniqueidentifier

*/
/*==============================================================*/
# InstitutionGuid（医院集团、联合体或区域表）
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
	AND table_name = 'HospitalGroup'
	AND column_name = 'CustomerGuid'
) THEN
	ALTER TABLE HospitalGroup CHANGE CustomerGuid InstitutionGuid CHAR (36) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-03-13 

DoctorFee(医生收入明细表) 增加字段： State SMALLINT

*/
/*==============================================================*/
# 结算状态（医生收入明细表） 
/*DROP PROCEDURE
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
			AND table_name = 'DoctorFee'
			AND column_name = 'State'
		) THEN
			ALTER TABLE DoctorFee ADD State SMALLINT ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();
*/
/*==============================================================*/
/* 2017-03-12 

增加表：MyFocusTeachCenter（我关注的服务中心 - 教学表）
                                              
*/
/*==============================================================*/
# 我关注的服务中心 - 教学表 
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
	AND table_name = 'MyFocusTeachCenter'
) THEN
	CREATE TABLE MyFocusTeachCenter (
		Id INT NOT NULL auto_increment,
		CustomerGuid CHAR (36),
		TeachCenterId INT,
		ThirdSubjectName VARCHAR (100),
		SubjectId INT,
		SubjectName VARCHAR (50),
		IsSecond TINYINT (1),
		Kind INT,
		IsRecieve TINYINT (1),
		PRIMARY KEY (Id)
	) DEFAULT CHARSET = utf8 ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-03-14 

增加表：InstitutionMapping（机构结对关系表）
                                              
*/
/*==============================================================*/
# 机构结对关系表 
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
	AND table_name = 'InstitutionMapping'
) THEN
	CREATE TABLE InstitutionMapping (
		Id INT NOT NULL auto_increment,
		MInstitutionGuid CHAR (36),
		CInstitutionGuid CHAR (36),
		IsRecord TINYINT (1),
		PRIMARY KEY (Id)
	) DEFAULT CHARSET = utf8 ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-03-22 

DoctorMember（会员医生表）增加索引
                                              
*/
/*==============================================================*/
# 索引（会员医生表）
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
	AND table_name = 'DoctorMember'
	AND index_name = 'IX_DoctorMember_IsExpert'
) THEN
	CREATE INDEX IX_DoctorMember_IsExpert ON DoctorMember (IsExpert) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'DoctorMember'
	AND index_name = 'IX_DoctorMember_IsPlat'
) THEN
	CREATE INDEX IX_DoctorMember_IsPlat ON DoctorMember (IsPlat) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-03-31 

增加表：QualityGroup（质控中心质控组表）
增加表：QualityGroupDoctor（质控组质控人员表）
增加表：QualityDoctorHospital（质控人员质控医院表）
QualityCenterHospital（质控中心质控医院表）增加字段：QualityGroupId INT 和索引
                                              
*/
/*==============================================================*/
# 质控中心质控组表
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
	AND table_name = 'QualityGroup'
) THEN
	CREATE TABLE QualityGroup (
		Id INT NOT NULL auto_increment,
		QualityCenterId INT,
		GroupName VARCHAR (250),
		PRIMARY KEY (Id)
	) DEFAULT CHARSET = utf8 ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 索引（质控中心质控组表）
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
	AND table_name = 'QualityGroup'
	AND index_name = 'IX_QG_QualityCenterId'
) THEN
	CREATE INDEX IX_QG_QualityCenterId ON QualityGroup (QualityCenterId) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 质控组质控人员表
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
	AND table_name = 'QualityGroupDoctor'
) THEN
	CREATE TABLE QualityGroupDoctor (
		Id INT NOT NULL auto_increment,
		QualityCenterId INT,
		QualityGroupId INT,
		CustomerGuid CHAR (36),
		PRIMARY KEY (Id)
	) DEFAULT CHARSET = utf8 ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 索引（质控组质控人员表）
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
	AND table_name = 'QualityGroupDoctor'
	AND index_name = 'IX_QGD_QualityCenterId'
) THEN
	CREATE INDEX IX_QGD_QualityCenterId ON QualityGroupDoctor (QualityCenterId) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'QualityGroupDoctor'
	AND index_name = 'IX_QGD_QualityGroupId'
) THEN
	CREATE INDEX IX_QGD_QualityGroupId ON QualityGroupDoctor (QualityGroupId) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'QualityGroupDoctor'
	AND index_name = 'IX_QGD_CustomerGuid'
) THEN
	CREATE INDEX IX_QGD_CustomerGuid ON QualityGroupDoctor (CustomerGuid) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 质控人员质控医院表
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
	AND table_name = 'QualityDoctorHospital'
) THEN
	CREATE TABLE QualityDoctorHospital (
		Id INT NOT NULL auto_increment,
		CustomerGuid CHAR (36),
		QualityCenterId INT,
		QualityGroupId INT,
		HospitalCode VARCHAR (250),
		HospitalName VARCHAR (250),
		PRIMARY KEY (Id)
	) DEFAULT CHARSET = utf8 ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 索引（质控人员质控医院表）
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
	AND table_name = 'QualityDoctorHospital'
	AND index_name = 'IX_QDH_CustomerGuid'
) THEN
	CREATE INDEX IX_QDH_CustomerGuid ON QualityDoctorHospital (CustomerGuid) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 质控组Id（质控中心质控医院表） 
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
	AND table_name = 'QualityCenterHospital'
	AND column_name = 'QualityGroupId'
) THEN
	ALTER TABLE QualityCenterHospital ADD QualityGroupId INT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 索引（质控中心质控医院表）
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
	AND table_name = 'QualityCenterHospital'
	AND index_name = 'IX_QCH_QualityGroupId'
) THEN
	CREATE INDEX IX_QCH_QualityGroupId ON QualityCenterHospital (QualityGroupId) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-04-01 

InstitutionOpen（机构开通的业务表）增加字段：IsService bit
DoctorService（医生开通服务表）增加字段：Kind SMALLINT
DoctorMember（会员医生表）增加字段：WorkNo nvarchar(20)
                                              
*/
/*==============================================================*/
# 是否服务（机构开通的业务表）
DROP PROCEDURE
IF EXISTS schema_change;  
DELIMITER //


CREATE PROCEDURE SCHEMA_change ()
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
	AND table_name = 'InstitutionOpen'
	AND column_name = 'IsService'
) THEN
	ALTER TABLE InstitutionOpen ADD IsService TINYINT (1) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 服务类型（医生开通服务表）
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
	AND table_name = 'DoctorService'
	AND column_name = 'Kind'
) THEN
	ALTER TABLE DoctorService ADD Kind SMALLINT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 医生工号（会员医生表）
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
	AND table_name = 'DoctorMember'
	AND column_name = 'WorkNo'
) THEN
	ALTER TABLE DoctorMember ADD WorkNo VARCHAR (20) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-04-06 

Institution（会员机构表）增加字段：ShortName nvarchar(100)、OwnerShipCode nvarchar(20)、OwnerShipName nvarchar(20)、BusinessNature SMALLINT、 TargetCode nvarchar(20)、TargetName nvarchar(20)、MedicalSubject nvarchar(2000)
InstitutionApply（合作机构注册申请表）增加字段：ShortName nvarchar(100)、OwnerShipCode nvarchar(20)、OwnerShipName nvarchar(20)、BusinessNature SMALLINT、 TargetCode nvarchar(20)、TargetName nvarchar(20)、MedicalSubject nvarchar(2000)
                                              
*/
/*==============================================================*/
# 医疗机构简称（会员机构表）
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
	AND table_name = 'Institution'
	AND column_name = 'ShortName'
) THEN
	ALTER TABLE Institution ADD ShortName VARCHAR (100) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 所有制形式代码（会员机构表）
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
	AND table_name = 'Institution'
	AND column_name = 'OwnerShipCode'
) THEN
	ALTER TABLE Institution ADD OwnerShipCode VARCHAR (20) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 所有制形式名称（会员机构表）
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
	AND table_name = 'Institution'
	AND column_name = 'OwnerShipName'
) THEN
	ALTER TABLE Institution ADD OwnerShipName VARCHAR (20) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 经营性质（会员机构表）
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
	AND table_name = 'Institution'
	AND column_name = 'BusinessNature'
) THEN
	ALTER TABLE Institution ADD BusinessNature SMALLINT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 服务对象代码（会员机构表）
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
	AND table_name = 'Institution'
	AND column_name = 'TargetCode'
) THEN
	ALTER TABLE Institution ADD TargetCode VARCHAR (20) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 服务对象名称（会员机构表）
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
	AND table_name = 'Institution'
	AND column_name = 'TargetName'
) THEN
	ALTER TABLE Institution ADD TargetName VARCHAR (20) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 诊疗科目（会员机构表）
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
	AND table_name = 'Institution'
	AND column_name = 'MedicalSubject'
) THEN
	ALTER TABLE Institution ADD MedicalSubject VARCHAR (2000) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 医疗机构简称（合作机构注册申请表）
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
	AND table_name = 'InstitutionApply'
	AND column_name = 'ShortName'
) THEN
	ALTER TABLE InstitutionApply ADD ShortName VARCHAR (100) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 所有制形式代码（合作机构注册申请表）
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
	AND table_name = 'InstitutionApply'
	AND column_name = 'OwnerShipCode'
) THEN
	ALTER TABLE InstitutionApply ADD OwnerShipCode VARCHAR (20) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 所有制形式名称（合作机构注册申请表）
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
	AND table_name = 'InstitutionApply'
	AND column_name = 'OwnerShipName'
) THEN
	ALTER TABLE InstitutionApply ADD OwnerShipName VARCHAR (20) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 经营性质（合作机构注册申请表）
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
	AND table_name = 'InstitutionApply'
	AND column_name = 'BusinessNature'
) THEN
	ALTER TABLE InstitutionApply ADD BusinessNature SMALLINT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 服务对象代码（合作机构注册申请表）
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
	AND table_name = 'InstitutionApply'
	AND column_name = 'TargetCode'
) THEN
	ALTER TABLE InstitutionApply ADD TargetCode VARCHAR (20) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 服务对象名称（合作机构注册申请表）
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
	AND table_name = 'InstitutionApply'
	AND column_name = 'TargetName'
) THEN
	ALTER TABLE InstitutionApply ADD TargetName VARCHAR (20) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 诊疗科目（合作机构注册申请表）
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
	AND table_name = 'InstitutionApply'
	AND column_name = 'MedicalSubject'
) THEN
	ALTER TABLE InstitutionApply ADD MedicalSubject VARCHAR (2000) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-04-07 

DoctorMember（会员医生表）增加字段：SignPicGuid uniqueidentifier
Customer（用户表）增加字段：PayPassword nvarchar(50)
                                              
*/
/*==============================================================*/
# 手写签名图片Guid（会员医生表）
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
	AND table_name = 'DoctorMember'
	AND column_name = 'SignPicGuid'
) THEN
	ALTER TABLE DoctorMember ADD SignPicGuid CHAR (36) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 支付密码（用户表）
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
	AND table_name = 'Customer'
	AND column_name = 'PayPassword'
) THEN
	ALTER TABLE Customer ADD PayPassword VARCHAR (50) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-04-11 

CustomerShare（用户分享表）增加字段：IsDelete bit
ShareTarget（分享对象表）增加字段：IsDelete bit
MyServiceDate（我的公众服务日期表）增加字段：WorkMode SMALLINT
                                              
*/
/*==============================================================*/
# IsDelete（用户分享表）
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
	AND table_name = 'CustomerShare'
	AND column_name = 'IsDelete'
) THEN
	ALTER TABLE CustomerShare ADD IsDelete TINYINT (1) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# IsDelete（分享对象表）
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
	AND table_name = 'ShareTarget'
	AND column_name = 'IsDelete'
) THEN
	ALTER TABLE ShareTarget ADD IsDelete TINYINT (1) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 公众服务工作模式（我的公众服务日期表）
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
	AND table_name = 'MyServiceDate'
	AND column_name = 'WorkMode'
) THEN
	ALTER TABLE MyServiceDate ADD WorkMode SMALLINT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-04-17 

Customer（用户表）增加字段：QQOpenId nvarchar(64)
InstitutionProPic（会员机构图片表）增加字段：AttributeValue nvarchar(64)
                                              
*/
/*==============================================================*/
# QQ OpenID（用户表）
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
	AND table_name = 'Customer'
	AND column_name = 'QQOpenId'
) THEN
	ALTER TABLE Customer ADD QQOpenId VARCHAR (64) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 关联属性（会员机构图片表）
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
	AND table_name = 'InstitutionProPic'
	AND column_name = 'AttributeValue'
) THEN
	ALTER TABLE InstitutionProPic ADD AttributeValue VARCHAR (64) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 索引（会员机构图片表）
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
	AND table_name = 'InstitutionProPic'
	AND index_name = 'IX_IPP_AttributeValue'
) THEN
	CREATE INDEX IX_IPP_AttributeValue ON InstitutionProPic (AttributeValue) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-04-21 

增加表：LicenseAgreement（授权协议记录表）
                                              
*/
/*==============================================================*/
# 授权协议记录表
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
	AND table_name = 'LicenseAgreement'
) THEN
	CREATE TABLE LicenseAgreement (
		Id INT NOT NULL auto_increment,
		CustomerGuid CHAR (36),
		LicenseId INT,
		AgreeResult SMALLINT,
		AgreeTime datetime,
		DigitalSignatureId INT,
		PRIMARY KEY (Id)
	) DEFAULT CHARSET = utf8 ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 索引（授权协议记录表）
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
	AND table_name = 'LicenseAgreement'
	AND index_name = 'IX_LA_CustomerGuid'
) THEN
	CREATE INDEX IX_LA_CustomerGuid ON LicenseAgreement (CustomerGuid) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'LicenseAgreement'
	AND index_name = 'IX_LA_LicenseId'
) THEN
	CREATE INDEX IX_LA_LicenseId ON LicenseAgreement (LicenseId) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-04-24 

CustomerConfig（用户或服务中心配置表）增加字段：ServiceCenterId INT
                                              
*/
/*==============================================================*/
# 服务中心Id（用户或服务中心配置表）
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
	AND table_name = 'CustomerConfig'
	AND column_name = 'ServiceCenterId'
) THEN
	ALTER TABLE CustomerConfig ADD ServiceCenterId INT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 索引（用户或服务中心配置表）
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
	AND table_name = 'CustomerConfig'
	AND index_name = 'IX_CConfig_ServiceCenterId'
) THEN
	CREATE INDEX IX_CConfig_ServiceCenterId ON CustomerConfig (ServiceCenterId) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-04-27 

增加表：ServiceCenterSetup（服务中心展示配置表）
                                              
*/
/*==============================================================*/
# 服务中心展示配置表
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
	AND table_name = 'ServiceCenterSetup'
) THEN
	CREATE TABLE ServiceCenterSetup (
		Id INT NOT NULL auto_increment,
		ServiceCenterId INT,
		CustomerGuid CHAR (36),
		InstitutionGuid CHAR (36),
		ModuleId SMALLINT,
		Kind SMALLINT,
		PRIMARY KEY (Id)
	) DEFAULT CHARSET = utf8 ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 索引（服务中心展示配置表）
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
	AND table_name = 'ServiceCenterSetup'
	AND index_name = 'IX_SCS_ServiceCenterId'
) THEN
	CREATE INDEX IX_SCS_ServiceCenterId ON ServiceCenterSetup (ServiceCenterId) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-04-27 

Institution（会员机构表）、InstitutionApply（合作机构注册申请表）增加字段：Phone nvarchar(20)
                                              
*/
/*==============================================================*/
# 座机电话（会员机构表）
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
	AND table_name = 'Institution'
	AND column_name = 'Phone'
) THEN
	ALTER TABLE Institution ADD Phone VARCHAR (20) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 座机电话（合作机构注册申请表）
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
	AND table_name = 'InstitutionApply'
	AND column_name = 'Phone'
) THEN
	ALTER TABLE InstitutionApply ADD Phone VARCHAR (20) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-04-28 

Institution（会员机构表）增加字段：Url nvarchar(200)
                                              
*/
/*==============================================================*/
# 官网地址（会员机构表）
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
	AND table_name = 'Institution'
	AND column_name = 'Url'
) THEN
	ALTER TABLE Institution ADD Url VARCHAR (200) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-05-02 

Customer（用户表）增加字段：QQUnionId nvarchar(64)
                                              
*/
/*==============================================================*/
# QQ UnionID（用户表）
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
	AND table_name = 'Customer'
	AND column_name = 'QQUnionId'
) THEN
	ALTER TABLE Customer ADD QQUnionId VARCHAR (64) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-05-09 

Customer（用户表）增加字段：ShiMinUnionId nvarchar(64)
                                              
*/
/*==============================================================*/
# 市民云UnionID（用户表）
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
	AND table_name = 'Customer'
	AND column_name = 'ShiMinUnionId'
) THEN
	ALTER TABLE Customer ADD ShiMinUnionId VARCHAR (64) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-05-18 

Customer（用户表）增加字段：PaperKind SMALLINT、OtherPaperNumber nvarchar(30)、OtherPaperPicGuid uniqueidentifier 
DoctorMember（会员医生表）增加字段：OfficeCode nvarchar(30)  
DoctorOffice（医生对应二级科室表）增加字段：SubjectSecondCode nvarchar(30) 
                                           
*/
/*==============================================================*/
# 身份证件类型（用户表）
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
	AND table_name = 'Customer'
	AND column_name = 'PaperKind'
) THEN
	ALTER TABLE Customer ADD PaperKind SMALLINT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 其它身份证件号码（用户表）
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
	AND table_name = 'Customer'
	AND column_name = 'OtherPaperNumber'
) THEN
	ALTER TABLE Customer ADD OtherPaperNumber VARCHAR (30) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 其它身份证件图片Guid（用户表）
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
	AND table_name = 'Customer'
	AND column_name = 'OtherPaperPicGuid'
) THEN
	ALTER TABLE Customer ADD OtherPaperPicGuid CHAR (36) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 一级科室代码（会员医生表）
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
	AND table_name = 'DoctorMember'
	AND column_name = 'OfficeCode'
) THEN
	ALTER TABLE DoctorMember ADD OfficeCode VARCHAR (30) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 二级科室代码（医生对应二级科室表）
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
	AND table_name = 'DoctorOffice'
	AND column_name = 'SubjectSecondCode'
) THEN
	ALTER TABLE DoctorOffice ADD SubjectSecondCode VARCHAR (30) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-05-18 

ServiceCenter（服务中心表）增加字段LocationX nvarchar(20)、LocationY nvarchar(20) 
                                           
*/
/*==============================================================*/
# 百度地图纬度（服务中心表）
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
	AND table_name = 'ServiceCenter'
	AND column_name = 'LocationX'
) THEN
	ALTER TABLE ServiceCenter ADD LocationX VARCHAR (20) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 百度地图经度（服务中心表）
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
	AND table_name = 'ServiceCenter'
	AND column_name = 'LocationY'
) THEN
	ALTER TABLE ServiceCenter ADD LocationY VARCHAR (20) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-05-25 

Institution（会员机构表）增加字段：PushCodePicGuid uniqueidentifier
                                           
*/
/*==============================================================*/
# 地推二维码logo图片Guid（会员机构表）
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
	AND table_name = 'Institution'
	AND column_name = 'PushCodePicGuid'
) THEN
	ALTER TABLE Institution ADD PushCodePicGuid CHAR (36) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-06-12 

Customer（用户表）增加字段：IsSync bit
                                              
*/
/*==============================================================*/
# 是否已同步（门诊部）（用户表）
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
	AND table_name = 'Customer'
	AND column_name = 'IsSync'
) THEN
	ALTER TABLE Customer ADD IsSync TINYINT (1) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 索引（用户表）
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
	AND table_name = 'Customer'
	AND index_name = 'IX_Customer_IsSync'
) THEN
	CREATE INDEX IX_Customer_IsSync ON Customer (IsSync) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-06-14

MyCollection（我的收藏（关注）表）增加字段：CollectionJson nvarchar(300) 

*/
/*==============================================================*/
# Json详细信息（我的收藏（关注）表）
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
	AND table_name = 'MyCollection'
	AND column_name = 'CollectionJson'
) THEN
	ALTER TABLE MyCollection ADD CollectionJson VARCHAR (300) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-06-23

Customer（用户表）增加字段：Source SMALLINT 

*/
/*==============================================================*/
# 用户来源（用户表）
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
	AND table_name = 'Customer'
	AND column_name = 'Source'
) THEN
	ALTER TABLE Customer ADD Source SMALLINT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-07-06 

增加表：CloudAPIServer（云朵API服务器表）
                                              
*/
/*==============================================================*/
# 云朵API服务器表
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
	AND table_name = 'CloudAPIServer'
) THEN
	CREATE TABLE CloudAPIServer (
		Id INT NOT NULL auto_increment,
		CloudId INT,
		ICDCrmIP VARCHAR (100),
		ICDCommonIP VARCHAR (100),
		ICDPublicIP VARCHAR (100),
		ICDMedIP VARCHAR (100),
		ICIDCASIP VARCHAR (100),
		PRIMARY KEY (Id)
	) DEFAULT CHARSET = utf8 ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 索引（云朵API服务器表）
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
	AND table_name = 'CloudAPIServer'
	AND index_name = 'IX_CAS_CloudId'
) THEN
	CREATE INDEX IX_CAS_CloudId ON CloudAPIServer (CloudId) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-07-13 

MyCollection（我的收藏（关注））修改字段：CollectionJson nvarchar(max)
                                              
*/
/*==============================================================*/
# Json详细信息（我的收藏（关注））
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
	AND table_name = 'MyCollection'
	AND column_name = 'CollectionJson'
) THEN
	ALTER TABLE MyCollection CHANGE CollectionJson CollectionJson LONGTEXT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-07-17

CloudAPIServer（云朵API服务器表）增加字段：Version nvarchar(30)

*/
/*==============================================================*/
# 版本号（云朵API服务器表）
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
	AND table_name = 'CloudAPIServer'
	AND column_name = 'Version'
) THEN
	ALTER TABLE CloudAPIServer ADD Version VARCHAR (30) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-07-31 

增加表：MDTGroup（MDT专家组表）、MDTGroupDoctor（MDT专家组成员表）
                                              
*/
/*==============================================================*/
# MDT专家组表
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
	AND table_name = 'MDTGroup'
) THEN
	CREATE TABLE MDTGroup (
		Id INT NOT NULL auto_increment,
		ServiceCenterId INT,
		MDTGroupName VARCHAR (250),
		CustomerGuid CHAR (36),
		CustomerName VARCHAR (50),
		TelPhone VARCHAR (250),
		Introduction VARCHAR (250),
		PRIMARY KEY (Id)
	) DEFAULT CHARSET = utf8 ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 索引（MDT专家组表）
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
	AND table_name = 'MDTGroup'
	AND index_name = 'IX_MDTG_ServiceCenterId'
) THEN
	CREATE INDEX IX_MDTG_ServiceCenterId ON MDTGroup (ServiceCenterId) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'MDTGroup'
	AND index_name = 'IX_MDTG_CustomerGuid'
) THEN
	CREATE INDEX IX_MDTG_CustomerGuid ON MDTGroup (CustomerGuid) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# MDT专家组成员表
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
	AND table_name = 'MDTGroupDoctor'
) THEN
	CREATE TABLE MDTGroupDoctor (
		Id INT NOT NULL auto_increment,
		MDTGroupId INT,
		CustomerGuid CHAR (36),
		CustomerName VARCHAR (50),
		ServiceCenterId INT,
		Type SMALLINT,
		PRIMARY KEY (Id)
	) DEFAULT CHARSET = utf8 ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 索引（MDT专家组成员表表）
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
	AND table_name = 'MDTGroupDoctor'
	AND index_name = 'IX_MDTGD_MDTGroupId'
) THEN
	CREATE INDEX IX_MDTGD_MDTGroupId ON MDTGroupDoctor (MDTGroupId) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'MDTGroupDoctor'
	AND index_name = 'IX_MDTGD_CustomerGuid'
) THEN
	CREATE INDEX IX_MDTGD_CustomerGuid ON MDTGroupDoctor (CustomerGuid) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'MDTGroupDoctor'
	AND index_name = 'IX_MDTGD_ServiceCenterId'
) THEN
	CREATE INDEX IX_MDTGD_ServiceCenterId ON MDTGroupDoctor (ServiceCenterId) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-08-09

CustomerConfig（用户或服务中心、机构配置表）增加字段：InstitutionGuid uniqueidentifier

*/
/*==============================================================*/
# InstitutionGuid（用户或服务中心、机构配置表）
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
	AND table_name = 'CustomerConfig'
	AND column_name = 'InstitutionGuid'
) THEN
	ALTER TABLE CustomerConfig ADD InstitutionGuid CHAR (36) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 索引（用户或服务中心、机构配置表）
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
	AND table_name = 'CustomerConfig'
	AND index_name = 'IX_CConfig_InstitutionGuid'
) THEN
	CREATE INDEX IX_CConfig_InstitutionGuid ON CustomerConfig (InstitutionGuid) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-08-22 

DoctorMember（会员医生表）修改字段：Memo nvarchar(500)
增加表：AppVersion（App版本管理表）
                                              
*/
/*==============================================================*/
# 备注（会员医生表）
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
	AND table_name = 'DoctorMember'
	AND column_name = 'Memo'
) THEN
	ALTER TABLE DoctorMember CHANGE Memo Memo VARCHAR (500) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

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
/* 2017-08-28 

Institution（会员机构表）增加字段：ServiceDNS nvarchar(100)、IsRecommend bit、IsTop bit、Order INT
ServiceCenter（服务中心表）增加字段：ServiceDNS nvarchar(100)、Telphone nvarchar(20)
增加表：DoctorMemberSubDefine（会员医生子系统自定义推荐、置顶和排序表）
                                              
*/
/*==============================================================*/
# 机构自定义域名（会员机构表）
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
	AND table_name = 'Institution'
	AND column_name = 'ServiceDNS'
) THEN
	ALTER TABLE Institution ADD ServiceDNS VARCHAR (100) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 是否首页推荐（会员机构表）
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
	AND table_name = 'Institution'
	AND column_name = 'IsRecommend'
) THEN
	ALTER TABLE Institution ADD IsRecommend TINYINT (1) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 是否置顶（会员机构表）
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
	AND table_name = 'Institution'
	AND column_name = 'IsTop'
) THEN
	ALTER TABLE Institution ADD IsTop TINYINT (1) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 机构自定义域名（会员机构表）
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
	AND table_name = 'Institution'
	AND column_name = 'Order'
) THEN
	ALTER TABLE Institution ADD `Order` INT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 服务中心自定义域名（服务中心表）
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
	AND table_name = 'ServiceCenter'
	AND column_name = 'ServiceDNS'
) THEN
	ALTER TABLE ServiceCenter ADD ServiceDNS VARCHAR (100) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 服务电话（服务中心表）
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
	AND table_name = 'ServiceCenter'
	AND column_name = 'Phone'
) THEN
	ALTER TABLE ServiceCenter ADD Phone VARCHAR (20) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 会员医生子系统自定义推荐、置顶和排序表
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
	AND table_name = 'DoctorMemberSubDefine'
) THEN
	CREATE TABLE DoctorMemberSubDefine (
		Id INT NOT NULL auto_increment,
		CustomerGuid CHAR (36),
		SubSystem SMALLINT,
		ServiceCenterId INT,
		IsRecommend TINYINT (1),
		IsTop TINYINT (1),
		`Order` INT,
		PRIMARY KEY (Id)
	) DEFAULT CHARSET = utf8 ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 索引（会员医生子系统自定义推荐、置顶和排序表）
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
	AND table_name = 'DoctorMemberSubDefine'
	AND index_name = 'IX_DMSD_CustomerGuid'
) THEN
	CREATE INDEX IX_DMSD_CustomerGuid ON DoctorMemberSubDefine (CustomerGuid) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-10-18 

增加表：ServiceDNS（服务中心自定义域名表）
                                              
*/
/*==============================================================*/
# 服务中心自定义域名表
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
	AND table_name = 'ServiceDNS'
) THEN
	CREATE TABLE ServiceDNS (
		Id INT NOT NULL auto_increment,
		InstitutionGuid CHAR (36),
		CrmDNS VARCHAR (50),
		MedDNS VARCHAR (50),
		EduDNS VARCHAR (50),
		QcDNS VARCHAR (50),
		SsDNS VARCHAR (50),
		DmDNS VARCHAR (50),
		OrgDNS VARCHAR (50),
		OcDNS VARCHAR (50),
		PRIMARY KEY (Id)
	) DEFAULT CHARSET = utf8 ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 新增机构GUID（服务中心自定义域名表）
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
	AND table_name = 'ServiceDNS'
	AND column_name = 'InstitutionGuid'
) THEN
	ALTER TABLE ServiceDNS ADD InstitutionGuid CHAR (36) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 索引（服务中心自定义域名表）
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
	AND table_name = 'ServiceDNS'
	AND index_name = 'IX_SD_InstitutionGuid'
) THEN
	CREATE INDEX IX_SD_InstitutionGuid ON ServiceDNS (InstitutionGuid) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-10-24 

增加表：MonitorManager（监控管理员和维护人员表）
                                              
*/
/*==============================================================*/
# 监控管理员和维护人员表
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
	AND table_name = 'MonitorManager'
) THEN
	CREATE TABLE MonitorManager (
		Id INT NOT NULL auto_increment,
		CustomerGuid CHAR (36),
		Unit VARCHAR (100),
		Depart VARCHAR (64),
		Office VARCHAR (64),
		Kind SMALLINT,
		HospitalCode VARCHAR (250),
		HospitalName VARCHAR (250),
		IsHospital TINYINT (1),
		PRIMARY KEY (Id)
	) DEFAULT CHARSET = utf8 ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 索引（监控管理员和维护人员表）
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
	AND table_name = 'MonitorManager'
	AND index_name = 'IX_MM_CustomerGuid'
) THEN
	CREATE INDEX IX_MM_CustomerGuid ON MonitorManager (CustomerGuid) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-12-14 

Leader（行政管理人员表）增加字段：ProID int、ProvinceName nvarchar(20)、CityID int、CityName nvarchar(20)、CountyId int、CountyName nvarchar(20)
                                              
*/
/*==============================================================*/
# 所在省（行政管理人员表）
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
	AND table_name = 'Leader'
	AND column_name = 'ProID'
) THEN
	ALTER TABLE Leader ADD ProID INT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 所在省名称（行政管理人员表）
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
	AND table_name = 'Leader'
	AND column_name = 'ProvinceName'
) THEN
	ALTER TABLE Leader ADD ProvinceName VARCHAR (20) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 所在市（行政管理人员表）
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
	AND table_name = 'Leader'
	AND column_name = 'CityID'
) THEN
	ALTER TABLE Leader ADD CityID INT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 所在市名称（行政管理人员表）
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
	AND table_name = 'Leader'
	AND column_name = 'CityName'
) THEN
	ALTER TABLE Leader ADD CityName VARCHAR (20) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 所在县（行政管理人员表）
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
	AND table_name = 'Leader'
	AND column_name = 'CountyId'
) THEN
	ALTER TABLE Leader ADD CountyId INT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 所在县名称（行政管理人员表）
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
	AND table_name = 'Leader'
	AND column_name = 'CountyName'
) THEN
	ALTER TABLE Leader ADD CountyName VARCHAR (20) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-12-19 

MyCollection（我的收藏（关注）表）增加索引
                                              
*/
/*==============================================================*/
# 索引（我的收藏（关注）表）
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
	AND table_name = 'MyCollection'
	AND index_name = 'IX_Mco_CollectionId'
) THEN
	CREATE INDEX IX_Mco_CollectionId ON MyCollection (CollectionId) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-12-20 

增加表：MedicalStaff（医护人员表）
                                              
*/
/*==============================================================*/
# 医护人员表
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
	AND table_name = 'MedicalStaff'
) THEN
	CREATE TABLE MedicalStaff (
		Id INT NOT NULL auto_increment,
		CustomerGuid CHAR (36),
		OfficeId INT,
		OfficeCode VARCHAR (30),
		Office VARCHAR (30),
		SubjectSecondId INT,
		SubjectSecondCode VARCHAR (30),
		SubjectSecondName VARCHAR (30),
		HospitalCode VARCHAR (250),
		HospitalName VARCHAR (250),
		PRIMARY KEY (Id)
	) DEFAULT CHARSET = utf8 ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 索引（医护人员表）
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
	AND table_name = 'MedicalStaff'
	AND index_name = 'IX_MS_CustomerGuid'
) THEN
	CREATE INDEX IX_MS_CustomerGuid ON MedicalStaff (CustomerGuid) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'MedicalStaff'
	AND index_name = 'IX_MS_HospitalCode'
) THEN
	CREATE INDEX IX_MS_HospitalCode ON MedicalStaff (HospitalCode) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2018-01-05

MedicalStaff（医护人员表）增加字段：WorkNo nvarchar(20)

*/
/*==============================================================*/
# 医护工号（医护人员表）
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
	AND table_name = 'MedicalStaff'
	AND column_name = 'WorkNo'
) THEN
	ALTER TABLE MedicalStaff ADD WorkNo VARCHAR (20) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2018-01-10

Problem（问题解答表）增加字段：CustomerKind SMALLINT、SourceSystem SMALLINT、TypeCode nvarchar(30)、TypeName nvarchar(30)

*/
/*==============================================================*/
# 用户类型（问题解答表）
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
	AND table_name = 'Problem'
	AND column_name = 'CustomerKind'
) THEN
	ALTER TABLE Problem ADD CustomerKind SMALLINT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 所属系统（问题解答表）
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
	AND table_name = 'Problem'
	AND column_name = 'SourceSystem'
) THEN
	ALTER TABLE Problem ADD SourceSystem SMALLINT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 问题分类Code（问题解答表）
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
	AND table_name = 'Problem'
	AND column_name = 'TypeCode'
) THEN
	ALTER TABLE Problem ADD TypeCode VARCHAR (30) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 问题分类名称（问题解答表）
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
	AND table_name = 'Problem'
	AND column_name = 'TypeName'
) THEN
	ALTER TABLE Problem ADD TypeName VARCHAR (30) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2018-01-23 

增加表：Role_Category_Mapping（角色所属类别表）
DoctorServiceCenter（医生、医护人员所属服务中心（多点执业）表）增加字段：IsConfirm bit
PlatSignRecord（会员机构和平台签约记录表）增加字段：Reason nvarchar(300)
HospitalCenterSignRecord（合作医院和服务中心签约记录表）增加字段：Reason nvarchar(300)
                                              
*/
/*==============================================================*/
# 角色所属类别表
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
	AND table_name = 'Role_Category_Mapping'
) THEN
	CREATE TABLE Role_Category_Mapping (
		Id INT NOT NULL auto_increment,
		CustomerRole_Id INT,
		Category VARCHAR (255),
		PRIMARY KEY (Id)
	) DEFAULT CHARSET = utf8 ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 索引（角色所属类别表）
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
	AND table_name = 'Role_Category_Mapping'
	AND index_name = 'IX_RCM_CustomerRole_Id'
) THEN
	CREATE INDEX IX_RCM_CustomerRole_Id ON Role_Category_Mapping (CustomerRole_Id) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'Role_Category_Mapping'
	AND index_name = 'IX_RCM_Category'
) THEN
	CREATE INDEX IX_RCM_Category ON Role_Category_Mapping (Category) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 已确认标识（医生、医护人员所属服务中心（多点执业）表）
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
	AND table_name = 'DoctorServiceCenter'
	AND column_name = 'IsConfirm'
) THEN
	ALTER TABLE DoctorServiceCenter ADD IsConfirm TINYINT (1) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 拒绝原因（会员机构和平台签约记录表）
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
	AND table_name = 'PlatSignRecord'
	AND column_name = 'Reason'
) THEN
	ALTER TABLE PlatSignRecord ADD Reason VARCHAR (300) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 拒绝原因（合作医院和服务中心签约记录表）
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
	AND table_name = 'HospitalCenterSignRecord'
	AND column_name = 'Reason'
) THEN
	ALTER TABLE HospitalCenterSignRecord ADD Reason VARCHAR (300) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2018-02-28

InstitutionOpen（机构开通的业务表）增加字段：Kind SMALLINT
ServiceOpen（服务中心开通的服务表）增加字段：Kind SMALLINT

*/
/*==============================================================*/
# 服务类型（机构开通的业务表）
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
	AND table_name = 'InstitutionOpen'
	AND column_name = 'Kind'
) THEN
	ALTER TABLE InstitutionOpen ADD Kind SMALLINT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 服务类型（服务中心开通的服务表）
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
	AND table_name = 'ServiceOpen'
	AND column_name = 'Kind'
) THEN
	ALTER TABLE ServiceOpen ADD Kind SMALLINT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2018-03-07

CustomerShare（用户分享表）增加字段：State SMALLINT
增加表：InstitutionDataAccess（机构数据互访授权表）

*/
/*==============================================================*/
# 分享状态（用户分享表）
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
	AND table_name = 'CustomerShare'
	AND column_name = 'State'
) THEN
	ALTER TABLE CustomerShare ADD State SMALLINT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 机构数据互访授权表
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
	AND table_name = 'InstitutionDataAccess'
) THEN
	CREATE TABLE InstitutionDataAccess (
		Id INT NOT NULL auto_increment,
		GrantInstitutionGuid CHAR (36),
		GrantInstitutionlCode VARCHAR (250),
		GrantInstitutionlName VARCHAR (250),
		AccessInstitutionGuid CHAR (36),
		AccessInstitutionlCode VARCHAR (250),
		AccessInstitutionlName VARCHAR (250),
		State SMALLINT,
		ReqestDate datetime,
		LastOperateDate datetime,
		PRIMARY KEY (Id)
	) DEFAULT CHARSET = utf8 ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 索引（机构数据互访授权表）
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
	AND table_name = 'InstitutionDataAccess'
	AND index_name = 'IX_IDA_GrantInstitutionGuid'
) THEN
	CREATE INDEX IX_IDA_GrantInstitutionGuid ON InstitutionDataAccess (GrantInstitutionGuid) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'InstitutionDataAccess'
	AND index_name = 'IX_IDA_GrantInstitutionlCode'
) THEN
	CREATE INDEX IX_IDA_GrantInstitutionlCode ON InstitutionDataAccess (GrantInstitutionlCode) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'InstitutionDataAccess'
	AND index_name = 'IX_IDA_AccessInstitutionGuid'
) THEN
	CREATE INDEX IX_IDA_AccessInstitutionGuid ON InstitutionDataAccess (AccessInstitutionGuid) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'InstitutionDataAccess'
	AND index_name = 'IX_IDA_State'
) THEN
	CREATE INDEX IX_IDA_State ON InstitutionDataAccess (State) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2018-03-15

CustomerShare（用户分享表）增加字段：InstitutionGuid uniqueidentifier
CustomerShare（用户分享表）增加索引

*/
/*==============================================================*/
# 机构Guid（用户分享表）
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
	AND table_name = 'CustomerShare'
	AND column_name = 'InstitutionGuid'
) THEN
	ALTER TABLE CustomerShare ADD InstitutionGuid CHAR (36) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 索引（用户分享表）
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
	AND table_name = 'CustomerShare'
	AND index_name = 'IX_CS_InstitutionGuid'
) THEN
	CREATE INDEX IX_CS_InstitutionGuid ON CustomerShare (InstitutionGuid) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2018-03-30

InstitutionOpen（机构开通的业务表）增加字段：State SMALLINT

*/
/*==============================================================*/
# 服务状态（机构开通的业务表）
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
	AND table_name = 'InstitutionOpen'
	AND column_name = 'State'
) THEN
	ALTER TABLE InstitutionOpen ADD State SMALLINT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2018-04-02

CustomerConfig（用户或服务中心、机构配置表（个性化参数）表）增加字段：ConfigItemDesc nvarchar(300)、ConfigSystem SMALLINT

*/
/*==============================================================*/
# 用户配置项描述（用户或服务中心、机构配置表（个性化参数）表）
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
	AND table_name = 'CustomerConfig'
	AND column_name = 'ConfigItemDesc'
) THEN
	ALTER TABLE CustomerConfig ADD ConfigItemDesc VARCHAR (300) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 所属业务系统（用户或服务中心、机构配置表（个性化参数）表）
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
	AND table_name = 'CustomerConfig'
	AND column_name = 'ConfigSystem'
) THEN
	ALTER TABLE CustomerConfig ADD ConfigSystem SMALLINT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2018-04-12

增加表：Subscribe（用户订阅表）

*/
/*==============================================================*/
# 用户订阅表
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
	AND table_name = 'Subscribe'
) THEN
	CREATE TABLE Subscribe (
		Id INT NOT NULL auto_increment,
		SubscribeGuid CHAR (36),
		Kind SMALLINT,
		SubscribeContent SMALLINT,
		SubscribeCycle SMALLINT,
		Method SMALLINT,
		InstitutionGuid CHAR (36),
		CustomerGuid CHAR (36),
		CustomerName VARCHAR (50),
		SubscribeDate datetime,
		State SMALLINT,
		PRIMARY KEY (Id)
	) DEFAULT CHARSET = utf8 ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 索引（用户订阅表）
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
	AND table_name = 'Subscribe'
	AND index_name = 'IX_Subbe_SubscribeGuid'
) THEN
	CREATE INDEX IX_Subbe_SubscribeGuid ON Subscribe (SubscribeGuid) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'Subscribe'
	AND index_name = 'IX_Subbe_SubscribeContent'
) THEN
	CREATE INDEX IX_Subbe_SubscribeContent ON Subscribe (SubscribeContent) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'Subscribe'
	AND index_name = 'IX_Subbe_SubscribeCycle'
) THEN
	CREATE INDEX IX_Subbe_SubscribeCycle ON Subscribe (SubscribeCycle) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'Subscribe'
	AND index_name = 'IX_Subbe_InstitutionGuid'
) THEN
	CREATE INDEX IX_Subbe_InstitutionGuid ON Subscribe (InstitutionGuid) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'Subscribe'
	AND index_name = 'IX_Subbe_CustomerGuid'
) THEN
	CREATE INDEX IX_Subbe_CustomerGuid ON Subscribe (CustomerGuid) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'Subscribe'
	AND index_name = 'IX_Subbe_State'
) THEN
	CREATE INDEX IX_Subbe_State ON Subscribe (State) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2018-04-20

MyCollection（我的收藏（关注）表）增加字段：PatientName nvarchar(50)、ICDCode nvarchar(64)、AcrCode nvarchar(64)
MyCollection（我的收藏（关注）表）增加索引

*/
/*==============================================================*/
# 患者姓名（我的收藏（关注）表）
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
	AND table_name = 'MyCollection'
	AND column_name = 'PatientName'
) THEN
	ALTER TABLE MyCollection ADD PatientName VARCHAR (50) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# ICD10代码（我的收藏（关注）表）
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
	AND table_name = 'MyCollection'
	AND column_name = 'ICDCode'
) THEN
	ALTER TABLE MyCollection ADD ICDCode VARCHAR (64) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# ACR代码（我的收藏（关注）表）
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
	AND table_name = 'MyCollection'
	AND column_name = 'AcrCode'
) THEN
	ALTER TABLE MyCollection ADD AcrCode VARCHAR (64) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 索引（我的收藏（关注）表）
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
	AND table_name = 'MyCollection'
	AND index_name = 'IX_MCo_PatientName'
) THEN
	CREATE INDEX IX_MCo_PatientName ON MyCollection (PatientName) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'MyCollection'
	AND index_name = 'IX_MCo_ICDCode'
) THEN
	CREATE INDEX IX_MCo_ICDCode ON MyCollection (ICDCode) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'MyCollection'
	AND index_name = 'IX_MCo_AcrCode'
) THEN
	CREATE INDEX IX_MCo_AcrCode ON MyCollection (AcrCode) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2018-05-21

Institution（会员机构表）增加字段：IsToMPI bit

*/
/*==============================================================*/
# 是否已同步到患者主索引（会员机构表）
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
	AND table_name = 'Institution'
	AND column_name = 'IsToMPI'
) THEN
	ALTER TABLE Institution ADD IsToMPI TINYINT (1) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2018-05-28

增加表：MemberDoctorService（合作医院和医生之间协议开通服务表）

*/
/*==============================================================*/
# 合作医院和医生之间协议开通服务表
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
	AND table_name = 'MemberDoctorService'
) THEN
	CREATE TABLE MemberDoctorService (
		Id INT NOT NULL auto_increment,
		InstitutionGuid CHAR (36),
		HospitalCode VARCHAR (250),
		ServiceCenterId INT,
		CustomerGuid CHAR (36),
		CustomerName VARCHAR (50),
		CustomerPriority SMALLINT,
		ServiceTypeCode VARCHAR (100),
		ServiceTypeName VARCHAR (100),
		BeginDate datetime,
		EndDate datetime,
		IsAudit TINYINT (1),
		PRIMARY KEY (Id)
	) DEFAULT CHARSET = utf8 ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2018-06-26

DoctorOffice（医生对应科室表）增加字段：SubjectFirstId INT、SubjectFirstCode nvarchar(30)、SubjectFirstName nvarchar(30)

*/
/*==============================================================*/
# 一级科室Id（医生对应科室表）
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
	AND table_name = 'DoctorOffice'
	AND column_name = 'SubjectFirstId'
) THEN
	ALTER TABLE DoctorOffice ADD SubjectFirstId INT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 一级科室代码（医生对应科室表）
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
	AND table_name = 'DoctorOffice'
	AND column_name = 'SubjectFirstCode'
) THEN
	ALTER TABLE DoctorOffice ADD SubjectFirstCode VARCHAR (30) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 一级科室名称（医生对应科室表）
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
	AND table_name = 'DoctorOffice'
	AND column_name = 'SubjectFirstName'
) THEN
	ALTER TABLE DoctorOffice ADD SubjectFirstName VARCHAR (30) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2018-08-14

DoctorService（医生、医护人员开通服务表）增加字段：Initiator SMALLINT

*/
/*==============================================================*/
# 开通服务发起方（医生、医护人员开通服务表）
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
	AND table_name = 'DoctorService'
	AND column_name = 'Initiator'
) THEN
	ALTER TABLE DoctorService ADD Initiator SMALLINT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2018-08-15

PlatSignRecord（会员机构和平台签约记录表）增加字段：CustomerGuid uniqueidentifier
CenterSignRecord（服务中心签约记录表）增加字段：CustomerGuid uniqueidentifier

*/
/*==============================================================*/
# 签约人Guid（会员机构和平台签约记录表）
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
	AND table_name = 'PlatSignRecord'
	AND column_name = 'CustomerGuid'
) THEN
	ALTER TABLE PlatSignRecord ADD CustomerGuid CHAR (36) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 签约人Guid（服务中心签约记录表）
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
	AND table_name = 'CenterSignRecord'
	AND column_name = 'CustomerGuid'
) THEN
	ALTER TABLE CenterSignRecord ADD CustomerGuid CHAR (36) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2018-08-23

Customer（用户表）增加字段：Nationality nvarchar(20)

*/
/*==============================================================*/
# 国籍（用户表）
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
	AND table_name = 'Customer'
	AND column_name = 'Nationality'
) THEN
	ALTER TABLE Customer ADD Nationality VARCHAR (20) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2018-08-27

DoctorMember（会员医生表）增加字段：SocialTenure nvarchar(500)

*/
/*==============================================================*/
# 社会任职（会员医生表）
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
	AND table_name = 'DoctorMember'
	AND column_name = 'SocialTenure'
) THEN
	ALTER TABLE DoctorMember ADD SocialTenure VARCHAR (500) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2018-09-07

增加表：RoleGroup（角色权限分组表）、RolePermission（角色细分权限表）、Permission_Group_Mapping（角色分组权限表）、Customer_Group_Mapping（用户与角色分组关系表）

*/
/*==============================================================*/
# 角色权限分组表
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
	AND table_name = 'RoleGroup'
) THEN
	CREATE TABLE RoleGroup (
		Id INT NOT NULL auto_increment,
		NAME VARCHAR (64),
		COMMENT VARCHAR (255),
		Config VARCHAR (1024),
		RoleName VARCHAR (255),
		Category VARCHAR (255) NOT NULL,
		ServiceCenterId INT,
		InstitutionGuid CHAR (36),
		Kind SMALLINT,
		PRIMARY KEY (Id)
	) DEFAULT CHARSET = utf8 ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 角色细分权限表
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
	AND table_name = 'RolePermission'
) THEN
	CREATE TABLE RolePermission (
		Id INT NOT NULL auto_increment,
		RoleName VARCHAR (255),
		NAME VARCHAR (255),
		SystemName VARCHAR (255),
		Category VARCHAR (255),
		PRIMARY KEY (Id)
	) DEFAULT CHARSET = utf8 ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 角色分组权限表
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
	AND table_name = 'Permission_Group_Mapping'
) THEN
	CREATE TABLE Permission_Group_Mapping (
		Id INT NOT NULL auto_increment,
		GroupId INT,
		PermissionId INT,
		Config VARCHAR (1024),
		PRIMARY KEY (Id)
	) DEFAULT CHARSET = utf8 ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 用户与角色分组关系表
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
	AND table_name = 'Customer_Group_Mapping'
) THEN
	CREATE TABLE Customer_Group_Mapping (
		Id INT NOT NULL auto_increment,
		CustomerGuid CHAR (36),
		GroupId INT,
		PRIMARY KEY (Id)
	) DEFAULT CHARSET = utf8 ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2018-09-26

增加表：Developer（开发者表）

*/
/*==============================================================*/
# 开发者表
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
	AND table_name = 'Developer'
) THEN
	CREATE TABLE Developer (
		Id INT NOT NULL auto_increment,
		CustomerGuid CHAR (36),
		WorkUnit VARCHAR (250),
		BusinessProject VARCHAR (250),
		PRIMARY KEY (Id)
	) DEFAULT CHARSET = utf8 ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2018-10-12

Customer（用户表）增加字段：IMPeerId int

*/
/*==============================================================*/
# 即时IM PeerId（用户表）
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
	AND table_name = 'Customer'
	AND column_name = 'IMPeerId'
) THEN
	ALTER TABLE Customer ADD IMPeerId INT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2018-10-19

MemberDoctorService（合作医院和医生之间协议开通服务表）增加字段：Initiator SMALLINT

*/
/*==============================================================*/
# 开通服务发起方（合作医院和医生之间协议开通服务表）
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
	AND table_name = 'MemberDoctorService'
	AND column_name = 'Initiator'
) THEN
	ALTER TABLE MemberDoctorService ADD Initiator SMALLINT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2018-10-22

DoctorTotal（医生汇总表）增加字段：NetClinicCnt INT、NetClinicGrade FLOAT、NetClinicReplyMinutes INT、DiagnosisOverTimes INT

*/
/*==============================================================*/
# 网络门诊人数（医生汇总表）
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
	AND table_name = 'DoctorTotal'
	AND column_name = 'NetClinicCnt'
) THEN
	ALTER TABLE DoctorTotal ADD NetClinicCnt INT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 网络门诊评分（平均）（医生汇总表）
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
	AND table_name = 'DoctorTotal'
	AND column_name = 'NetClinicGrade'
) THEN
	ALTER TABLE DoctorTotal ADD NetClinicGrade FLOAT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 网络门诊回复速度（平均 - 分钟）（医生汇总表）
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
	AND table_name = 'DoctorTotal'
	AND column_name = 'NetClinicReplyMinutes'
) THEN
	ALTER TABLE DoctorTotal ADD NetClinicReplyMinutes INT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 远程诊断超时数医（医生汇总表）
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
	AND table_name = 'DoctorTotal'
	AND column_name = 'DiagnosisOverTimes'
) THEN
	ALTER TABLE DoctorTotal ADD DiagnosisOverTimes INT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2018-10-23

MDTGroup（MDT专家组表）增加字段：Speciality nvarchar(250)

*/
/*==============================================================*/
# 专家组擅长（MDT专家组表）
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
	AND table_name = 'MDTGroup'
	AND column_name = 'Speciality'
) THEN
	ALTER TABLE MDTGroup ADD Speciality VARCHAR (250) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2018-10-24

CustomerCircleRequest（朋友圈申请表）增加字段：GroupId INT

*/
/*==============================================================*/
# 分组Id（朋友圈申请表）
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
	AND table_name = 'CustomerCircleRequest'
	AND column_name = 'GroupId'
) THEN
	ALTER TABLE CustomerCircleRequest ADD GroupId INT;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();