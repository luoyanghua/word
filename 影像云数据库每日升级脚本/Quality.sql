/*==============================================================*/
/* 2017-08-10

QualityTask���ʿ�����������ֶΣ�IsNoName bit

*/
/*==============================================================*/
# �Ƿ����������ʿ������
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
			AND table_name = 'QualityTask'
			AND column_name = 'IsNoName'
		) THEN
			ALTER TABLE QualityTask ADD IsNoName TINYINT (1) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-12-04

TaskRecord���ʿ������ȡ����������ֶΣ�Memo nvarchar(100)

*/
/*==============================================================*/
# ��ע���ʿ������ȡ�����
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
			AND table_name = 'TaskRecord'
			AND column_name = 'Memo'
		) THEN
			ALTER TABLE TaskRecord ADD Memo VARCHAR (100) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-12-11

ExaminationItemGrade�������Ŀ���ֱ������ֶΣ�MemberGuid uniqueidentifier
���ӱ�TaskGroup���ʿ����������TaskGroupMember���������Ա����TaskGroupHospital���������ʿ�ҽԺ����TaskGroupExamination���������������

*/
/*==============================================================*/
# �ʿ���Ա�û�Ψһ�ţ������Ŀ���ֱ�
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
			AND table_name = 'ExaminationItemGrade'
			AND column_name = 'MemberGuid'
		) THEN
			ALTER TABLE ExaminationItemGrade ADD MemberGuid CHAR (36) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# �����������Ŀ���ֱ�
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
				information_schema.statistics
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'ExaminationItemGrade'
			AND index_name = 'IX_EIG_MemberGuid'
		) THEN
			CREATE INDEX IX_EIG_MemberGuid ON ExaminationItemGrade (MemberGuid) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# �ʿ��������
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
			AND table_name = 'TaskGroup'
		) THEN
			CREATE TABLE TaskGroup (
				Id INT NOT NULL auto_increment,
				TaskId CHAR (36),
				GroupName VARCHAR (100),
				PRIMARY KEY (Id)
			) DEFAULT CHARSET = utf8 ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# �������ʿ��������
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
				information_schema.statistics
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'TaskGroup'
			AND index_name = 'IX_TG_TaskId'
		) THEN
			CREATE INDEX IX_TG_TaskId ON TaskGroup (TaskId) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# �������Ա��
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
			AND table_name = 'TaskGroupMember'
		) THEN
			CREATE TABLE TaskGroupMember (
				Id INT NOT NULL auto_increment,
				GroupId INT,
				MemberGuid CHAR (36),
				MemberName VARCHAR (100),
				PRIMARY KEY (Id)
			) DEFAULT CHARSET = utf8 ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# �������������Ա��
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
				information_schema.statistics
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'TaskGroupMember'
			AND index_name = 'IX_TGM_GroupId'
		) THEN
			CREATE INDEX IX_TGM_GroupId ON TaskGroupMember (GroupId) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# �������ʿ�ҽԺ��
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
			AND table_name = 'TaskGroupHospital'
		) THEN
			CREATE TABLE TaskGroupHospital (
				Id INT NOT NULL auto_increment,
				GroupId INT,
				HospitalCode VARCHAR (250),
				HospitalName VARCHAR (250),
				PRIMARY KEY (Id)
			) DEFAULT CHARSET = utf8 ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# �������������ʿ�ҽԺ��
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
				information_schema.statistics
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'TaskGroupHospital'
			AND index_name = 'IX_TGH_GroupId'
		) THEN
			CREATE INDEX IX_TGH_GroupId ON TaskGroupHospital (GroupId) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# �������������
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
			AND table_name = 'TaskGroupExamination'
		) THEN
			CREATE TABLE TaskGroupExamination (
				Id INT NOT NULL auto_increment,
				GroupId INT,
				ExamIndex CHAR (36),
				ExamineType VARCHAR (16),
				HospitalCode VARCHAR (250),
				HospitalName VARCHAR (250),
				PRIMARY KEY (Id)
			) DEFAULT CHARSET = utf8 ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# �������������������
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
				information_schema.statistics
			WHERE
				table_schema = CurrentDatabase
			AND table_name = 'TaskGroupExamination'
			AND index_name = 'IX_TGE_GroupId'
		) THEN
			CREATE INDEX IX_TGE_GroupId ON TaskGroupExamination (GroupId) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();