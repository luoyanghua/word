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