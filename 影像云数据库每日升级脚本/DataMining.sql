/*==============================================================*/
/* 2018-03-22

Dim_Hospital（医院维度表）增加字段：HospitalKind SMALLINT
                                              
*/
/*==============================================================*/
# 医院类型（医院维度表）
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
			AND table_name = 'Dim_Hospital'
			AND column_name = 'HospitalKind'
		) THEN
			ALTER TABLE Dim_Hospital ADD HospitalKind SMALLINT ;
		END
		IF ;
		END//  
DELIMITER ;


CALL schema_change ();

