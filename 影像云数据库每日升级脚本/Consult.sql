/*==============================================================*/
/* 2017-02-15 

ApplyConsult��Զ�̻�������������ֶΣ�BusinessId nvarchar(300)
                                              
*/
/*==============================================================*/
# ҵ��Ψһ�ţ�Զ�̻��������
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

ApplyConsult��Զ�̻�������������ֶΣ�IsSummary bit
                                              
*/
/*==============================================================*/
# �ѻ��ܱ�ʶ��Զ�̻��������
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

ConsultProcess��������̱������ֶΣ�OperateDescription nvarchar(1024)��OperateCustomerGuid uniqueidentifier��OperateCustomerName nvarchar(100)��IP nvarchar(20)
                                              
*/
/*==============================================================*/
# ����������������̱�
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

# �����û�Ψһ�ţ�������̱�
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

# �����û�������������̱�
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

# �����û�IP��������̱�
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

ApplyConsult��Զ�̻�������������ֶΣ�IsSync bit
ConsultProcess��������̱��޸��ֶΣ�OperateDescription nvarchar(max)                                              
*/
/*==============================================================*/
# �Ƿ���ͬ����Զ�̻��������
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

# ����������������̱�
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

ApplyConsult��Զ�̻����������ConsultFee�������շѱ�׼��ɾ���ֶΣ�PlatFee
                                              
*/
/*==============================================================*/
# ɾ��PlatFee�ֶΣ�Զ�̻��������
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

# ɾ��PlatFee�ֶΣ������շѱ�׼��
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

ApplyConsult��Զ�̻�������������ֶΣ�PreEndDate datetime
                                              
*/
/*==============================================================*/
# ԤԼ����ʱ�䣨Զ�̻��������
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

ApplyConsult��Զ�̻�������������ֶΣ�Source SMALLINT��SourceId uniqueidentifier
                                              
*/
/*==============================================================*/
# ������Դ��Զ�̻��������
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

# ��ԴΨһ�ţ�Զ�̻��������
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

ApplyConsult��Զ�̻�������������ֶΣ�CloudId nvarchar(50)
                                              
*/
/*==============================================================*/
# ��Դ�ƶ��ʶ��Զ�̻��������
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

ApplyConsult��Զ�̻���������޸��ֶΣ�ClinicDiagnosis nvarchar(512)��PatientDesc nvarchar(1024)
                                              
*/
/*==============================================================*/
# �ٴ���ϣ�Զ�̻��������
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

# �������ߣ�Զ�̻��������
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