/*==============================================================*/
/* 2017-01-05 

Media(ý���) �����ֶΣ� UploadTime datetime

*/
/*==============================================================*/
# �ϴ�ʱ�䣨ý���
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

DigitalSignature(����ǩ����) �޸��ֶΣ� TimeStamp nvarchar(max)

*/
/*==============================================================*/
# ǩ��ʱ���������ǩ����
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

Certificate(�û���֤���) �����ֶΣ� InstitutionGuid uniqueidentifier

*/
/*==============================================================*/
# InstitutionGuid���û���֤���
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

DigitalSignature(����ǩ����) �޸��ֶΣ� SignValue nvarchar(max)

*/
/*==============================================================*/
# ǩ��ֵ������ǩ����
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

Certificate(�û���֤��) �޸��ֶΣ� UniqueID nvarchar(64)

*/
/*==============================================================*/
# ֤���û�Ψһ��ʶ���û���֤�飩
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

