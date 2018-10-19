/*==============================================================*/
/* 2017-12-21 

ApplyConsult（远程会诊申请表）增加字段：PreEndDate datetime
                                              
*/
/*==============================================================*/
----预约结束时间（远程会诊申请表）


if not exists(select * from syscolumns where id = object_id('ApplyConsult') and name = 'PreEndDate') 
alter table ApplyConsult add PreEndDate datetime
go




/*==============================================================*/
/* 2018-03-21 

ApplyConsult（远程会诊申请表）增加字段：Source SMALLINT、SourceId uniqueidentifier
                                              
*/
/*==============================================================*/
------数据来源（远程会诊申请表）
if not exists(select * from syscolumns where id = object_id('ApplyConsult') and name = 'Source') 
alter table ApplyConsult add Source smallint
go


------来源唯一号（远程会诊申请表）
if not exists(select * from syscolumns where id = object_id('ApplyConsult') and name = 'SourceId') 
alter table ApplyConsult add SourceId uniqueidentifier
go



/*==============================================================*/
/* 2018-06-28 

ApplyConsult（远程会诊申请表）增加字段：CloudId nvarchar(50)
                                              
*/
/*==============================================================*/
----来源云朵标识（远程会诊申请表）

if not exists(select * from syscolumns where id = object_id('ApplyConsult') and name = 'CloudId') 
alter table ApplyConsult add CloudId nvarchar (50)
go