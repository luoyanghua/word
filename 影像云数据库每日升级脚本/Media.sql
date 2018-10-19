/*==============================================================*/
/* 2017-01-05 

Media(媒体表) 增加字段： UploadTime datetime

*/
/*==============================================================*/
# 上传时间（媒体表）
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
			AND table_name = 'Media'
			AND column_name = 'UploadTime'
		) THEN
			ALTER TABLE Media ADD UploadTime datetime ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-10-17 

DigitalSignature(数字签名表) 修改字段： TimeStamp nvarchar(max)

*/
/*==============================================================*/
# 签名时间戳（数字签名表）
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
			AND table_name = 'DigitalSignature'
			AND column_name = 'TimeStamp'
		) THEN
			ALTER TABLE DigitalSignature CHANGE TIMESTAMP TIMESTAMP LONGTEXT ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-11-20 

Certificate(用户绑定证书表) 增加字段： InstitutionGuid uniqueidentifier

*/
/*==============================================================*/
# InstitutionGuid（用户绑定证书表）
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
			AND table_name = 'Certificate'
			AND column_name = 'InstitutionGuid'
		) THEN
			ALTER TABLE Certificate ADD InstitutionGuid CHAR (36) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-12-20 

DigitalSignature(数字签名表) 修改字段： SignValue nvarchar(max)

*/
/*==============================================================*/
# 签名值（数字签名表）
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
			AND table_name = 'DigitalSignature'
			AND column_name = 'SignValue'
		) THEN
			ALTER TABLE DigitalSignature CHANGE SignValue SignValue LONGTEXT ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2018-03-06 

Certificate(用户绑定证书) 修改字段： UniqueID nvarchar(64)

*/
/*==============================================================*/
# 证书用户唯一标识（用户绑定证书）
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
			AND table_name = 'Certificate'
			AND column_name = 'UniqueID'
		) THEN
			ALTER TABLE Certificate CHANGE UniqueID UniqueID VARCHAR (64) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

