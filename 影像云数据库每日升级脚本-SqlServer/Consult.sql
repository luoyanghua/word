/*==============================================================*/
/* 2017-12-21 

ApplyConsult��Զ�̻�������������ֶΣ�PreEndDate datetime
                                              
*/
/*==============================================================*/
----ԤԼ����ʱ�䣨Զ�̻��������


if not exists(select * from syscolumns where id = object_id('ApplyConsult') and name = 'PreEndDate') 
alter table ApplyConsult add PreEndDate datetime
go




/*==============================================================*/
/* 2018-03-21 

ApplyConsult��Զ�̻�������������ֶΣ�Source SMALLINT��SourceId uniqueidentifier
                                              
*/
/*==============================================================*/
------������Դ��Զ�̻��������
if not exists(select * from syscolumns where id = object_id('ApplyConsult') and name = 'Source') 
alter table ApplyConsult add Source smallint
go


------��ԴΨһ�ţ�Զ�̻��������
if not exists(select * from syscolumns where id = object_id('ApplyConsult') and name = 'SourceId') 
alter table ApplyConsult add SourceId uniqueidentifier
go



/*==============================================================*/
/* 2018-06-28 

ApplyConsult��Զ�̻�������������ֶΣ�CloudId nvarchar(50)
                                              
*/
/*==============================================================*/
----��Դ�ƶ��ʶ��Զ�̻��������

if not exists(select * from syscolumns where id = object_id('ApplyConsult') and name = 'CloudId') 
alter table ApplyConsult add CloudId nvarchar (50)
go









/*==============================================================*/
/* 2018-10-09

ApplyConsult��Զ�̻���������޸��ֶΣ�ClinicDiagnosis nvarchar(512)��PatientDesc nvarchar(1024)
                                              
*/
/*==============================================================*/
------�ٴ���ϣ�Զ�̻��������

if exists(select * from syscolumns where id = object_id('ApplyConsult') and name = 'ClinicDiagnosis') 
alter table ApplyConsult alter column ClinicDiagnosis nvarchar (512)
go


-----�������ߣ�Զ�̻��������




if exists(select * from syscolumns where id = object_id('ApplyConsult') and name = 'PatientDesc') 
alter table ApplyConsult alter column PatientDesc nvarchar (1024)
go






