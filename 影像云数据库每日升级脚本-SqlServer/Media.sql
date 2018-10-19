/*==============================================================*/
/* 2017-10-17 

DigitalSignature(数字签名表) 修改字段： TimeStamp nvarchar(max)

*/
/*==============================================================*/
---签名时间戳（数字签名表）
if exists(select * from syscolumns where id = object_id('DigitalSignature') and name = 'TimeStamp') 
alter table DigitalSignature alter column TimeStamp nvarchar(max)
go


/*==============================================================*/
/* 2017-11-20 

Certificate(用户绑定证书表) 增加字段： InstitutionGuid uniqueidentifier

*/
/*==============================================================*/

if not exists(select * from syscolumns where id = object_id('Certificate') and name = 'InstitutionGuid') 
alter table Certificate add InstitutionGuid uniqueidentifier
go



/*==============================================================*/
/* 2017-12-20 

DigitalSignature(数字签名表) 修改字段： SignValue nvarchar(max)

*/
/*==============================================================*/
----- 签名值（数字签名表）

if exists(select * from syscolumns where id = object_id('DigitalSignature') and name = 'SignValue') 
alter table DigitalSignature alter column SignValue nvarchar(max)
go


/*==============================================================*/
/* 2018-03-06 

Certificate(用户绑定证书) 修改字段： UniqueID nvarchar(64)

*/
/*==============================================================*/
------证书用户唯一标识（用户绑定证书）


if exists(select * from syscolumns where id = object_id('Certificate') and name = 'UniqueID') 
alter table Certificate alter column UniqueID nvarchar (64)
go


