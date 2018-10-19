##### mysql��SqlServer�ֶ�����ӳ�� begin #####

##### CHAR (36) - uniqueidentifier #####
##### VARCHAR - nvarchar #####
##### LONGTEXT - nvarchar(max) #####
##### INT - int #####
##### SMALLINT - smallint #####
##### DECIMAL (18, 2)  - decimal(18,2) #####
##### TINYINT (1) - bit #####
##### `` - "" #####
##### Id INT NOT NULL auto_increment - Id int identity #####
##### PRIMARY KEY (Id) - constraint PK_���� primary key (Id) #####

##### mysql��SqlServer�ֶ�����ӳ�� #####


-- �ж�Ҫ�����ı����Ƿ����
if exists (select * from sysobjects where name = '����' and type = 'U')
-- ɾ����
drop table [����]
GO

-----�ж��ֶ��Ƿ����
if exists(select * from syscolumns where id = object_id('����') and name = '�ֶ���') 
alter table ���� drop column �ֶ���
go

-----�ж������Ƿ����
if exists (select * from sysindexes where id = object_id('����') and name = '������')
drop index ����.������


-----Sql Server �����ֶΡ��޸��ֶΡ��޸����͡��޸�Ĭ��ֵ
1���޸��ֶ�����

����alter table ���� rename column A to B

2���޸��ֶ����ͣ�

����alter table ���� alter column �ֶ��� type

4�������ֶΣ�

����alter table ���� add �ֶ��� type

5��ɾ���ֶΣ�

����alter table ���� drop column �ֶ���;


##### SqlServer �ű�ʾ�� #####

�����ӱ�ʾ����
if not exists (select * from sysobjects where name = 'LogAudit' and type = 'U')
create table LogAudit (
   Id                   int                  identity,
   ServiceCenterId      int                  null,
   ConfigName           nvarchar(200)        null,
   ConfigCode           nvarchar(200)        null,
   ConfigValue          nvarchar(200)        null,
   ConfigInstruct       nvarchar(1000)       null,
   constraint PK_CLOUDDIAGNOSISCONFIG primary key (Id)
)
go

�������ֶ�ʾ������
if not exists(select * from syscolumns where id = object_id('JobServer') and name = 'IsCustomized') 
alter table JobServer add IsCustomized bit
go

���޸��ֶ�ʾ������
if exists(select * from syscolumns where id = object_id('Document') and name = 'FileSize') 
alter table Document alter column FileSize BIGINT
go

��ɾ���ֶ�ʾ������
if exists(select * from syscolumns where id = object_id('DayExamAmount') and name = 'FilmAmount') 
alter table DayExamAmount drop column FilmAmount
go

����������ʾ������
if not exists (select * from sysindexes where id = object_id('LogAudit')  and name = 'IX_LA_LogId')
create index IX_LA_LogId on LogAudit(
LogId
)
go

��ɾ������ʾ������
if exists (select * from sysindexes where id = object_id('CloudDiagnosisConfig') and name = 'IX_CDC_ServiceCenterId')
drop index CloudDiagnosisConfig.IX_CDC_ServiceCenterId
go
