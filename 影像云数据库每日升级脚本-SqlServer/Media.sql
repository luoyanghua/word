/*==============================================================*/
/* 2017-10-17 

DigitalSignature(����ǩ����) �޸��ֶΣ� TimeStamp nvarchar(max)

*/
/*==============================================================*/
---ǩ��ʱ���������ǩ����
if exists(select * from syscolumns where id = object_id('DigitalSignature') and name = 'TimeStamp') 
alter table DigitalSignature alter column TimeStamp nvarchar(max)
go


/*==============================================================*/
/* 2017-11-20 

Certificate(�û���֤���) �����ֶΣ� InstitutionGuid uniqueidentifier

*/
/*==============================================================*/

if not exists(select * from syscolumns where id = object_id('Certificate') and name = 'InstitutionGuid') 
alter table Certificate add InstitutionGuid uniqueidentifier
go



/*==============================================================*/
/* 2017-12-20 

DigitalSignature(����ǩ����) �޸��ֶΣ� SignValue nvarchar(max)

*/
/*==============================================================*/
----- ǩ��ֵ������ǩ����

if exists(select * from syscolumns where id = object_id('DigitalSignature') and name = 'SignValue') 
alter table DigitalSignature alter column SignValue nvarchar(max)
go


/*==============================================================*/
/* 2018-03-06 

Certificate(�û���֤��) �޸��ֶΣ� UniqueID nvarchar(64)

*/
/*==============================================================*/
------֤���û�Ψһ��ʶ���û���֤�飩


if exists(select * from syscolumns where id = object_id('Certificate') and name = 'UniqueID') 
alter table Certificate alter column UniqueID nvarchar (64)
go


