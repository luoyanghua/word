/*==============================================================*/
/* 2017-03-16 

ɾ����JBMC���������Ʊ�ICD-10������ACR��ACR��

*/
/*==============================================================*/
DROP TABLE
IF EXISTS JBMC;

DROP TABLE
IF EXISTS ACR;

/*==============================================================*/
/* 2017-10-13

LogError��������־��ɾ���ֶΣ� InstitutionlGuid��AcquisitionType  

*/
/*==============================================================*/
# ɾ���ֶΣ�������־��
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

/*==============================================================*/
/* 2017-10-16

LogError��������־��ɾ���ֶΣ� AccessionNumber

*/
/*==============================================================*/
# ɾ���ֶΣ�������־��
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

