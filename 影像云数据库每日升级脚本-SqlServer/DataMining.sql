/*==============================================================*/
/* 2018-03-22

Dim_Hospital��ҽԺά�ȱ������ֶΣ�HospitalKind SMALLINT
                                              
*/
/*==============================================================*/
------ ҽԺ���ͣ�ҽԺά�ȱ�


if not exists(select * from syscolumns where id = object_id('Dim_Hospital') and name = 'HospitalKind') 
alter table Dim_Hospital add HospitalKind smallint
go

