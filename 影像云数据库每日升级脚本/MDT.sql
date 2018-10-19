/*==============================================================*/
/* 2018-10-09

ApplyMDT（多学科会诊申请表）修改字段：PatientDesc nvarchar(1024)
                                              
*/
/*==============================================================*/
# 临床诊断（多学科会诊申请表）
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
	AND table_name = 'ApplyMDT'
	AND column_name = 'ClinicDiagnosis'
) THEN
	ALTER TABLE ApplyMDT CHANGE ClinicDiagnosis ClinicDiagnosis VARCHAR (512) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# 患者主诉（远多学科会诊申请表）
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
	AND table_name = 'ApplyMDT'
	AND column_name = 'PatientDesc'
) THEN
	ALTER TABLE ApplyMDT CHANGE PatientDesc PatientDesc VARCHAR (1024) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();