/*==============================================================*/
/* 2018-03-22

Dim_Hospital（医院维度表）增加字段：HospitalKind SMALLINT
                                              
*/
/*==============================================================*/
------ 医院类型（医院维度表）


if not exists(select * from syscolumns where id = object_id('Dim_Hospital') and name = 'HospitalKind') 
alter table Dim_Hospital add HospitalKind smallint
go

