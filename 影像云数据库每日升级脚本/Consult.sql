/*==============================================================*/
/* 2017-02-15 

ApplyConsult（远程会诊申请表）增加字段：BusinessId nvarchar(300)
                                              
*/
/*==============================================================*/
# 业务唯一号（远程会诊申请表）
DROP PROCEDURE
IF EXISTS schema_change;  
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
	AND table_name = 'ApplyConsult'
	AND column_name = 'BusinessId'
) THEN
	ALTER TABLE ApplyConsult ADD BusinessId VARCHAR (300) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-05-26 

ApplyConsult（远程会诊申请表）增加字段：IsSummary bit
                                              
*/
/*==============================================================*/
# 已汇总标识（远程会诊申请表）
DROP PROCEDURE
IF EXISTS schema_change;  
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
	AND table_name = 'ApplyConsult'
	AND column_name = 'IsSummary'
) THEN
	ALTER TABLE ApplyConsult ADD IsSummary TINYINT (1) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-05-27 

ConsultProcess（会诊过程表）增加字段：OperateDescription nvarchar(1024)、OperateCustomerGuid uniqueidentifier、OperateCustomerName nvarchar(100)、IP nvarchar(20)
                                              
*/
/*==============================================================*/
# 操作描述（会诊过程表）
DROP PROCEDURE
IF EXISTS schema_change;  
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
	AND table_name = 'ConsultProcess'
	AND column_name = 'OperateDescription'
) THEN
	ALTER TABLE ConsultProcess ADD OperateDescription VARCHAR (1024) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 操作用户唯一号（会诊过程表）
DROP PROCEDURE
IF EXISTS schema_change;  
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
	AND table_name = 'ConsultProcess'
	AND column_name = 'OperateCustomerGuid'
) THEN
	ALTER TABLE ConsultProcess ADD OperateCustomerGuid CHAR (36) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 操作用户姓名（会诊过程表）
DROP PROCEDURE
IF EXISTS schema_change;  
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
	AND table_name = 'ConsultProcess'
	AND column_name = 'OperateCustomerName'
) THEN
	ALTER TABLE ConsultProcess ADD OperateCustomerName VARCHAR (100) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 操作用户IP（会诊过程表）
DROP PROCEDURE
IF EXISTS schema_change;  
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
	AND table_name = 'ConsultProcess'
	AND column_name = 'IP'
) THEN
	ALTER TABLE ConsultProcess ADD IP VARCHAR (20) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-06-15 

ApplyConsult（远程会诊申请表）增加字段：IsSync bit
ConsultProcess（会诊过程表）修改字段：OperateDescription nvarchar(max)                                              
*/
/*==============================================================*/
# 是否已同步（远程会诊申请表）
DROP PROCEDURE
IF EXISTS schema_change;  
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
	AND table_name = 'ApplyConsult'
	AND column_name = 'IsSync'
) THEN
	ALTER TABLE ApplyConsult ADD IsSync TINYINT (1) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 操作描述（会诊过程表）
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
	AND table_name = 'ConsultProcess'
	AND column_name = 'OperateDescription'
) THEN
	ALTER TABLE ConsultProcess CHANGE OperateDescription OperateDescription LONGTEXT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-08-11 

ApplyConsult（远程会诊申请表）、ConsultFee（会诊收费标准表）删除字段：PlatFee
                                              
*/
/*==============================================================*/
# 删除PlatFee字段（远程会诊申请表）
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
	AND table_name = 'ApplyConsult'
	AND column_name = 'PlatFee'
) THEN
	ALTER TABLE ApplyConsult DROP COLUMN PlatFee ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 删除PlatFee字段（会诊收费标准表）
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
	AND table_name = 'ConsultFee'
	AND column_name = 'PlatFee'
) THEN
	ALTER TABLE ConsultFee DROP COLUMN PlatFee ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-12-21 

ApplyConsult（远程会诊申请表）增加字段：PreEndDate datetime
                                              
*/
/*==============================================================*/
# 预约结束时间（远程会诊申请表）
DROP PROCEDURE
IF EXISTS schema_change;  
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
	AND table_name = 'ApplyConsult'
	AND column_name = 'PreEndDate'
) THEN
	ALTER TABLE ApplyConsult ADD PreEndDate datetime ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2018-03-21 

ApplyConsult（远程会诊申请表）增加字段：Source SMALLINT、SourceId uniqueidentifier
                                              
*/
/*==============================================================*/
# 数据来源（远程会诊申请表）
DROP PROCEDURE
IF EXISTS schema_change;  
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
	AND table_name = 'ApplyConsult'
	AND column_name = 'Source'
) THEN
	ALTER TABLE ApplyConsult ADD Source SMALLINT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 来源唯一号（远程会诊申请表）
DROP PROCEDURE
IF EXISTS schema_change;  
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
	AND table_name = 'ApplyConsult'
	AND column_name = 'SourceId'
) THEN
	ALTER TABLE ApplyConsult ADD SourceId CHAR (36) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2018-06-28 

ApplyConsult（远程会诊申请表）增加字段：CloudId nvarchar(50)
                                              
*/
/*==============================================================*/
# 来源云朵标识（远程会诊申请表）
DROP PROCEDURE
IF EXISTS schema_change;  
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
	AND table_name = 'ApplyConsult'
	AND column_name = 'CloudId'
) THEN
	ALTER TABLE ApplyConsult ADD CloudId VARCHAR (50) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2018-10-09

ApplyConsult（远程会诊申请表）修改字段：ClinicDiagnosis nvarchar(512)、PatientDesc nvarchar(1024)
                                              
*/
/*==============================================================*/
# 临床诊断（远程会诊申请表）
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
	AND table_name = 'ApplyConsult'
	AND column_name = 'ClinicDiagnosis'
) THEN
	ALTER TABLE ApplyConsult CHANGE ClinicDiagnosis ClinicDiagnosis VARCHAR (512) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 患者主诉（远程会诊申请表）
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
	AND table_name = 'ApplyConsult'
	AND column_name = 'PatientDesc'
) THEN
	ALTER TABLE ApplyConsult CHANGE PatientDesc PatientDesc VARCHAR (1024) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();