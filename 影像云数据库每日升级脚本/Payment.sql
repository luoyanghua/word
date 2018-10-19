/*==============================================================*/
/* 2017-06-12 

Charge（支付表）增加字段：IsSync bit
                                              
*/
/*==============================================================*/
# 是否已同步（门诊部）（支付表）
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
			AND table_name = 'Charge'
			AND column_name = 'IsSync'
		) THEN
			ALTER TABLE Charge ADD IsSync TINYINT (1) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 索引（支付表）
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
			AND table_name = 'Charge'
			AND index_name = 'IX_C_IsSync'
		) THEN
			CREATE INDEX IX_C_IsSync ON Charge (IsSync) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

/*==============================================================*/
/* 2017-07-11 

Charge（支付表）增加字段：ServiceCenterId int、ServiceCenterName nvarchar(100)
Refund（退款表）增加字段：ServiceCenterId int、ServiceCenterName nvarchar(100)
DoctorInCome（医生收入表）增加字段：ServiceCenterId int、ServiceCenterName nvarchar(100)、CustomerName nvarchar(50)
                                              
*/
/*==============================================================*/
# 服务中心ID（支付表）
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
			AND table_name = 'Charge'
			AND column_name = 'ServiceCenterId'
		) THEN
			ALTER TABLE Charge ADD ServiceCenterId INT ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 服务中心名称（支付表）
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
			AND table_name = 'Charge'
			AND column_name = 'ServiceCenterName'
		) THEN
			ALTER TABLE Charge ADD ServiceCenterName VARCHAR (100) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 索引（支付表）
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
			AND table_name = 'Charge'
			AND index_name = 'IX_C_ServiceCenterId'
		) THEN
			CREATE INDEX IX_C_ServiceCenterId ON Charge (ServiceCenterId) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 服务中心ID（退款表）
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
			AND table_name = 'Refund'
			AND column_name = 'ServiceCenterId'
		) THEN
			ALTER TABLE Refund ADD ServiceCenterId INT ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 服务中心名称（退款表）
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
			AND table_name = 'Refund'
			AND column_name = 'ServiceCenterName'
		) THEN
			ALTER TABLE Refund ADD ServiceCenterName VARCHAR (100) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 索引（退款表）
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
			AND table_name = 'Refund'
			AND index_name = 'IX_R_ServiceCenterId'
		) THEN
			CREATE INDEX IX_R_ServiceCenterId ON Refund (ServiceCenterId) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 服务中心ID（医生收入表）
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
			AND table_name = 'DoctorInCome'
			AND column_name = 'ServiceCenterId'
		) THEN
			ALTER TABLE DoctorInCome ADD ServiceCenterId INT ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 服务中心名称（医生收入表）
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
			AND table_name = 'DoctorInCome'
			AND column_name = 'ServiceCenterName'
		) THEN
			ALTER TABLE DoctorInCome ADD ServiceCenterName VARCHAR (100) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 医生姓名（医生收入表）
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
			AND table_name = 'DoctorInCome'
			AND column_name = 'CustomerName'
		) THEN
			ALTER TABLE DoctorInCome ADD CustomerName VARCHAR (50) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

# 索引（医生收入表）
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
			AND table_name = 'DoctorInCome'
			AND index_name = 'IX_DS_ServiceCenterId'
		) THEN
			CREATE INDEX IX_DS_ServiceCenterId ON DoctorInCome (ServiceCenterId) ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();