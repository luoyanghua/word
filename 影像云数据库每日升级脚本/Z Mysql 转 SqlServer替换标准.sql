##### mysql和SqlServer字段类型映射 begin #####

##### CHAR (36) - uniqueidentifier #####
##### VARCHAR - nvarchar #####
##### LONGTEXT - nvarchar(max) #####
##### INT - int #####
##### SMALLINT - smallint #####
##### DECIMAL (18, 2)  - decimal(18,2) #####
##### TINYINT (1) - bit #####
##### `` - "" #####
##### Id INT NOT NULL auto_increment - Id int identity #####
##### PRIMARY KEY (Id) - constraint PK_表名 primary key (Id) #####

##### mysql和SqlServer字段类型映射 #####


-- 判断要创建的表名是否存在
if exists (select * from sysobjects where name = '表名' and type = 'U')
-- 删除表
drop table [表名]
GO

-----判断字段是否存在
if exists(select * from syscolumns where id = object_id('表名') and name = '字段名') 
alter table 表名 drop column 字段名
go

-----判断索引是否存在
if exists (select * from sysindexes where id = object_id('表名')  and name = '索引名')
drop index 表名.索引名


-----Sql Server 增加字段、修改字段、修改类型、修改默认值
1、修改字段名：

　　alter table 表名 rename column A to B

2、修改字段类型：

　　alter table 表名 alter column 字段名 type

4、增加字段：

　　alter table 表名 add 字段名 type

5、删除字段：

　　alter table 表名 drop column 字段名;


##### SqlServer 脚本示例 #####

【增加表】示例：
if not exists (select * from sysobjects where name = 'CloudDiagnosisConfig' and type = 'U')
create table CloudDiagnosisConfig (
   Id                   int                  identity,
   ServiceCenterId      int                  null,
   ConfigName           nvarchar(200)        null,
   ConfigCode           nvarchar(200)        null,
   ConfigValue          nvarchar(200)        null,
   ConfigInstruct       nvarchar(1000)       null,
   constraint PK_CLOUDDIAGNOSISCONFIG primary key (Id)
)
go

【增加字段示例】：
if not exists(select * from syscolumns where id = object_id('DayExamAmount') and name = 'FilmAmount') 
alter table DayExamAmount add FilmAmount int
go

【修改字段示例】：
if exists(select * from syscolumns where id = object_id('DayExamAmount') and name = 'FilmAmount') 
alter table DayExamAmount alter column FilmAmount int
go

【删除字段示例】：
if exists(select * from syscolumns where id = object_id('DayExamAmount') and name = 'FilmAmount') 
alter table DayExamAmount drop column FilmAmount
go

【增加索引示例】：
if not exists (select * from sysindexes where id = object_id('CloudDiagnosisConfig')  and name = 'IX_CDC_ServiceCenterId')
create index IX_CDC_ServiceCenterId on CloudDiagnosisConfig (
ServiceCenterId ASC
)
go

【删除索引示例】：
if exists (select * from sysindexes where id = object_id('CloudDiagnosisConfig')  and name = 'IX_CDC_ServiceCenterId')
drop index CloudDiagnosisConfig.IX_CDC_ServiceCenterId
go
