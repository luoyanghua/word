


/*==============================================================*/
/* 2018-08-27
  新增 ApplyConsult 病理会诊申请表的 OutHospitalNo 字段                                   
*/
/*==============================================================*/

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
			AND table_name = 'ApplyConsult'
			AND column_name = 'OutHospitalNo'
		) THEN
			ALTER TABLE ApplyConsult ADD OutHospitalNo VARCHAR (30);
		END
		IF ;
		END//  
DELIMITER ;

CALL schema_change ();


/*==============================================================*/
/* 2018-09-04
  新增 术中冰冻排班 FreezingShedule 表                           
*/
/*==============================================================*/

--  术中冰冻排班
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
			AND table_name = 'FreezingShedule'
		) THEN
			CREATE TABLE FreezingShedule (
				Id INT NOT NULL auto_increment,
				WeekDay INT NULL,
			    SheduleDate DATETIME NULL,
				PartCode VARCHAR (50) NULL,
				PartName VARCHAR (100) NULL,
				ExpertCustomerGuid CHAR (36) NULL,
				ExpertCustomerName VARCHAR (50) NULL,
				ExpertTitle VARCHAR (20) NULL,
				ServiceCenterId INT NULL,
				ServiceCenterName VARCHAR (100) NULL,
				IsStop TINYINT (1) NULL,
				IsDay = NULL,
				PRIMARY KEY (Id)
			) DEFAULT CHARSET = utf8 ;
		END
		IF ;
		END//  
DELIMITER ;

CALL schema_change ();



/*==============================================================*/
/* 2018-09-05
  新增 ApplyConsult 病理会诊申请表的 Phone   RequestCustomerGuid   RequestCustomerName                               
*/
/*==============================================================*/

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
			AND table_name = 'ApplyConsult'
			AND column_name = 'Phone'
		) THEN
			ALTER TABLE ApplyConsult ADD Phone VARCHAR (20);
		END
		IF ;
		END//  
DELIMITER ;
CALL schema_change ();


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
			AND table_name = 'ApplyConsult'
			AND column_name = 'RequestCustomerGuid'
		) THEN
			ALTER TABLE ApplyConsult ADD RequestCustomerGuid CHAR (36);
		END
		IF ;
		END//  
DELIMITER ;
CALL schema_change ();


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
			AND table_name = 'ApplyConsult'
			AND column_name = 'RequestCustomerName'
		) THEN
			ALTER TABLE ApplyConsult ADD RequestCustomerName VARCHAR (100);
		END
		IF ;
		END//  
DELIMITER ;
CALL schema_change ();



/*==============================================================*/
/* 2018-09-19
  Express （线下快递信息表）增加字段： 
  BackName nvarchar(50)
  BackPhone nvarchar(20)                                
*/
/*==============================================================*/

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
			AND table_name = 'Express'
			AND column_name = 'BackName'
		) THEN
			ALTER TABLE Express ADD BackName VARCHAR (50);
		END
		IF ;
		END//  
DELIMITER ;
CALL schema_change ();


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
			AND table_name = 'Express'
			AND column_name = 'BackPhone'
		) THEN
			ALTER TABLE Express ADD BackPhone VARCHAR (20);
		END
		IF ;
		END//  
DELIMITER ;
CALL schema_change ();


/*==============================================================*/
/* 2018-10-11
  Express （线下快递信息表）增加字段： 
  State smallint、 OtherThing nvarchar(30)                               
*/
/*==============================================================*/

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
			AND table_name = 'Express'
			AND column_name = 'State'
		) THEN
			ALTER TABLE Express ADD State smallint;
		END
		IF ;
		END//  
DELIMITER ;
CALL schema_change ();


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
			AND table_name = 'Express'
			AND column_name = 'OtherThing'
		) THEN
			ALTER TABLE Express ADD OtherThing VARCHAR (30);
		END
		IF ;
		END//  
DELIMITER ;
CALL schema_change ();



/*==============================================================*/
/* 2018-10-19
  ApplyConsult（病理会诊申请表）增加字段： ExamineOrgan nvarchar(30)
  Meeting （邀请沟通表）增加字段： IsSettle bit                              
*/
/*==============================================================*/
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
			AND table_name = 'ApplyConsult'
			AND column_name = 'ExamineOrgan'
		) THEN
			ALTER TABLE ApplyConsult ADD ExamineOrgan VARCHAR (30);
		END
		IF ;
		END//  
DELIMITER ;
CALL schema_change ();

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
			AND table_name = 'Meeting'
			AND column_name = 'IsSettle'
		) THEN
			ALTER TABLE Meeting ADD IsSettle TINYINT (1);
		END
		IF ;
		END//  
DELIMITER ;
CALL schema_change ();


