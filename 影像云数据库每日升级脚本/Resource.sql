/*==============================================================*/
/* 2017-07-03 

Paper���Ծ�������ֶΣ�CustomerName nvarchar(50)
                                              
*/
/*==============================================================*/
# �����û��������Ծ��
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
			AND table_name = 'Paper'
			AND column_name = 'CustomerName'
		) THEN
			ALTER TABLE Paper ADD CustomerName VARCHAR (50) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-08-17 

Question��������Ϣ�������ֶΣ�TeachCenterId int��TeachCenterName nvarchar(100)
                                              
*/
/*==============================================================*/
# ������������ID��������Ϣ��
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
			AND table_name = 'Question'
			AND column_name = 'TeachCenterId'
		) THEN
			ALTER TABLE Question ADD TeachCenterId INT ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# ���������������ƣ�������Ϣ��
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
			AND table_name = 'Question'
			AND column_name = 'TeachCenterName'
		) THEN
			ALTER TABLE Question ADD TeachCenterName VARCHAR (100) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();