/*==============================================================*/
/* 2017-06-20

Teach��ֱ���γ̱������ֶΣ�SpanTime INT
Vod���㲥�γ̱������ֶΣ�SpanTime INT
TeachSearch���γ̼����������ֶΣ�SpanTime INT

*/
/*==============================================================*/
# �γ�ʱ�������ӣ���ֱ���γ̱�
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
			AND table_name = 'Teach'
			AND column_name = 'SpanTime'
		) THEN
			ALTER TABLE Teach ADD SpanTime INT ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# �γ�ʱ�������ӣ����㲥�γ̱�
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
			AND table_name = 'Vod'
			AND column_name = 'SpanTime'
		) THEN
			ALTER TABLE Vod ADD SpanTime INT ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# �γ�ʱ�������ӣ����γ̼�����
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
			AND table_name = 'TeachSearch'
			AND column_name = 'SpanTime'
		) THEN
			ALTER TABLE TeachSearch ADD SpanTime INT ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-08-15

TeachSearch���γ̼����������ֶΣ�IsPrivate bit

*/
/*==============================================================*/
# ˽�б�ʶ�����ӣ����γ̼�����
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
			AND table_name = 'TeachSearch'
			AND column_name = 'IsPrivate'
		) THEN
			ALTER TABLE TeachSearch ADD IsPrivate TINYINT (1) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

