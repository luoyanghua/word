/*==============================================================*/
/* 2018-03-15

增加表：RemoteClinicProcess（门诊过程表）

*/
/*==============================================================*/
# 门诊过程表
DROP PROCEDURE
IF EXISTS schema_change;  
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
	AND table_name = 'RemoteClinicProcess'
) THEN
	CREATE TABLE RemoteClinicProcess (
		Id INT NOT NULL auto_increment,
		ServiceId CHAR (36),
		EVENT INT,
		OperateDescription LONGTEXT,
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

# 索引（门诊过程表）
DROP PROCEDURE
IF EXISTS schema_change;  
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
	AND table_name = 'RemoteClinicProcess'
	AND index_name = 'IX_RCP_ServiceId'
) THEN
	CREATE INDEX IX_RCP_ServiceId ON RemoteClinicProcess (ServiceId) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2018-10-09

RemoteClinic（远程门诊表）修改字段：PatientDesc nvarchar(1024)
                                              
*/
/*==============================================================*/
# 患者主诉（远程门诊表）
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
	AND table_name = 'RemoteClinic'
	AND column_name = 'PatientDesc'
) THEN
	ALTER TABLE RemoteClinic CHANGE PatientDesc PatientDesc VARCHAR (1024) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 20178-10-17 

RemoteClinic（远程门诊表）增加字段：OrderNo nvarchar(64)、ServiceTarget SMALLINT
ExpertShedule（专家门诊排班表）增加字段：ServiceTarget SMALLINT

                                              
*/
/*==============================================================*/
# 订单号（远程门诊表）
DROP PROCEDURE
IF EXISTS schema_change;  
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
	AND table_name = 'RemoteClinic'
	AND column_name = 'OrderNo'
) THEN
	ALTER TABLE RemoteClinic ADD OrderNo VARCHAR (64) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 服务对象（远程门诊表）
DROP PROCEDURE
IF EXISTS schema_change;  
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
	AND table_name = 'RemoteClinic'
	AND column_name = 'ServiceTarget'
) THEN
	ALTER TABLE RemoteClinic ADD ServiceTarget SMALLINT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 服务对象（家门诊排班表）
DROP PROCEDURE
IF EXISTS schema_change;  
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
	AND table_name = 'ExpertShedule'
	AND column_name = 'ServiceTarget'
) THEN
	ALTER TABLE ExpertShedule ADD ServiceTarget SMALLINT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 20178-10-24 

RemoteClinic（远程门诊表）增加字段：PrescriptionState SMALLINT

                                              
*/
/*==============================================================*/
# 处方状态（远程门诊表）
DROP PROCEDURE
IF EXISTS schema_change;  
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
	AND table_name = 'RemoteClinic'
	AND column_name = 'PrescriptionState'
) THEN
	ALTER TABLE RemoteClinic ADD PrescriptionState SMALLINT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();