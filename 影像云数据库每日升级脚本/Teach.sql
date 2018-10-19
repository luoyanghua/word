/*==============================================================*/
/* 2017-06-20

Teach（直播课程表）增加字段：SpanTime INT
Vod（点播课程表）增加字段：SpanTime INT
TeachSearch（课程检索表）增加字段：SpanTime INT

*/
/*==============================================================*/
# 课程时长（分钟）（直播课程表）
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

# 课程时长（分钟）（点播课程表）
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

# 课程时长（分钟）（课程检索表）
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

TeachSearch（课程检索表）增加字段：IsPrivate bit

*/
/*==============================================================*/
# 私有标识（分钟）（课程检索表）
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

