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