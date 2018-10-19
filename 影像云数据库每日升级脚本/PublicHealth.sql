/*==============================================================*/
/* 2016-12-29 

增加表：PriceProportion（服务价格提成比例表）
AskFee（问诊收费标准）删除字段：BreakRate、BreakFee、DiscountRate、DiscountFee、PlatFee、SafeFee
ImageReviewFee（影像咨询收费标准） 删除字段：BreakRate、BreakFee、DiscountRate、DiscountFee、PlatFee、SafeFee                                                 
ApplyAsk(远程问诊申请表) 增加字段： OverTimeFee decimal(18,2)
*/
/*==============================================================*/
# 服务价格提成比例表 
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
			AND table_name = 'PriceProportion'
		) THEN
			CREATE TABLE PriceProportion (
				Id INT NOT NULL auto_increment,
				Kind SMALLINT,
				DoctorPercent INT,
				PlatPercent INT,
				DiscountRate INT,
				IsAudit TINYINT,
				PRIMARY KEY (Id)
			) DEFAULT CHARSET = utf8 ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 删除BreakRate（AskFee）
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
			AND table_name = 'AskFee'
			AND column_name = 'BreakRate'
		) THEN
			ALTER TABLE AskFee DROP COLUMN BreakRate ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 删除BreakFee（AskFee）
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
			AND table_name = 'AskFee'
			AND column_name = 'BreakFee'
		) THEN
			ALTER TABLE AskFee DROP COLUMN BreakFee ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 删除DiscountRate（AskFee）
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
			AND table_name = 'AskFee'
			AND column_name = 'DiscountRate'
		) THEN
			ALTER TABLE AskFee DROP COLUMN DiscountRate ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 删除DiscountFee（AskFee）
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
			AND table_name = 'AskFee'
			AND column_name = 'DiscountFee'
		) THEN
			ALTER TABLE AskFee DROP COLUMN DiscountFee ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 删除PlatFee（AskFee）
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
			AND table_name = 'AskFee'
			AND column_name = 'PlatFee'
		) THEN
			ALTER TABLE AskFee DROP COLUMN PlatFee ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 删除SafeFee（AskFee）
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
			AND table_name = 'AskFee'
			AND column_name = 'SafeFee'
		) THEN
			ALTER TABLE AskFee DROP COLUMN SafeFee ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 删除BreakRate（ImageReviewFee）
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
			AND table_name = 'ImageReviewFee'
			AND column_name = 'BreakRate'
		) THEN
			ALTER TABLE ImageReviewFee DROP COLUMN BreakRate ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 删除BreakFee（ImageReviewFee）
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
			AND table_name = 'ImageReviewFee'
			AND column_name = 'BreakFee'
		) THEN
			ALTER TABLE ImageReviewFee DROP COLUMN BreakFee ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 删除DiscountRate（ImageReviewFee）
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
			AND table_name = 'ImageReviewFee'
			AND column_name = 'DiscountRate'
		) THEN
			ALTER TABLE ImageReviewFee DROP COLUMN DiscountRate ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 删除DiscountFee（ImageReviewFee）
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
			AND table_name = 'ImageReviewFee'
			AND column_name = 'DiscountFee'
		) THEN
			ALTER TABLE ImageReviewFee DROP COLUMN DiscountFee ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 删除PlatFee（ImageReviewFee）
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
			AND table_name = 'ImageReviewFee'
			AND column_name = 'PlatFee'
		) THEN
			ALTER TABLE ImageReviewFee DROP COLUMN PlatFee ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 删除SafeFee（ImageReviewFee）
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
			AND table_name = 'ImageReviewFee'
			AND column_name = 'SafeFee'
		) THEN
			ALTER TABLE ImageReviewFee DROP COLUMN SafeFee ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 超时费用（远程问诊申请表）
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
			AND table_name = 'ApplyAsk'
			AND column_name = 'OverTimeFee'
		) THEN
			ALTER TABLE ApplyAsk ADD OverTimeFee DECIMAL (18, 2) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-01-05 

ApplyAsk(远程问诊申请表) 增加字段： IsCustomerSign BIT、SignReason nvarchar(300)
ApplyImageReview(影像咨询申请表) 增加字段： IsCustomerSign BIT、SignReason nvarchar(300)

*/
/*==============================================================*/
# 客服标记标识（远程问诊申请表）
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
			AND table_name = 'ApplyAsk'
			AND column_name = 'IsCustomerSign'
		) THEN
			ALTER TABLE ApplyAsk ADD IsCustomerSign TINYINT (1) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 客服标记原因（远程问诊申请表）
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
			AND table_name = 'ApplyAsk'
			AND column_name = 'SignReason'
		) THEN
			ALTER TABLE ApplyAsk ADD SignReason VARCHAR (300) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 客服标记标识（影像咨询申请表）
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
			AND table_name = 'ApplyImageReview'
			AND column_name = 'IsCustomerSign'
		) THEN
			ALTER TABLE ApplyImageReview ADD IsCustomerSign TINYINT (1) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 客服标记原因（影像咨询申请表）
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
			AND table_name = 'ApplyImageReview'
			AND column_name = 'SignReason'
		) THEN
			ALTER TABLE ApplyImageReview ADD SignReason VARCHAR (300) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-01-10 

ImageReviewCheck(影像咨询关联检查表) 增加字段： DataSource nvarchar(128)

*/
/*==============================================================*/
# 数据来源（影像咨询关联检查表）
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
			AND table_name = 'ImageReviewCheck'
			AND column_name = 'DataSource'
		) THEN
			ALTER TABLE ImageReviewCheck ADD DataSource VARCHAR (128) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-01-05 

ApplyAsk(远程问诊申请表) 增加字段： EndDate datetime
ApplyImageReview(影像咨询申请表) 增加字段： EndDate datetime

*/
/*==============================================================*/
# 问诊结束时间（远程问诊申请表）
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
			AND table_name = 'ApplyAsk'
			AND column_name = 'EndDate'
		) THEN
			ALTER TABLE ApplyAsk ADD EndDate datetime ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 影像咨询结束时间（影像咨询申请表）
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
			AND table_name = 'ApplyImageReview'
			AND column_name = 'EndDate'
		) THEN
			ALTER TABLE ApplyImageReview ADD EndDate datetime ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-03-07 

ApplyAsk(远程问诊申请表) 增加字段： PayTime datetime
ApplyImageReview(影像咨询申请表) 增加字段： PayTime datetime

*/
/*==============================================================*/
# 付款时间（远程问诊申请表）
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
			AND table_name = 'ApplyAsk'
			AND column_name = 'PayTime'
		) THEN
			ALTER TABLE ApplyAsk ADD PayTime datetime ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 付款时间（影像咨询申请表）
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
			AND table_name = 'ApplyImageReview'
			AND column_name = 'PayTime'
		) THEN
			ALTER TABLE ApplyImageReview ADD PayTime datetime ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-03-29 

ImageReviewReply(医生回复表  - 影像咨询) 增加字段： IsMasculine bit

*/
/*==============================================================*/
# 是否阳性（医生回复表  - 影像咨询）
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
			AND table_name = 'ImageReviewReply'
			AND column_name = 'IsMasculine'
		) THEN
			ALTER TABLE ImageReviewReply ADD IsMasculine TINYINT (1) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-04-11 

ApplyAsk（远程问诊申请表）增加字段：BeginDate datetime
                                              
*/
/*==============================================================*/
# 问诊开始时间（远程问诊申请表）
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
			AND table_name = 'ApplyAsk'
			AND column_name = 'BeginDate'
		) THEN
			ALTER TABLE ApplyAsk ADD BeginDate datetime ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-04-25 

增加表：SheduleSubject（公众服务对应排班科目表）
增加表：SubjectExpert（排班科目对应专家表）
增加表：SheduleSubjectOffice（排班科目对应二级科室表）
增加表：ExpertShedule（公众服务专家排班表）
增加表：AskShedule（远程问诊预约队列表）
增加表：ImageReviewShedule（影像咨询预约队列表）

                                              
*/
/*==============================================================*/
# 公众服务对应排班科目表
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
			AND table_name = 'SheduleSubject'
		) THEN
			CREATE TABLE SheduleSubject (
				Id INT NOT NULL auto_increment,
				ServiceCenterId INT,
				SubjectName VARCHAR (50),
				BusinessKind SMALLINT,
				OfficeId INT,
				Office VARCHAR (30),
				AMBeginTime VARCHAR (5),
				AMEndTime VARCHAR (5),
				PMBeginTime VARCHAR (5),
				PMEndTime VARCHAR (5),
				OnePatientMinutes INT,
				Phone VARCHAR (30),
				IsToday TINYINT (1),
				PicGuid CHAR (36),
				PRIMARY KEY (Id)
			) DEFAULT CHARSET = utf8 ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 索引（公众服务对应排班科目表）
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
			AND table_name = 'SheduleSubject'
			AND index_name = 'IX_SSubject_CenterId'
		) THEN
			CREATE INDEX IX_SSubject_CenterId ON SheduleSubject (ServiceCenterId) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 排班科目对应专家表
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
			AND table_name = 'SubjectExpert'
		) THEN
			CREATE TABLE SubjectExpert (
				Id INT NOT NULL auto_increment,
				SubjectId INT,
				ExpertCustomerGuid CHAR (36),
				ExpertIntroduce VARCHAR (500),
				OnePatientMinutes INT,
				PRIMARY KEY (Id)
			) DEFAULT CHARSET = utf8 ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 索引（排班科目对应专家表）
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
			AND table_name = 'SubjectExpert'
			AND index_name = 'IX_SExpert_SubjectId'
		) THEN
			CREATE INDEX IX_SExpert_SubjectId ON SubjectExpert (SubjectId) ;
		END
		IF ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema.statistics
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'SubjectExpert'
			AND index_name = 'IX_SExpert_CustomerGuid'
		) THEN
			CREATE INDEX IX_SExpert_CustomerGuid ON SubjectExpert (ExpertCustomerGuid) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 排班科目对应二级科室表
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
			AND table_name = 'SheduleSubjectOffice'
		) THEN
			CREATE TABLE SheduleSubjectOffice (
				Id INT NOT NULL auto_increment,
				SubjectId INT,
				SubjectSecondId INT,
				SubjectSecondName VARCHAR (30),
				PRIMARY KEY (Id)
			) DEFAULT CHARSET = utf8 ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 索引（排班科目对应二级科室表）
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
			AND table_name = 'SheduleSubjectOffice'
			AND index_name = 'IX_SSO_SubjectId'
		) THEN
			CREATE INDEX IX_SSO_SubjectId ON SheduleSubjectOffice (SubjectId) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 公众服务专家排班表
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
			AND table_name = 'ExpertShedule'
		) THEN
			CREATE TABLE ExpertShedule (
				Id INT NOT NULL auto_increment,
				WeekDay INT,
				SheduleDate datetime,
				PartCode VARCHAR (50),
				PartName VARCHAR (100),
				SubjectId INT,
				SubjectName VARCHAR (50),
				BeginTime VARCHAR (8),
				EndTime VARCHAR (8),
				ExpertCustomerGuid CHAR (36),
				ExpertCustomerName VARCHAR (50),
				ExpertTitle VARCHAR (20),
				ServiceCenterId INT,
				ServiceCenterName VARCHAR (100),
				IsStop TINYINT (1),
				IsDay TINYINT (1),
				PRIMARY KEY (Id)
			) DEFAULT CHARSET = utf8 ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 索引（公众服务专家排班表）
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
			AND table_name = 'ExpertShedule'
			AND index_name = 'IX_EShedule_WeekDay'
		) THEN
			CREATE INDEX IX_EShedule_WeekDay ON ExpertShedule (WeekDay) ;
		END
		IF ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema.statistics
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'ExpertShedule'
			AND index_name = 'IX_EShedule_PartCode'
		) THEN
			CREATE INDEX IX_EShedule_PartCode ON ExpertShedule (PartCode) ;
		END
		IF ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema.statistics
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'ExpertShedule'
			AND index_name = 'IX_EShedule_SubjectId'
		) THEN
			CREATE INDEX IX_EShedule_SubjectId ON ExpertShedule (SubjectId) ;
		END
		IF ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema.statistics
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'ExpertShedule'
			AND index_name = 'IX_EShedule_CustomerGuid'
		) THEN
			CREATE INDEX IX_EShedule_CustomerGuid ON ExpertShedule (ExpertCustomerGuid) ;
		END
		IF ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema.statistics
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'ExpertShedule'
			AND index_name = 'IX_EShedule_ServiceCenterId'
		) THEN
			CREATE INDEX IX_EShedule_ServiceCenterId ON ExpertShedule (ServiceCenterId) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 远程问诊预约队列表
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
			AND table_name = 'AskShedule'
		) THEN
			CREATE TABLE AskShedule (
				Id INT NOT NULL auto_increment,
				SheduleDate VARCHAR (10),
				SubjectId INT,
				SubjectName VARCHAR (50),
				ExpertCustomerGuid CHAR (36),
				ExpertCustomerName VARCHAR (50),
				`Order` INT,
				SheduleBeginTime VARCHAR (5),
				SheduleEndTime VARCHAR (5),
				ServiceId CHAR (36),
				CustomerGuid CHAR (36),
				SheduleTime datetime,
				PRIMARY KEY (Id)
			) DEFAULT CHARSET = utf8 ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 索引（远程问诊预约队列表）
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
			AND table_name = 'AskShedule'
			AND index_name = 'IX_AS_SheduleDate'
		) THEN
			CREATE INDEX IX_AS_SheduleDate ON AskShedule (SheduleDate) ;
		END
		IF ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema.statistics
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'AskShedule'
			AND index_name = 'IX_AS_SubjectId'
		) THEN
			CREATE INDEX IX_AS_SubjectId ON AskShedule (SubjectId) ;
		END
		IF ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema.statistics
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'AskShedule'
			AND index_name = 'IX_AS_ECustomerGuid'
		) THEN
			CREATE INDEX IX_AS_ECustomerGuid ON AskShedule (ExpertCustomerGuid) ;
		END
		IF ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema.statistics
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'AskShedule'
			AND index_name = 'IX_AS_BeginTime'
		) THEN
			CREATE INDEX IX_AS_BeginTime ON AskShedule (SheduleBeginTime) ;
		END
		IF ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema.statistics
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'AskShedule'
			AND index_name = 'IX_AS_EndTime'
		) THEN
			CREATE INDEX IX_AS_EndTime ON AskShedule (SheduleEndTime) ;
		END
		IF ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema.statistics
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'AskShedule'
			AND index_name = 'IX_AS_ServiceId'
		) THEN
			CREATE INDEX IX_AS_ServiceId ON AskShedule (ServiceId) ;
		END
		IF ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema.statistics
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'AskShedule'
			AND index_name = 'IX_AS_CustomerGuid'
		) THEN
			CREATE INDEX IX_AS_CustomerGuid ON AskShedule (CustomerGuid) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 影像咨询预约队列表
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
			AND table_name = 'ImageReviewShedule'
		) THEN
			CREATE TABLE ImageReviewShedule (
				Id INT NOT NULL auto_increment,
				SheduleDate VARCHAR (10),
				SubjectId INT,
				SubjectName VARCHAR (50),
				ExpertCustomerGuid CHAR (36),
				ExpertCustomerName VARCHAR (50),
				`Order` INT,
				SheduleBeginTime VARCHAR (5),
				SheduleEndTime VARCHAR (5),
				ServiceId CHAR (36),
				CustomerGuid CHAR (36),
				SheduleTime datetime,
				PRIMARY KEY (Id)
			) DEFAULT CHARSET = utf8 ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 索引（影像咨询预约队列表）
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
			AND table_name = 'ImageReviewShedule'
			AND index_name = 'IX_IRS_SheduleDate'
		) THEN
			CREATE INDEX IX_IRS_SheduleDate ON ImageReviewShedule (SheduleDate) ;
		END
		IF ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema.statistics
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'ImageReviewShedule'
			AND index_name = 'IX_IRS_SubjectId'
		) THEN
			CREATE INDEX IX_IRS_SubjectId ON ImageReviewShedule (SubjectId) ;
		END
		IF ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema.statistics
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'ImageReviewShedule'
			AND index_name = 'IX_IRS_ECustomerGuid'
		) THEN
			CREATE INDEX IX_IRS_ECustomerGuid ON ImageReviewShedule (ExpertCustomerGuid) ;
		END
		IF ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema.statistics
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'ImageReviewShedule'
			AND index_name = 'IX_IRS_BeginTime'
		) THEN
			CREATE INDEX IX_IRS_BeginTime ON ImageReviewShedule (SheduleBeginTime) ;
		END
		IF ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema.statistics
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'ImageReviewShedule'
			AND index_name = 'IX_IRS_EndTime'
		) THEN
			CREATE INDEX IX_IRS_EndTime ON ImageReviewShedule (SheduleEndTime) ;
		END
		IF ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema.statistics
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'ImageReviewShedule'
			AND index_name = 'IX_IRS_ServiceId'
		) THEN
			CREATE INDEX IX_IRS_ServiceId ON ImageReviewShedule (ServiceId) ;
		END
		IF ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema.statistics
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'ImageReviewShedule'
			AND index_name = 'IX_IRS_CustomerGuid'
		) THEN
			CREATE INDEX IX_IRS_CustomerGuid ON ImageReviewShedule (CustomerGuid) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-05-03 

ApplyImageReview（影像咨询申请表）增加字段：ServiceCenterId int、ServiceCenterName nvarchar(100)
                                              
*/
/*==============================================================*/
# 服务中心ID（影像咨询申请表）
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
			AND table_name = 'ApplyImageReview'
			AND column_name = 'ServiceCenterId'
		) THEN
			ALTER TABLE ApplyImageReview ADD ServiceCenterId INT ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 服务中心名称（影像咨询申请表）
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
			AND table_name = 'ApplyImageReview'
			AND column_name = 'ServiceCenterName'
		) THEN
			ALTER TABLE ApplyImageReview ADD ServiceCenterName VARCHAR (100) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-05-11 

ExpertShedule（公众服务专家排班表）增加字段：CustomCnt int、IsCustom BIT
ApplyImageReview（影像咨询申请表）增加字段：IsOffline BIT
ApplyAsk（远程问诊申请表）增加字段：IsOffline BIT
                                              
*/
/*==============================================================*/
# 自定义人次（公众服务专家排班表）
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
			AND table_name = 'ExpertShedule'
			AND column_name = 'CustomCnt'
		) THEN
			ALTER TABLE ExpertShedule ADD CustomCnt INT ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 是否自定义（公众服务专家排班表）
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
			AND table_name = 'ExpertShedule'
			AND column_name = 'IsCustom'
		) THEN
			ALTER TABLE ExpertShedule ADD IsCustom TINYINT (1) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 线下支付标识（影像咨询申请表）
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
			AND table_name = 'ApplyImageReview'
			AND column_name = 'IsOffline'
		) THEN
			ALTER TABLE ApplyImageReview ADD IsOffline TINYINT (1) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 线下支付标识（远程问诊申请表）
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
			AND table_name = 'ApplyAsk'
			AND column_name = 'IsOffline'
		) THEN
			ALTER TABLE ApplyAsk ADD IsOffline TINYINT (1) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-05-12 

增加表：StageRefundRatio（阶段退款比例表）
                                              
*/
/*==============================================================*/
# 阶段退款比例表
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
			AND table_name = 'StageRefundRatio'
		) THEN
			CREATE TABLE StageRefundRatio (
				Id INT NOT NULL auto_increment,
				StageName national VARCHAR (100),
				LongStageCnt INT,
				LongSatgeUnit SMALLINT,
				ShortStageCnt INT,
				ShortSatgeUnit SMALLINT,
				Ratio INT,
				BeginTime datetime,
				InvalidTime datetime,
				IsInvalid bool,
				PRIMARY KEY (Id)
			) DEFAULT CHARSET = utf8 ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-05-15 

ApplyImageReview（影像咨询申请表）增加字段：ReviewMode SMALLINT
                                              
*/
/*==============================================================*/
# 咨询方式（影像咨询申请表）
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
			AND table_name = 'ApplyImageReview'
			AND column_name = 'ReviewMode'
		) THEN
			ALTER TABLE ApplyImageReview ADD ReviewMode SMALLINT ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 索引（影像咨询申请表）
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
			AND table_name = 'ApplyImageReview'
			AND index_name = 'IX_AIR_ReviewMode'
		) THEN
			CREATE INDEX IX_AIR_ReviewMode ON ApplyImageReview (ReviewMode) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-05-25 

AskFee（问诊收费标准表）增加字段：ServiceFee DECIMAL(18,2)、ServiceCenterId INT  
AskCallFee（问诊点名收费标准表）增加字段：ServiceFee DECIMAL(18,2)、ServiceCenterId INT
ImageReviewFee（影像咨询收费标准表）增加字段：ServiceFee DECIMAL(18,2)、ServiceCenterId INT  
ImageReviewCallFee（影像咨询点名收费标准表）增加字段：ServiceFee DECIMAL(18,2)、ServiceCenterId INT
ApplyAsk（远程问诊申请表）修改字段：PlatFee 为 ServiceFee DECIMAL(18,2)
ApplyImageReview（影像咨询申请表）修改字段：PlatFee 为 ServiceFee DECIMAL(18,2)

                                           
*/
/*==============================================================*/
# 平台服务费（问诊收费标准表）
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
			AND table_name = 'AskFee'
			AND column_name = 'ServiceFee'
		) THEN
			ALTER TABLE AskFee ADD ServiceFee DECIMAL (18, 2) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 所属服务中心（问诊点名收费标准表）
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
			AND table_name = 'AskFee'
			AND column_name = 'ServiceCenterId'
		) THEN
			ALTER TABLE AskFee ADD ServiceCenterId INT ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 平台服务费（问诊点名收费标准表）
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
			AND table_name = 'AskCallFee'
			AND column_name = 'ServiceFee'
		) THEN
			ALTER TABLE AskCallFee ADD ServiceFee DECIMAL (18, 2) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 所属服务中心（问诊点名收费标准表）
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
			AND table_name = 'AskCallFee'
			AND column_name = 'ServiceCenterId'
		) THEN
			ALTER TABLE AskCallFee ADD ServiceCenterId INT ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 平台服务费（影像咨询收费标准表）
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
			AND table_name = 'ImageReviewFee'
			AND column_name = 'ServiceFee'
		) THEN
			ALTER TABLE ImageReviewFee ADD ServiceFee DECIMAL (18, 2) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 所属服务中心（影像咨询收费标准表）
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
			AND table_name = 'ImageReviewFee'
			AND column_name = 'ServiceCenterId'
		) THEN
			ALTER TABLE ImageReviewFee ADD ServiceCenterId INT ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 平台服务费（影像咨询点名收费标准表）
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
			AND table_name = 'ImageReviewCallFee'
			AND column_name = 'ServiceFee'
		) THEN
			ALTER TABLE ImageReviewCallFee ADD ServiceFee DECIMAL (18, 2) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 所属服务中心（影像咨询点名收费标准表）
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
			AND table_name = 'ImageReviewCallFee'
			AND column_name = 'ServiceCenterId'
		) THEN
			ALTER TABLE ImageReviewCallFee ADD ServiceCenterId INT ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 平台服务费（远程问诊申请表）
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
			AND table_name = 'ApplyAsk'
			AND column_name = 'PlatFee'
		) THEN
			ALTER TABLE ApplyAsk CHANGE PlatFee ServiceFee DECIMAL (18, 2) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 平台服务费（影像咨询申请表）
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
			AND table_name = 'ApplyImageReview'
			AND column_name = 'PlatFee'
		) THEN
			ALTER TABLE ApplyImageReview CHANGE PlatFee ServiceFee DECIMAL (18, 2) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-06-08 

AskCallFee（问诊点名收费标准表）增加字段：CustomerName nvarchar(50)、ExpertTitleCode nvarchar(100)
ImageReviewCallFee（影像咨询点名收费标准表）增加字段：CustomerName nvarchar(50)、ExpertTitleCode nvarchar(100)
                                           
*/
/*==============================================================*/
# 医生姓名（问诊点名收费标准表）
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
			AND table_name = 'AskCallFee'
			AND column_name = 'CustomerName'
		) THEN
			ALTER TABLE AskCallFee ADD CustomerName VARCHAR (50) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 医生职称Code（问诊点名收费标准表）
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
			AND table_name = 'AskCallFee'
			AND column_name = 'ExpertTitleCode'
		) THEN
			ALTER TABLE AskCallFee ADD ExpertTitleCode VARCHAR (100) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 医生姓名（影像咨询点名收费标准表）
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
			AND table_name = 'ImageReviewCallFee'
			AND column_name = 'CustomerName'
		) THEN
			ALTER TABLE ImageReviewCallFee ADD CustomerName VARCHAR (50) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 医生职称Code（影像咨询点名收费标准表）
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
			AND table_name = 'ImageReviewCallFee'
			AND column_name = 'ExpertTitleCode'
		) THEN
			ALTER TABLE ImageReviewCallFee ADD ExpertTitleCode VARCHAR (100) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-06-12 

ApplyImageReview（影像咨询申请表）增加字段：IsSync bit
                                              
*/
/*==============================================================*/
# 是否已同步（门诊部）（影像咨询申请表）
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
			AND table_name = 'ApplyImageReview'
			AND column_name = 'IsSync'
		) THEN
			ALTER TABLE ApplyImageReview ADD IsSync TINYINT (1) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 索引（影像咨询申请表）
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
			AND table_name = 'ApplyImageReview'
			AND index_name = 'IX_AIR_IsSync'
		) THEN
			CREATE INDEX IX_AIR_IsSync ON ApplyImageReview (IsSync) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-06-23 

增加表：CarryDataRecord（携带资料记录表）
                                              
*/
/*==============================================================*/
# 携带资料记录表
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
			AND table_name = 'CarryDataRecord'
		) THEN
			CREATE TABLE CarryDataRecord (
				Id INT NOT NULL auto_increment,
				ServiceId CHAR (36),
				CarryDataCode VARCHAR (50),
				CarryDataName VARCHAR (50),
				PRIMARY KEY (Id)
			) DEFAULT CHARSET = utf8 ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 索引（携带资料记录表）
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
			AND table_name = 'CarryDataRecord'
			AND index_name = 'IX_CDR_ServiceId'
		) THEN
			CREATE INDEX IX_CDR_ServiceId ON CarryDataRecord (ServiceId) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-07-19 

ImageReviewReply（医生回复表  - 影像咨询）增加字段：RecordName nvarchar(50)
                                              
*/
/*==============================================================*/
# 记录员姓名（医生回复表  - 影像咨询）
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
			AND table_name = 'ImageReviewReply'
			AND column_name = 'RecordName'
		) THEN
			ALTER TABLE ImageReviewReply ADD RecordName VARCHAR (50) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-08-01 

增加表：DoctorLevelSetup（医生收入等级及称号设置表）、DoctorServiceLevel（医生总服务金额和等级表）
                                              
*/
/*==============================================================*/
# 医生收入等级及称号设置表
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
			AND table_name = 'DoctorLevelSetup'
		) THEN
			CREATE TABLE DoctorLevelSetup (
				Id INT NOT NULL auto_increment,
				InComeLevelCode VARCHAR (30),
				InComeLevelName VARCHAR (30),
				LowerLimit DECIMAL (18, 2),
				UpLimit DECIMAL (18, 2),
				InComePercent INT,
				ServiceCenterId INT,
				PRIMARY KEY (Id)
			) DEFAULT CHARSET = utf8 ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 医生总服务金额和等级表
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
			AND table_name = 'DoctorServiceLevel'
		) THEN
			CREATE TABLE DoctorServiceLevel (
				Id INT NOT NULL auto_increment,
				DoctorCustomerGuid CHAR (36),
				DoctorCustomerName VARCHAR (50),
				SeviceSumFee DECIMAL (18, 2),
				InComeLevelCode VARCHAR (30),
				InComeLevelName VARCHAR (30),
				ServiceCenterId INT,
				PRIMARY KEY (Id)
			) DEFAULT CHARSET = utf8 ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 索引（医生总服务金额和等级表）
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
			AND table_name = 'DoctorServiceLevel'
			AND index_name = 'IX_DSL_DoctorCustomerGuid'
		) THEN
			CREATE INDEX IX_DSL_DoctorCustomerGuid ON DoctorServiceLevel (DoctorCustomerGuid) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-08-03 

ApplyAsk（远程问诊申请表）增加字段：ServiceCenterId int、ServiceCenterName nvarchar(100)
                                              
*/
/*==============================================================*/
# 服务中心ID（远程问诊申请表）
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
			AND table_name = 'ApplyAsk'
			AND column_name = 'ServiceCenterId'
		) THEN
			ALTER TABLE ApplyAsk ADD ServiceCenterId INT ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 服务中心名称（远程问诊申请表）
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
			AND table_name = 'ApplyAsk'
			AND column_name = 'ServiceCenterName'
		) THEN
			ALTER TABLE ApplyAsk ADD ServiceCenterName VARCHAR (100) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-08-08 

ImageReviewReply（医生回复表  - 影像咨询）增加字段：InComePercent int、删除字段：LastFee
AskReply（医生回复表 - 问诊）增加字段：InComePercent int、删除字段：LastFee
                                              
*/
/*==============================================================*/
# 每单医生收入比例（%）（医生回复表  - 影像咨询）
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
			AND table_name = 'ImageReviewReply'
			AND column_name = 'InComePercent'
		) THEN
			ALTER TABLE ImageReviewReply ADD InComePercent INT ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 删除LastFee字段（医生回复表  - 影像咨询）
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
			AND table_name = 'ImageReviewReply'
			AND column_name = 'LastFee'
		) THEN
			ALTER TABLE ImageReviewReply DROP COLUMN LastFee ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 每单医生收入比例（%）（医生回复表 - 问诊）
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
			AND table_name = 'AskReply'
			AND column_name = 'InComePercent'
		) THEN
			ALTER TABLE AskReply ADD InComePercent INT ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 删除LastFee字段（医生回复表 - 问诊）
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
			AND table_name = 'AskReply'
			AND column_name = 'LastFee'
		) THEN
			ALTER TABLE AskReply DROP COLUMN LastFee ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-08-11 

ApplyAsk（远程问诊申请表）增加字段：FamilyHistory nvarchar(500)、PastHistory nvarchar(2000)、AllergyHistory nvarchar(300)
                                              
*/
/*==============================================================*/
# 家族史（远程问诊申请表）
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
			AND table_name = 'ApplyAsk'
			AND column_name = 'FamilyHistory'
		) THEN
			ALTER TABLE ApplyAsk ADD FamilyHistory VARCHAR (500) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 既往史（远程问诊申请表）
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
			AND table_name = 'ApplyAsk'
			AND column_name = 'PastHistory'
		) THEN
			ALTER TABLE ApplyAsk ADD PastHistory LONGTEXT ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 过敏史（远程问诊申请表）
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
			AND table_name = 'ApplyAsk'
			AND column_name = 'AllergyHistory'
		) THEN
			ALTER TABLE ApplyAsk ADD AllergyHistory VARCHAR (300) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-08-22 

ApplyImageReview（影像咨询申请表）增加字段：BusinessType SMALLINT
DoctorLevelSetup（医生收入等级及称号设置表）增加字段：UpgradePoints INT、UpgradeCycle INT、ACoefficient FLOAT、BCoefficient FLOAT, 删除字段：LowerLimit、UpLimit  
DoctorServiceLevel（医生服务总金额和等级表）增加字段：UpgradeDate datetime、ASeviceSumFee decimal(18,2)、BSeviceSumFee decimal(18,2)、ASumPoint INT、BSumPoint INT, 删除字段：SeviceSumFee  
 
                                           
*/
/*==============================================================*/
# 业务类型（影像咨询申请表）
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
			AND table_name = 'ApplyImageReview'
			AND column_name = 'BusinessType'
		) THEN
			ALTER TABLE ApplyImageReview ADD BusinessType SMALLINT ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 升级所需积分（医生收入等级及称号设置表）
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
			AND table_name = 'DoctorLevelSetup'
			AND column_name = 'UpgradePoints'
		) THEN
			ALTER TABLE DoctorLevelSetup ADD UpgradePoints INT ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 升级周期（月）（医生收入等级及称号设置表）
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
			AND table_name = 'DoctorLevelSetup'
			AND column_name = 'UpgradeCycle'
		) THEN
			ALTER TABLE DoctorLevelSetup ADD UpgradeCycle INT ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# A类业务积分换算系数（医生收入等级及称号设置表）
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
			AND table_name = 'DoctorLevelSetup'
			AND column_name = 'ACoefficient'
		) THEN
			ALTER TABLE DoctorLevelSetup ADD ACoefficient DOUBLE ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# B类业务积分换算系数（医生收入等级及称号设置表）
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
			AND table_name = 'DoctorLevelSetup'
			AND column_name = 'BCoefficient'
		) THEN
			ALTER TABLE DoctorLevelSetup ADD BCoefficient DOUBLE ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 删除字段（医生收入等级及称号设置表）
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
			AND table_name = 'DoctorLevelSetup'
			AND column_name = 'LowerLimit'
		) THEN
			ALTER TABLE DoctorLevelSetup DROP LowerLimit ;
		END
		IF ;
		IF EXISTS (
			SELECT
				*
			FROM
				information_schema. COLUMNS
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'DoctorLevelSetup'
			AND column_name = 'UpLimit'
		) THEN
			ALTER TABLE DoctorLevelSetup DROP UpLimit ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 最新等级升级时间（医生服务金额、积分和等级表）
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
			AND table_name = 'DoctorServiceLevel'
			AND column_name = 'UpgradeDate'
		) THEN
			ALTER TABLE DoctorServiceLevel ADD UpgradeDate datetime ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# A类服务总金额（医生服务金额、积分和等级表）
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
			AND table_name = 'DoctorServiceLevel'
			AND column_name = 'ASeviceSumFee'
		) THEN
			ALTER TABLE DoctorServiceLevel ADD ASeviceSumFee DECIMAL (18, 2) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# B类服务总金额（医生服务金额、积分和等级表）
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
			AND table_name = 'DoctorServiceLevel'
			AND column_name = 'BSeviceSumFee'
		) THEN
			ALTER TABLE DoctorServiceLevel ADD BSeviceSumFee DECIMAL (18, 2) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# A类总积分（医生服务金额、积分和等级表）
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
			AND table_name = 'DoctorServiceLevel'
			AND column_name = 'ASumPoint'
		) THEN
			ALTER TABLE DoctorServiceLevel ADD ASumPoint INT ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# B类总积分（医生服务金额、积分和等级表）
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
			AND table_name = 'DoctorServiceLevel'
			AND column_name = 'BSumPoint'
		) THEN
			ALTER TABLE DoctorServiceLevel ADD BSumPoint INT ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 删除字段（医生服务金额、积分和等级表）
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
			AND table_name = 'DoctorServiceLevel'
			AND column_name = 'SeviceSumFee'
		) THEN
			ALTER TABLE DoctorServiceLevel DROP SeviceSumFee ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-08-30 

增加表：ApplyAskTimes（图文问诊延长时长次数表）
                                              
*/
/*==============================================================*/
# 图文问诊延长时长次数表
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
			AND table_name = 'ApplyAskTimes'
		) THEN
			CREATE TABLE ApplyAskTimes (
				Id INT NOT NULL auto_increment,
				ServiceId CHAR (36),
				Duration INT,
				Times INT,
				PRIMARY KEY (Id)
			) DEFAULT CHARSET = utf8 ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 索引（图文问诊延长时长次数表）
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
			AND table_name = 'ApplyAskTimes'
			AND index_name = 'IX_AAT_ServiceId'
		) THEN
			CREATE INDEX IX_AAT_ServiceId ON ApplyAskTimes (ServiceId) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-12-26 

增加表：NetClinic（网络门诊表）、NetClinicProcess（网络门诊过程表）、NetClinicKeyWord（网络门诊关键字表）
                                              
*/
/*==============================================================*/
# 网络门诊表
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
			AND table_name = 'NetClinic'
		) THEN
			CREATE TABLE NetClinic (
				Id INT NOT NULL auto_increment,
				ServiceId CHAR (36),
				SheduleKind INT,
				PatientName VARCHAR (64),
				PatientSex VARCHAR (4),
				PatientBirthday VARCHAR (10),
				Age INT,
				AgeUnit VARCHAR (2),
				PatientPhone VARCHAR (20),
				IsMarried INT,
				Nation VARCHAR (50),
				Profession VARCHAR (100),
				IdNumber VARCHAR (20),
				HealthCardNumber VARCHAR (250),
				HealthCardType VARCHAR (10),
				PatientDesc VARCHAR (500),
				FamilyHistory VARCHAR (500),
				PastHistory VARCHAR (2000),
				AllergyHistory VARCHAR (300),
				Purpose VARCHAR (1000),
				KeyWord VARCHAR (200),
				CustomerGuid CHAR (36),
				CustomerName VARCHAR (100),
				RequestPhone VARCHAR (20),
				RequestDate datetime,
				HospitalCode VARCHAR (250),
				HospitalName VARCHAR (250),
				SubjectId INT,
				SubjectName VARCHAR (50),
				SheduleBeginTime datetime,
				SheduleEndTime datetime,
				OrderNo INT,
				StartDate datetime,
				EndDate datetime,
				CancelReason VARCHAR (300),
				ServiceState SMALLINT,
				EvaluationState SMALLINT,
				IsScript TINYINT (1),
				Fee DECIMAL (18, 2),
				IsUrgency TINYINT (1),
				ExpertCustomerGuid CHAR (36),
				ExpertCustomerName VARCHAR (50),
				Diagnosis VARCHAR (2000),
				DM VARCHAR (64),
				ICD VARCHAR (100),
				MC VARCHAR (100),
				DiagnosisMemo VARCHAR (1000),
				DiagnosisTime datetime,
				ReviseTime datetime,
				ServiceCenterId INT,
				ServiceCenterName VARCHAR (100),
				DigitalSignatureId INT,
				ClientKind SMALLINT,
				PRIMARY KEY (Id)
			) DEFAULT CHARSET = utf8 ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 索引（网络门诊表）
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
			AND table_name = 'NetClinic'
			AND index_name = 'IX_NClinic_ServiceId'
		) THEN
			CREATE INDEX IX_NClinic_ServiceId ON NetClinic (ServiceId) ;
		END
		IF ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema.statistics
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'NetClinic'
			AND index_name = 'IX_NClinic_CustomerGuid'
		) THEN
			CREATE INDEX IX_NClinic_CustomerGuid ON NetClinic (CustomerGuid) ;
		END
		IF ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema.statistics
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'NetClinic'
			AND index_name = 'IX_NClinic_RequestDate'
		) THEN
			CREATE INDEX IX_NClinic_RequestDate ON NetClinic (RequestDate) ;
		END
		IF ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema.statistics
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'NetClinic'
			AND index_name = 'IX_NClinic_OrderNo'
		) THEN
			CREATE INDEX IX_NClinic_OrderNo ON NetClinic (OrderNo) ;
		END
		IF ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema.statistics
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'NetClinic'
			AND index_name = 'IX_NClinic_ExpertCustomerGuid'
		) THEN
			CREATE INDEX IX_NClinic_ExpertCustomerGuid ON NetClinic (ExpertCustomerGuid) ;
		END
		IF ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema.statistics
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'NetClinic'
			AND index_name = 'IX_NClinic_ServiceCenterId'
		) THEN
			CREATE INDEX IX_NClinic_ServiceCenterId ON NetClinic (ServiceCenterId) ;
		END
		IF ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema.statistics
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'NetClinic'
			AND index_name = 'IX_NClinic_ServiceState'
		) THEN
			CREATE INDEX IX_NClinic_ServiceState ON NetClinic (ServiceState) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 网络门诊过程表
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
			AND table_name = 'NetClinicProcess'
		) THEN
			CREATE TABLE NetClinicProcess (
				Id INT NOT NULL auto_increment,
				ServiceId CHAR (36),
				EVENT INT,
				OperateDescription VARCHAR (1024),
				OperateCustomerGuid CHAR (36),
				OperateCustomerName VARCHAR (100),
				IP VARCHAR (20),
				EventTime datetime,
				PRIMARY KEY (Id)
			) DEFAULT CHARSET = utf8 ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 索引（网络门诊过程表）
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
			AND table_name = 'NetClinicProcess'
			AND index_name = 'IX_NCP_ServiceId'
		) THEN
			CREATE INDEX IX_NCP_ServiceId ON NetClinicProcess (ServiceId) ;
		END
		IF ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema.statistics
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'NetClinicProcess'
			AND index_name = 'IX_NCP_Event'
		) THEN
			CREATE INDEX IX_NCP_Event ON NetClinicProcess (EVENT) ;
		END
		IF ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema.statistics
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'NetClinicProcess'
			AND index_name = 'IX_NCP_OCustomerGuid'
		) THEN
			CREATE INDEX IX_NCP_OCustomerGuid ON NetClinicProcess (OperateCustomerGuid) ;
		END
		IF ;
		IF NOT EXISTS (
			SELECT
				*
			FROM
				information_schema.statistics
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'NetClinicProcess'
			AND index_name = 'IX_NCP_EventTime'
		) THEN
			CREATE INDEX IX_NCP_EventTime ON NetClinicProcess (EventTime) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 网络门诊关键字表
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
			AND table_name = 'NetClinicKeyWord'
		) THEN
			CREATE TABLE NetClinicKeyWord (
				Id BIGINT NOT NULL auto_increment,
				ServiceId CHAR (36) NOT NULL,
				KeyWord VARCHAR (50),
				PRIMARY KEY (Id)
			) DEFAULT CHARSET = utf8 ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 索引（网络门诊关键字表）
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
			AND table_name = 'NetClinicKeyWord'
			AND index_name = 'IX_NCKW_ServiceId'
		) THEN
			CREATE INDEX IX_NCKW_ServiceId ON NetClinicKeyWord (ServiceId) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-12-28 

NetClinic(网络门诊表) 增加字段： PatientGuid uniqueidentifier、TitleCode nvarchar(20)、Title nvarchar(20)

*/
/*==============================================================*/
# 患者唯一号（网络门诊表）
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
			AND table_name = 'NetClinic'
			AND column_name = 'PatientGuid'
		) THEN
			ALTER TABLE NetClinic ADD PatientGuid CHAR (36) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 专家职称Code（网络门诊表）
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
			AND table_name = 'NetClinic'
			AND column_name = 'TitleCode'
		) THEN
			ALTER TABLE NetClinic ADD TitleCode VARCHAR (20) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 专家职称（网络门诊表）
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
			AND table_name = 'NetClinic'
			AND column_name = 'Title'
		) THEN
			ALTER TABLE NetClinic ADD Title VARCHAR (20) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

