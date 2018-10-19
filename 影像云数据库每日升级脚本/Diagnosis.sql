/*==============================================================*/
/* 2017-01-11 

CriticalValuesLog��Σ��ֵ��־�������ֶΣ�NoticePatientName nvarchar(64)��NoticePatientPhone nvarchar(20)
EcgRequest���ĵ��������������ֶΣ�Ward nvarchar(50)
                                              
*/
/*==============================================================*/
# ֪ͨ����������Σ��ֵ��־��
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
	AND table_name = 'CriticalValuesLog'
	AND column_name = 'NoticePatientName'
) THEN
	ALTER TABLE CriticalValuesLog ADD NoticePatientName VARCHAR (64) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# ֪ͨ������ϵ�绰��Σ��ֵ��־��
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
	AND table_name = 'CriticalValuesLog'
	AND column_name = 'NoticePatientPhone'
) THEN
	ALTER TABLE CriticalValuesLog ADD NoticePatientPhone VARCHAR (20) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# �������ĵ���������
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
	AND table_name = 'EcgRequest'
	AND column_name = 'Ward'
) THEN
	ALTER TABLE EcgRequest ADD Ward VARCHAR (50) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-01-12 

ImageRequest��Ӱ���������������ֶΣ�IsToConsult bit
EcgRequest���ĵ��������������ֶΣ�IsToConsult bit
                                              
*/
/*==============================================================*/
# �Ƿ�ת���Ӱ����������
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
	AND table_name = 'ImageRequest'
	AND column_name = 'IsToConsult'
) THEN
	ALTER TABLE ImageRequest ADD IsToConsult TINYINT (1) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# �Ƿ�ת����ĵ���������
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
	AND table_name = 'EcgRequest'
	AND column_name = 'IsToConsult'
) THEN
	ALTER TABLE EcgRequest ADD IsToConsult TINYINT (1) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-01-11 

EcgRequest���ĵ��������������ֶΣ�IsPrint bit��ReportPrintCount int
                                              
*/
/*==============================================================*/
# �����Ƿ��Ѵ�ӡ���ĵ���������
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
	AND table_name = 'EcgRequest'
	AND column_name = 'IsPrint'
) THEN
	ALTER TABLE EcgRequest ADD IsPrint TINYINT (1) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# �����ӡ�������ĵ���������
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
	AND table_name = 'EcgRequest'
	AND column_name = 'ReportPrintCount'
) THEN
	ALTER TABLE EcgRequest ADD ReportPrintCount INT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-02-28 

EcgCheckValue���ĵ�Ĭ�ϼ��ֵ���޸��ֶΣ�StartSecond FLOAT
EcgCheckValueReply���ĵ���ֵ�ظ����޸��ֶΣ�StartSecond FLOAT
                                              
*/
/*==============================================================*/
# ������ʼ�������ĵ�Ĭ�ϼ��ֵ��
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
	AND table_name = 'EcgCheckValue'
	AND column_name = 'StartSecond'
) THEN
	ALTER TABLE EcgCheckValue CHANGE StartSecond StartSecond FLOAT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# ������ʼ�������ĵ���ֵ�ظ���
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
	AND table_name = 'EcgCheckValueReply'
	AND column_name = 'StartSecond'
) THEN
	ALTER TABLE EcgCheckValueReply CHANGE StartSecond StartSecond FLOAT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-03-06 

QueryProgramme�����ò�ѯ�����������ֶΣ�InstitutionGuid uniqueidentifier
                                              
*/
/*==============================================================*/
# InstitutionGuid�����ò�ѯ������
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
	AND table_name = 'QueryProgramme'
	AND column_name = 'InstitutionGuid'
) THEN
	ALTER TABLE QueryProgramme ADD InstitutionGuid CHAR (36) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-03-16 

ɾ����ServiceCenterFallback��������Ķ��׹�ϵ��

*/
/*==============================================================*/
DROP TABLE
IF EXISTS ServiceCenterFallback;

/*==============================================================*/
/* 2017-03-21 

ImageRequest��Ӱ���������������ֶΣ�Priority SMALLINT
EcgRequest���ĵ��������������ֶΣ�Priority SMALLINT
                                              
*/
/*==============================================================*/
# ���ȼ���Ӱ����������
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
	AND table_name = 'ImageRequest'
	AND column_name = 'Priority'
) THEN
	ALTER TABLE ImageRequest ADD Priority SMALLINT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# ���ȼ����ĵ���������
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
	AND table_name = 'EcgRequest'
	AND column_name = 'Priority'
) THEN
	ALTER TABLE EcgRequest ADD Priority SMALLINT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-04-26 

���ӱ�ImageDiagnosisList��Ӱ������б��Ż�����
                                              
*/
/*==============================================================*/
# Ӱ������б��Ż���
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
		information_schema. TABLES
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'ImageDiagnosisList'
) THEN
	CREATE TABLE ImageDiagnosisList (
		Id INT NOT NULL auto_increment,
		GPatientId CHAR (36),
		IdNumber VARCHAR (20),
		MedNo VARCHAR (64),
		HealthCardNo VARCHAR (64),
		PatientName VARCHAR (64),
		PatientSex VARCHAR (4),
		ServiceId CHAR (36),
		PatientId VARCHAR (64),
		AccessionNumber VARCHAR (64),
		Age INT,
		AgeUnit VARCHAR (10),
		MedRecNo VARCHAR (50),
		ExamineType VARCHAR (10),
		ExamineDate datetime,
		StayInsu VARCHAR (20),
		RequestHospitalCode VARCHAR (250),
		RequestHospitalName VARCHAR (250),
		RequestDate datetime,
		RegisterDate datetime,
		ServiceCenterId INT,
		ServiceCenterName VARCHAR (100),
		ServiceState INT,
		ResubmitTimes INT,
		OccupyUID CHAR (36),
		IsOccupy TINYINT (1),
		AssignExpertName VARCHAR (50),
		AssignTime datetime,
		PatientPhone VARCHAR (20),
		BedNumber VARCHAR (50),
		Priority SMALLINT,
		WriteCustomerName VARCHAR (50),
		WriteTime datetime,
		AuditCustomerName VARCHAR (50),
		AuditTime datetime,
		ReviseCustomerName VARCHAR (50),
		ReviseTime datetime,
		CustomerName VARCHAR (100),
		PRIMARY KEY (Id)
	) DEFAULT CHARSET = utf8 ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# ������Ӱ������б��Ż�����
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
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'ImageDiagnosisList'
	AND index_name = 'IX_IDL_GPatientId'
) THEN
	CREATE INDEX IX_IDL_GPatientId ON ImageDiagnosisList (GPatientId) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'ImageDiagnosisList'
	AND index_name = 'IX_IDL_HealthCardNo'
) THEN
	CREATE INDEX IX_IDL_HealthCardNo ON ImageDiagnosisList (HealthCardNo) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'ImageDiagnosisList'
	AND index_name = 'IX_IDL_PatientName'
) THEN
	CREATE INDEX IX_IDL_PatientName ON ImageDiagnosisList (PatientName) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'ImageDiagnosisList'
	AND index_name = 'IX_IDL_IdNumber'
) THEN
	CREATE INDEX IX_IDL_IdNumber ON ImageDiagnosisList (IdNumber) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'ImageDiagnosisList'
	AND index_name = 'IX_IDL_MedNo'
) THEN
	CREATE INDEX IX_IDL_MedNo ON ImageDiagnosisList (MedNo) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'ImageDiagnosisList'
	AND index_name = 'IX_IDL_ServiceId'
) THEN
	CREATE INDEX IX_IDL_ServiceId ON ImageDiagnosisList (ServiceId) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'ImageDiagnosisList'
	AND index_name = 'IX_IDL_RegisterDate'
) THEN
	CREATE INDEX IX_IDL_RegisterDate ON ImageDiagnosisList (RegisterDate) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'ImageDiagnosisList'
	AND index_name = 'IX_IDL_ServiceCenterId'
) THEN
	CREATE INDEX IX_IDL_ServiceCenterId ON ImageDiagnosisList (ServiceCenterId) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'ImageDiagnosisList'
	AND index_name = 'IX_IDL_RequestDate'
) THEN
	CREATE INDEX IX_IDL_RequestDate ON ImageDiagnosisList (RequestDate) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'ImageDiagnosisList'
	AND index_name = 'IX_IDL_ServiceState'
) THEN
	CREATE INDEX IX_IDL_ServiceState ON ImageDiagnosisList (ServiceState) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'ImageDiagnosisList'
	AND index_name = 'IX_IDL_ExamineType'
) THEN
	CREATE INDEX IX_IDL_ExamineType ON ImageDiagnosisList (ExamineType) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'ImageDiagnosisList'
	AND index_name = 'IX_IDL_StayInsu'
) THEN
	CREATE INDEX IX_IDL_StayInsu ON ImageDiagnosisList (StayInsu) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'ImageDiagnosisList'
	AND index_name = 'IX_IDL_OccupyUID'
) THEN
	CREATE INDEX IX_IDL_OccupyUID ON ImageDiagnosisList (OccupyUID) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'ImageDiagnosisList'
	AND index_name = 'IX_IDL_IsOccupy'
) THEN
	CREATE INDEX IX_IDL_IsOccupy ON ImageDiagnosisList (IsOccupy) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'ImageDiagnosisList'
	AND index_name = 'IX_IDL_AssignExpert'
) THEN
	CREATE INDEX IX_IDL_AssignExpert ON ImageDiagnosisList (AssignExpertName) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'ImageDiagnosisList'
	AND index_name = 'IX_IDL_RequestHospitalCode'
) THEN
	CREATE INDEX IX_IDL_RequestHospitalCode ON ImageDiagnosisList (RequestHospitalCode) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'ImageDiagnosisList'
	AND index_name = 'IX_IDL_CustomerName'
) THEN
	CREATE INDEX IX_IDL_CustomerName ON ImageDiagnosisList (CustomerName) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'ImageDiagnosisList'
	AND index_name = 'IX_IDL_MedRecNo'
) THEN
	CREATE INDEX IX_IDL_MedRecNo ON ImageDiagnosisList (MedRecNo) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'ImageDiagnosisList'
	AND index_name = 'IX_IDL_AccessionNumber'
) THEN
	CREATE INDEX IX_IDL_AccessionNumber ON ImageDiagnosisList (AccessionNumber) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'ImageDiagnosisList'
	AND index_name = 'IX_IDL_PatientId'
) THEN
	CREATE INDEX IX_IDL_PatientId ON ImageDiagnosisList (PatientId) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'ImageDiagnosisList'
	AND index_name = 'IX_IDL_WriteTime'
) THEN
	CREATE INDEX IX_IDL_WriteTime ON ImageDiagnosisList (WriteTime) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'ImageDiagnosisList'
	AND index_name = 'IX_IDL_WriteCustomerName'
) THEN
	CREATE INDEX IX_IDL_WriteCustomerName ON ImageDiagnosisList (WriteCustomerName) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'ImageDiagnosisList'
	AND index_name = 'IX_IDL_AuditTime'
) THEN
	CREATE INDEX IX_IDL_AuditTime ON ImageDiagnosisList (AuditTime) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'ImageDiagnosisList'
	AND index_name = 'IX_IDL_AuditCustomerName'
) THEN
	CREATE INDEX IX_IDL_AuditCustomerName ON ImageDiagnosisList (AuditCustomerName) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'ImageDiagnosisList'
	AND index_name = 'IX_IDL_ReviseTime'
) THEN
	CREATE INDEX IX_IDL_ReviseTime ON ImageDiagnosisList (ReviseTime) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'ImageDiagnosisList'
	AND index_name = 'IX_IDL_ReviseCustomerName'
) THEN
	CREATE INDEX IX_IDL_ReviseCustomerName ON ImageDiagnosisList (ReviseCustomerName) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'ImageDiagnosisList'
	AND index_name = 'IX_IDL_UnionIndex1'
) THEN
	CREATE INDEX IX_IDL_UnionIndex1 ON ImageDiagnosisList (Priority, StayInsu) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'ImageDiagnosisList'
	AND index_name = 'IX_IDL_UnionIndex2'
) THEN
	CREATE INDEX IX_IDL_UnionIndex2 ON ImageDiagnosisList (AgeUnit, Age) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'ImageDiagnosisList'
	AND index_name = 'IX_IDL_UnionIndex3'
) THEN
	CREATE INDEX IX_IDL_UnionIndex3 ON ImageDiagnosisList (IsOccupy, ServiceState) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'ImageDiagnosisList'
	AND index_name = 'IX_IDL_UnionIndex4'
) THEN
	CREATE INDEX IX_IDL_UnionIndex4 ON ImageDiagnosisList (
		IsOccupy,
		Priority,
		RequestDate,
		Id
	) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-05-09 

QueryProgramme�����ò�ѯ�����������ֶΣ�Kind SMALLINT
                                              
*/
/*==============================================================*/
# ������ͣ����ò�ѯ������
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
	AND table_name = 'QueryProgramme'
	AND column_name = 'Kind'
) THEN
	ALTER TABLE QueryProgramme ADD Kind SMALLINT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-05-23

ImageRequest��Ӱ���������������ֶΣ�IsSummary bit  
EcgRequest���ĵ��������������ֶΣ�IsSummary bit  

*/
/*==============================================================*/
# �ѻ��ܱ�ʶ��Ӱ����������
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
	AND table_name = 'ImageRequest'
	AND column_name = 'IsSummary'
) THEN
	ALTER TABLE ImageRequest ADD IsSummary TINYINT (1) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# �ѻ��ܱ�ʶ���ĵ���������
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
	AND table_name = 'EcgRequest'
	AND column_name = 'IsSummary'
) THEN
	ALTER TABLE EcgRequest ADD IsSummary TINYINT (1) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-06-12 

CriticalDictionary��Σ��ֵ�ֵ���޸��ֶΣ�State Ϊ SMALLINT
                                           
*/
/*==============================================================*/
# ״̬��Σ��ֵ�ֵ��
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
	AND table_name = 'CriticalDictionary'
	AND column_name = 'State'
) THEN
	ALTER TABLE CriticalDictionary CHANGE State State SMALLINT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-08-11

ImageRequest��Ӱ���������������ֶΣ�Fee decimal(18,2) 
EcgRequest���ĵ��������������ֶΣ�Fee decimal(18,2)
���ӱ�DiagnosisFee��Զ������շѱ�׼��  

*/
/*==============================================================*/
# �ܷ��ã�Ӱ����������
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
	AND table_name = 'ImageRequest'
	AND column_name = 'Fee'
) THEN
	ALTER TABLE ImageRequest ADD Fee DECIMAL (18, 2) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# �ܷ��ã��ĵ���������
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
	AND table_name = 'EcgRequest'
	AND column_name = 'Fee'
) THEN
	ALTER TABLE EcgRequest ADD Fee DECIMAL (18, 2) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# Զ������շѱ�׼��
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
		information_schema. TABLES
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'DiagnosisFee'
) THEN
	CREATE TABLE DiagnosisFee (
		Id INT NOT NULL auto_increment,
		DiagnosisKindCode VARCHAR (30),
		DiagnosisKindName VARCHAR (30),
		ExamineType VARCHAR (20),
		CommonFee DECIMAL (18, 2),
		ServiceCenterId INT,
		ServiceCenterName VARCHAR (100),
		IsAudit TINYINT (1),
		PRIMARY KEY (Id)
	) DEFAULT CHARSET = utf8 ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# ������Զ������շѱ�׼��
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
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'DiagnosisFee'
	AND index_name = 'IX_DFee_DiagnosisKindCode'
) THEN
	CREATE INDEX IX_DFee_DiagnosisKindCode ON DiagnosisFee (DiagnosisKindCode) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'DiagnosisFee'
	AND index_name = 'IX_DFee_ExamineType'
) THEN
	CREATE INDEX IX_DFee_ExamineType ON DiagnosisFee (ExamineType) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'DiagnosisFee'
	AND index_name = 'IX_DFee_ServiceCenterId'
) THEN
	CREATE INDEX IX_DFee_ServiceCenterId ON DiagnosisFee (ServiceCenterId) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-10-09

EcgRequest���ĵ��������������ֶΣ�ReportNumberOfChanges INT

*/
/*==============================================================*/
# �޶��������ĵ���������
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
	AND table_name = 'EcgRequest'
	AND column_name = 'ReportNumberOfChanges'
) THEN
	ALTER TABLE EcgRequest ADD ReportNumberOfChanges INT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-10-20

���ӱ�FundusRequest���۵�����������FundusRequestReply���۵��������ظ���  

*/
/*==============================================================*/
# �۵���������
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
		information_schema. TABLES
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'FundusRequest'
) THEN
	CREATE TABLE FundusRequest (
		Id INT NOT NULL auto_increment,
		ServiceId CHAR (36),
		GPatientId CHAR (36),
		PatientId VARCHAR (64),
		Age INT,
		AgeUnit VARCHAR (10),
		IsMarried INT,
		Nation VARCHAR (50),
		Profession VARCHAR (100),
		ClinicDiagnose VARCHAR (1024),
		PatientDesc VARCHAR (255),
		MedicalRecord VARCHAR (1024),
		FollowUpFlag TINYINT (1),
		ExamItemID VARCHAR (32),
		ExamItem VARCHAR (64),
		ExamEquipment VARCHAR (256),
		ExamCost DECIMAL (6, 2),
		ExamPurpose VARCHAR (256),
		ExamInfo LONGTEXT,
		ExamineDate datetime,
		ExamAttention VARCHAR (256),
		StayInsu VARCHAR (20),
		CustomerGuid CHAR (36),
		CustomerName VARCHAR (100),
		RequestPhone VARCHAR (20),
		RequestHospitalCode VARCHAR (250),
		RequestHospitalName VARCHAR (250),
		RequsetDeptName VARCHAR (200),
		RequestDate datetime,
		ExamDocID VARCHAR (64),
		ExamDoc VARCHAR (16),
		ExamDocPhone VARCHAR (20),
		RegisterDocID VARCHAR (64),
		RegisterDoc VARCHAR (16),
		RegisterDocPhone VARCHAR (20),
		RegisterDate datetime,
		OriginalWriterID VARCHAR (64),
		OriginalWriterName VARCHAR (64),
		OriginalWriterPhone VARCHAR (20),
		ServiceCenterId INT,
		ServiceCenterName VARCHAR (100),
		Fee DECIMAL (18, 2),
		ServiceState INT,
		ResubmitTimes INT,
		IsEmergencyLock TINYINT (1),
		CriticalValues VARCHAR (100),
		IsOccupy TINYINT (1),
		OccupyUID CHAR (36),
		OccupyName VARCHAR (50),
		OccupyTime datetime,
		AssignExpert CHAR (36),
		AssignExpertName VARCHAR (50),
		AssignTime datetime,
		HasNewMessage TINYINT (1),
		IsPrint TINYINT (1),
		ReportPrintCount INT,
		ReportNumberOfChanges INT,
		Allergy VARCHAR (500),
		IsPregnant TINYINT (1),
		InpatientNumber VARCHAR (200),
		BedNumber VARCHAR (50),
		HisSeriesNum VARCHAR (32),
		SecurityLevel VARCHAR (16),
		HisKeyNO VARCHAR (64),
		IsUrgency TINYINT (1),
		OrderID VARCHAR (64),
		AccessionNumber VARCHAR (64),
		MedRecNo VARCHAR (50),
		OutPatientNo VARCHAR (64),
		PhysicalNo VARCHAR (64),
		Ward VARCHAR (50),
		Priority SMALLINT,
		IsToConsult TINYINT (1),
		IsSummary TINYINT (1),
		PRIMARY KEY (Id)
	) DEFAULT CHARSET = utf8 ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# �������۵���������
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
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'FundusRequest'
	AND index_name = 'IX_FR_ServiceId'
) THEN
	CREATE INDEX IX_FR_ServiceId ON FundusRequest (ServiceId) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'FundusRequest'
	AND index_name = 'IX_FR_GPatientId'
) THEN
	CREATE INDEX IX_FR_GPatientId ON FundusRequest (GPatientId) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'FundusRequest'
	AND index_name = 'IX_FR_PatientId'
) THEN
	CREATE INDEX IX_FR_PatientId ON FundusRequest (PatientId) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'FundusRequest'
	AND index_name = 'IX_FR_StayInsu'
) THEN
	CREATE INDEX IX_FR_StayInsu ON FundusRequest (StayInsu) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'FundusRequest'
	AND index_name = 'IX_FR_RequestHospitalCode'
) THEN
	CREATE INDEX IX_FR_RequestHospitalCode ON FundusRequest (RequestHospitalCode) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'FundusRequest'
	AND index_name = 'IX_FR_CustomerGuid'
) THEN
	CREATE INDEX IX_FR_CustomerGuid ON FundusRequest (CustomerGuid) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'FundusRequest'
	AND index_name = 'IX_FR_RequestDate'
) THEN
	CREATE INDEX IX_FR_RequestDate ON FundusRequest (RequestDate) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'FundusRequest'
	AND index_name = 'IX_FR_ServiceCenterId'
) THEN
	CREATE INDEX IX_FR_ServiceCenterId ON FundusRequest (ServiceCenterId) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'FundusRequest'
	AND index_name = 'IX_FR_ServiceState'
) THEN
	CREATE INDEX IX_FR_ServiceState ON FundusRequest (ServiceState) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'FundusRequest'
	AND index_name = 'IX_FR_IsOccupy'
) THEN
	CREATE INDEX IX_FR_IsOccupy ON FundusRequest (IsOccupy) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'FundusRequest'
	AND index_name = 'IX_FR_IsPrint'
) THEN
	CREATE INDEX IX_FR_IsPrint ON FundusRequest (IsPrint) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'FundusRequest'
	AND index_name = 'IX_FR_AccessionNumber'
) THEN
	CREATE INDEX IX_FR_AccessionNumber ON FundusRequest (AccessionNumber) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'FundusRequest'
	AND index_name = 'IX_FR_MedRecNo'
) THEN
	CREATE INDEX IX_FR_MedRecNo ON FundusRequest (MedRecNo) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'FundusRequest'
	AND index_name = 'IX_FR_IsToConsult'
) THEN
	CREATE INDEX IX_FR_IsToConsult ON FundusRequest (IsToConsult) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# �۵��������ظ���
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
		information_schema. TABLES
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'FundusRequestReply'
) THEN
	CREATE TABLE FundusRequestReply (
		Id INT NOT NULL auto_increment,
		ServiceId CHAR (36),
		WriteCustomerGuid CHAR (36),
		WriteCustomerName VARCHAR (50),
		WriteTime datetime,
		AuditCustomerGuid CHAR (36),
		AuditCustomerName VARCHAR (50),
		AuditTime datetime,
		ReviseCustomerGuid CHAR (36),
		ReviseCustomerName VARCHAR (50),
		ReviseTime datetime,
		ReviseCount INT,
		ImageSight LONGTEXT,
		DiagnosisResult LONGTEXT,
		StructuredResult LONGTEXT,
		IsUrgencyReport TINYINT (1),
		Memo VARCHAR (1000),
		DigitalSignatureId INT,
		PRIMARY KEY (Id)
	) DEFAULT CHARSET = utf8 ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# �������۵��������ظ���
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
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'FundusRequestReply'
	AND index_name = 'IX_FRR_ServiceId'
) THEN
	CREATE INDEX IX_FRR_ServiceId ON FundusRequestReply (ServiceId) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'FundusRequestReply'
	AND index_name = 'IX_FRR_WCustomerGuid'
) THEN
	CREATE INDEX IX_FRR_WCustomerGuid ON FundusRequestReply (WriteCustomerGuid) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'FundusRequestReply'
	AND index_name = 'IX_FRR_WriteTime'
) THEN
	CREATE INDEX IX_FRR_WriteTime ON FundusRequestReply (WriteTime) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'FundusRequestReply'
	AND index_name = 'IX_FRR_ACustomerGuid'
) THEN
	CREATE INDEX IX_FRR_ACustomerGuid ON FundusRequestReply (AuditCustomerGuid) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'FundusRequestReply'
	AND index_name = 'IX_FRR_AuditTime'
) THEN
	CREATE INDEX IX_FRR_AuditTime ON FundusRequestReply (AuditTime) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'FundusRequestReply'
	AND index_name = 'IX_FRR_RCustomerGuid'
) THEN
	CREATE INDEX IX_FRR_RCustomerGuid ON FundusRequestReply (ReviseCustomerGuid) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'FundusRequestReply'
	AND index_name = 'IX_FRR_ReviseTime'
) THEN
	CREATE INDEX IX_FRR_ReviseTime ON FundusRequestReply (ReviseTime) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'FundusRequestReply'
	AND index_name = 'IX_FRR_IsUrgencyReport'
) THEN
	CREATE INDEX IX_FRR_IsUrgencyReport ON FundusRequestReply (IsUrgencyReport) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-10-23

���ӱ�DiagnosisImage��Զ�����ͼ�ı����

*/
/*==============================================================*/
# Զ�����ͼ�ı����
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
		information_schema. TABLES
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'DiagnosisImage'
) THEN
	CREATE TABLE DiagnosisImage (
		Id INT NOT NULL auto_increment,
		ServiceId CHAR (36),
		Kind SMALLINT,
		PicGuid CHAR (36),
		PictureUrl VARCHAR (300),
		IsUrl TINYINT (1),
		PRIMARY KEY (Id)
	) DEFAULT CHARSET = utf8 ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# ������Զ�����ͼ�ı����
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
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'DiagnosisImage'
	AND index_name = 'IX_DImage_ServiceId'
) THEN
	CREATE INDEX IX_DImage_ServiceId ON DiagnosisImage (ServiceId) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-10-26

���ӱ�ImageOrder��Ӱ��ת��ԤԼ��

*/
/*==============================================================*/
# Ӱ��ת��ԤԼ��
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
		information_schema. TABLES
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'ImageOrder'
) THEN
	CREATE TABLE ImageOrder (
		Id INT NOT NULL auto_increment,
		ServiceId CHAR (36),
		IdNumber VARCHAR (20),
		MedNo VARCHAR (64),
		InsuranceType VARCHAR (64),
		HealthCardNo VARCHAR (64),
		PatientName VARCHAR (64),
		PatientSex VARCHAR (4),
		PatientBirthday VARCHAR (10),
		PhoneCode VARCHAR (20),
		PatientId VARCHAR (64),
		AccessionNumber VARCHAR (64),
		Age INT,
		AgeUnit VARCHAR (10),
		IsMarried INT,
		Nation VARCHAR (50),
		Profession VARCHAR (100),
		MedRecNo VARCHAR (50),
		ClinicDocID VARCHAR (64),
		ClinicDoc VARCHAR (64),
		ClinicDocPhone VARCHAR (20),
		ClinicDiagnose VARCHAR (1024),
		PatientDesc VARCHAR (255),
		MedicalRecord VARCHAR (1024),
		ExamineType VARCHAR (10),
		ExamineBodyPart VARCHAR (256),
		CheckItem VARCHAR (256),
		CheckEquipment VARCHAR (256),
		ExamineDocID VARCHAR (64),
		ExamineDoc VARCHAR (64),
		ExamineDocPhone VARCHAR (20),
		ExamineDate datetime,
		StayInsu VARCHAR (20),
		RequestHospitalCode VARCHAR (250),
		RequestHospitalName VARCHAR (250),
		CustomerGuid CHAR (36),
		CustomerName VARCHAR (100),
		RequestPhone VARCHAR (20),
		RequestDate datetime,
		ServiceCenterId INT,
		ServiceCenterName VARCHAR (100),
		ServiceState INT,
		IsUrgency TINYINT (1),
		ResubmitTimes INT,
		Allergy VARCHAR (500),
		IsPregnant TINYINT (1),
		IsGreenChannel TINYINT (1),
		InpatientNumber VARCHAR (200),
		RequsetDeptName VARCHAR (200),
		PerDiagnosisRemark VARCHAR (2000),
		Attention VARCHAR (1000),
		PatientSigns VARCHAR (500),
		AuxiliaryDiagnosis VARCHAR (500),
		BedNumber VARCHAR (50),
		ExamCost DECIMAL (6, 2),
		ExamineTechnology VARCHAR (255),
		Priority SMALLINT,
		PRIMARY KEY (Id)
	) DEFAULT CHARSET = utf8 ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# ������Ӱ��ת��ԤԼ��
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
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'ImageOrder'
	AND index_name = 'IX_IO_ServiceId'
) THEN
	CREATE INDEX IX_IO_ServiceId ON ImageOrder (ServiceId) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'ImageOrder'
	AND index_name = 'IX_IO_IdNumber'
) THEN
	CREATE INDEX IX_IO_IdNumber ON ImageOrder (IdNumber) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'ImageOrder'
	AND index_name = 'IX_IO_MedNo'
) THEN
	CREATE INDEX IX_IO_MedNo ON ImageOrder (MedNo) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'ImageOrder'
	AND index_name = 'IX_IO_HealthCardNo'
) THEN
	CREATE INDEX IX_IO_HealthCardNo ON ImageOrder (HealthCardNo) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'ImageOrder'
	AND index_name = 'IX_IO_PatientName'
) THEN
	CREATE INDEX IX_IO_PatientName ON ImageOrder (PatientName) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'ImageOrder'
	AND index_name = 'IX_IO_PhoneCode'
) THEN
	CREATE INDEX IX_IO_PhoneCode ON ImageOrder (PhoneCode) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'ImageOrder'
	AND index_name = 'IX_IO_PatientId'
) THEN
	CREATE INDEX IX_IO_PatientId ON ImageOrder (PatientId) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'ImageOrder'
	AND index_name = 'IX_IO_AccessionNumber'
) THEN
	CREATE INDEX IX_IO_AccessionNumber ON ImageOrder (AccessionNumber) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'ImageOrder'
	AND index_name = 'IX_IO_MedRecNo'
) THEN
	CREATE INDEX IX_IO_MedRecNo ON ImageOrder (MedRecNo) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'ImageOrder'
	AND index_name = 'IX_IO_ExamineType'
) THEN
	CREATE INDEX IX_IO_ExamineType ON ImageOrder (ExamineType) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'ImageOrder'
	AND index_name = 'IX_IO_StayInsu'
) THEN
	CREATE INDEX IX_IO_StayInsu ON ImageOrder (StayInsu) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'ImageOrder'
	AND index_name = 'IX_IO_RequestHospitalCode'
) THEN
	CREATE INDEX IX_IO_RequestHospitalCode ON ImageOrder (RequestHospitalCode) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'ImageOrder'
	AND index_name = 'IX_IO_CustomerGuid'
) THEN
	CREATE INDEX IX_IO_CustomerGuid ON ImageOrder (CustomerGuid) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'ImageOrder'
	AND index_name = 'IX_IO_RequestDate'
) THEN
	CREATE INDEX IX_IO_RequestDate ON ImageOrder (RequestDate) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'ImageOrder'
	AND index_name = 'IX_IO_ServiceCenterId'
) THEN
	CREATE INDEX IX_IO_ServiceCenterId ON ImageOrder (ServiceCenterId) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'ImageOrder'
	AND index_name = 'IX_IO_ServiceState'
) THEN
	CREATE INDEX IX_IO_ServiceState ON ImageOrder (ServiceState) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2018-01-24

���ӱ�WorkPosition����λ����PostSchedule����λ�Ű��  

*/
/*==============================================================*/
# ��λ��
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
		information_schema. TABLES
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'WorkPosition'
) THEN
	CREATE TABLE WorkPosition (
		Id INT NOT NULL auto_increment,
		PositionName VARCHAR (200),
		BeginTime VARCHAR (8),
		EndTime VARCHAR (8),
		ExamineTypes VARCHAR (128),
		StayInsus VARCHAR (128),
		HospitalCodes VARCHAR (256),
		ServiceCenterId INT,
		ServiceCenterName VARCHAR (100),
		PRIMARY KEY (Id)
	) DEFAULT CHARSET = utf8 ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# ��������λ��
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
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'WorkPosition'
	AND index_name = 'IX_WP_ServiceCenterId'
) THEN
	CREATE INDEX IX_WP_ServiceCenterId ON WorkPosition (ServiceCenterId) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# ��λ�Ű��
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
		information_schema. TABLES
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'PostSchedule'
) THEN
	CREATE TABLE PostSchedule (
		Id INT NOT NULL auto_increment,
		WeekDay INT,
		SheduleDate datetime,
		PositionId INT,
		PositionName VARCHAR (200),
		BeginTime VARCHAR (8),
		EndTime VARCHAR (8),
		DoctorCustomerGuid CHAR (36),
		DoctorCustomerName VARCHAR (50),
		ServiceCenterId INT,
		ServiceCenterName VARCHAR (100),
		PRIMARY KEY (Id)
	) DEFAULT CHARSET = utf8 ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# ��������λ�Ű��
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
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'PostSchedule'
	AND index_name = 'IX_PS_SheduleDate'
) THEN
	CREATE INDEX IX_PS_SheduleDate ON PostSchedule (SheduleDate) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'PostSchedule'
	AND index_name = 'IX_PS_PositionId'
) THEN
	CREATE INDEX IX_PS_PositionId ON PostSchedule (PositionId) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'PostSchedule'
	AND index_name = 'IX_PS_BeginTime'
) THEN
	CREATE INDEX IX_PS_BeginTime ON PostSchedule (BeginTime) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'PostSchedule'
	AND index_name = 'IX_PS_EndTime'
) THEN
	CREATE INDEX IX_PS_EndTime ON PostSchedule (EndTime) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'PostSchedule'
	AND index_name = 'IX_PS_ServiceCenterId'
) THEN
	CREATE INDEX IX_PS_ServiceCenterId ON PostSchedule (ServiceCenterId) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2018-02-08

EcgRequest���ĵ�����������������  

*/
/*==============================================================*/
# �������ĵ���������
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
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'EcgRequest'
	AND index_name = 'IX_ER_AssignExpert'
) THEN
	CREATE INDEX IX_ER_AssignExpert ON EcgRequest (AssignExpert) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2018-02-28

EcgRequest���ĵ��������������ֶΣ�ScanState SMALLINT
EcgRequest���ĵ�����������������

*/
/*==============================================================*/
# Σ��ֵɨ��״̬���ĵ���������
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
	AND table_name = 'EcgRequest'
	AND column_name = 'ScanState'
) THEN
	ALTER TABLE EcgRequest ADD ScanState SMALLINT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# �������ĵ���������
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
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'EcgRequest'
	AND index_name = 'IX_ER_ScanState'
) THEN
	CREATE INDEX IX_ER_ScanState ON EcgRequest (ScanState) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2018-04-02

ExpertCloudRight��ר�������Ȩ�ޱ������ֶΣ�ServiceCenterId INT

*/
/*==============================================================*/
# ��������ID��ר�������Ȩ�ޱ�
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
	AND table_name = 'ExpertCloudRight'
	AND column_name = 'ServiceCenterId'
) THEN
	ALTER TABLE ExpertCloudRight ADD ServiceCenterId INT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2018-04-19

���ӱ�GradeTemplate���������ģ�����DiagnosisGrade��������ֱ�  
CloudDiagnosisReviseList��������޶����б�����ҽԺ�ͻ�����ѯ���أ��������ֶΣ�IsDelete bit
OperateProcess���������̱������ֶΣ�Kind SMALLINT

*/
/*==============================================================*/
# �������ģ���
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
		information_schema. TABLES
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'GradeTemplate'
) THEN
	CREATE TABLE GradeTemplate (
		Id INT NOT NULL auto_increment,
		Kind SMALLINT,
		Modality VARCHAR (16),
		Project VARCHAR (50),
		ExaminePoint VARCHAR (300),
		DefaultLower INT,
		DownLower INT,
		UpLower INT,
		ServiceCenterId INT,
		ServiceCenterName VARCHAR (100),
		PRIMARY KEY (Id)
	) DEFAULT CHARSET = utf8 ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# �������������ģ���
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
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'GradeTemplate'
	AND index_name = 'IX_GT_Modality'
) THEN
	CREATE INDEX IX_GT_Modality ON GradeTemplate (Modality) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'GradeTemplate'
	AND index_name = 'IX_GT_ServiceCenterId'
) THEN
	CREATE INDEX IX_GT_ServiceCenterId ON GradeTemplate (ServiceCenterId) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# ������ֱ�
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
		information_schema. TABLES
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'DiagnosisGrade'
) THEN
	CREATE TABLE DiagnosisGrade (
		Id INT NOT NULL auto_increment,
		ServiceId CHAR (36),
		Kind SMALLINT,
		Modality VARCHAR (16),
		MedRecNo VARCHAR (50),
		PatientId VARCHAR (64),
		AccessionNumber VARCHAR (64),
		PatientName VARCHAR (64),
		ExamineDocID VARCHAR (64),
		ExamineDoc VARCHAR (64),
		ExamineDate datetime,
		ReportDocID VARCHAR (64),
		ReportCustomerGuid CHAR (36),
		ReportCustomerName VARCHAR (50),
		RequestCustomerGuid CHAR (36),
		RequestCustomerName VARCHAR (100),
		RequestHospitalCode VARCHAR (250),
		RequestHospitalName VARCHAR (250),
		ServiceCenterId INT,
		ServiceCenterName VARCHAR (100),
		Grade INT,
		LEVEL VARCHAR (20),
		GradeReason VARCHAR (1024),
		GradeDate datetime,
		Memo VARCHAR (512),
		PRIMARY KEY (Id)
	) DEFAULT CHARSET = utf8 ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# ������������ֱ�
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
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'DiagnosisGrade'
	AND index_name = 'IX_DG_ServiceId'
) THEN
	CREATE INDEX IX_DG_ServiceId ON DiagnosisGrade (ServiceId) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'DiagnosisGrade'
	AND index_name = 'IX_DG_Modality'
) THEN
	CREATE INDEX IX_DG_Modality ON DiagnosisGrade (Modality) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'DiagnosisGrade'
	AND index_name = 'IX_DG_ExamineDate'
) THEN
	CREATE INDEX IX_DG_ExamineDate ON DiagnosisGrade (ExamineDate) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'DiagnosisGrade'
	AND index_name = 'IX_DG_ReportCustomerGuid'
) THEN
	CREATE INDEX IX_DG_ReportCustomerGuid ON DiagnosisGrade (ReportCustomerGuid) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'DiagnosisGrade'
	AND index_name = 'IX_DG_RequestCustomerGuid'
) THEN
	CREATE INDEX IX_DG_RequestCustomerGuid ON DiagnosisGrade (RequestCustomerGuid) ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'DiagnosisGrade'
	AND index_name = 'IX_DG_RequestHospitalCode'
) THEN
	CREATE INDEX IX_DG_RequestHospitalCode ON DiagnosisGrade (RequestHospitalCode) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'DiagnosisGrade'
	AND index_name = 'IX_DG_ServiceCenterId'
) THEN
	CREATE INDEX IX_DG_ServiceCenterId ON DiagnosisGrade (ServiceCenterId) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'DiagnosisGrade'
	AND index_name = 'IX_DG_Level'
) THEN
	CREATE INDEX IX_DG_Level ON DiagnosisGrade (LEVEL) ;
END
IF ;
IF NOT EXISTS (
	SELECT
		*
	FROM
		information_schema.statistics
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'DiagnosisGrade'
	AND index_name = 'IX_DG_GradeDate'
) THEN
	CREATE INDEX IX_DG_GradeDate ON DiagnosisGrade (GradeDate) ;
END
IF ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# �Ƿ���ɾ����������޶����б�����ҽԺ�ͻ�����ѯ���أ���
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
	AND table_name = 'CloudDiagnosisReviseList'
	AND column_name = 'IsDelete'
) THEN
	ALTER TABLE CloudDiagnosisReviseList ADD IsDelete TINYINT (1) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# ��������ͣ��������̱�
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
	AND table_name = 'OperateProcess'
	AND column_name = 'Kind'
) THEN
	ALTER TABLE OperateProcess ADD Kind SMALLINT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2018-06-11

���ӱ�OverTimeLog������ʱ��¼�� 

*/
/*==============================================================*/
# ����ʱ��¼��
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
		information_schema. TABLES
	WHERE
		table_schema = CurrentDatabase
	AND table_name = 'OverTimeLog'
) THEN
	CREATE TABLE OverTimeLog (
		Id INT NOT NULL auto_increment,
		ServiceId CHAR (36),
		Kind SMALLINT,
		DoctorCustomerGuid CHAR (36),
		DoctorCustomerName VARCHAR (50),
		ServiceCenterId INT,
		ServiceCenterName VARCHAR (100),
		RequestHospitalCode VARCHAR (250),
		RequestHospitalName VARCHAR (250),
		ExamineType VARCHAR (10),
		OperateType SMALLINT,
		OperateTime datetime,
		PRIMARY KEY (Id)
	) DEFAULT CHARSET = utf8 ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2018-10-09

ImageRequest��Ӱ�����������޸��ֶΣ�ClinicDiagnose nvarchar(512)��PatientDesc nvarchar(1024)��MedicalRecord nvarchar(MAX)
EcgRequest���ĵ����������޸��ֶΣ�ClinicDiagnose nvarchar(512)��PatientDesc nvarchar(1024)��MedicalRecord nvarchar(MAX)
FundusRequest���۵����������޸��ֶΣ�ClinicDiagnose nvarchar(512)��PatientDesc nvarchar(1024)��MedicalRecord nvarchar(MAX)
                                              
*/
/*==============================================================*/
# �ٴ���ϣ�Ӱ����������
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
	AND table_name = 'ImageRequest'
	AND column_name = 'ClinicDiagnose'
) THEN
	ALTER TABLE ImageRequest CHANGE ClinicDiagnose ClinicDiagnose VARCHAR (512) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# �������ߣ�Ӱ����������
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
	AND table_name = 'ImageRequest'
	AND column_name = 'PatientDesc'
) THEN
	ALTER TABLE ImageRequest CHANGE PatientDesc PatientDesc VARCHAR (1024) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# ���߲�ʷ��Ӱ����������
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
	AND table_name = 'ImageRequest'
	AND column_name = 'MedicalRecord '
) THEN
	ALTER TABLE ImageRequest CHANGE MedicalRecord MedicalRecord LONGTEXT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# �ٴ���ϣ��ĵ���������
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
	AND table_name = 'EcgRequest'
	AND column_name = 'ClinicDiagnose'
) THEN
	ALTER TABLE EcgRequest CHANGE ClinicDiagnose ClinicDiagnose VARCHAR (512) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# �������ߣ��ĵ���������
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
	AND table_name = 'EcgRequest'
	AND column_name = 'PatientDesc'
) THEN
	ALTER TABLE EcgRequest CHANGE PatientDesc PatientDesc VARCHAR (1024) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# ���߲�ʷ���ĵ���������
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
	AND table_name = 'EcgRequest'
	AND column_name = 'MedicalRecord '
) THEN
	ALTER TABLE EcgRequest CHANGE MedicalRecord MedicalRecord LONGTEXT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# �ٴ���ϣ��۵���������
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
	AND table_name = 'FundusRequest'
	AND column_name = 'ClinicDiagnose'
) THEN
	ALTER TABLE FundusRequest CHANGE ClinicDiagnose ClinicDiagnose VARCHAR (512) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# �������ߣ��۵���������
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
	AND table_name = 'FundusRequest'
	AND column_name = 'PatientDesc'
) THEN
	ALTER TABLE FundusRequest CHANGE PatientDesc PatientDesc VARCHAR (1024) ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();

# ���߲�ʷ���۵���������
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
	AND table_name = 'FundusRequest'
	AND column_name = 'MedicalRecord '
) THEN
	ALTER TABLE FundusRequest CHANGE MedicalRecord MedicalRecord LONGTEXT ;
END
IF ;
END//  
DELIMITER ;


CALL schema_change ();