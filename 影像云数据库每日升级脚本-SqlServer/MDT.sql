/*==============================================================*/
/* 2018-10-09

ApplyMDT（多学科会诊申请表）修改字段：PatientDesc nvarchar(1024)
                                              
*/
/*==============================================================*/
----- 临床诊断（多学科会诊申请表）


if exists(select * from syscolumns where id = object_id('ApplyMDT') and name = 'ClinicDiagnosis') 
alter table ApplyMDT alter column ClinicDiagnosis nvarchar(512)
go


-----患者主诉（远多学科会诊申请表）

if exists(select * from syscolumns where id = object_id('ApplyMDT') and name = 'PatientDesc') 
alter table ApplyMDT alter column PatientDesc nvarchar(1024)
go
