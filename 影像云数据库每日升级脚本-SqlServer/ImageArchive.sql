/*==============================================================*/
/* 2017-10-16

LogError（错误日志表）增加字段：ExamIndex nvarchar(64)，删除字段： AccessionNumber

*/
/*==============================================================*/
--- 检查内部唯一号（错误日志表）
if not exists(select * from syscolumns where id = object_id('LogError') and name = 'ExamIndex') 
alter table LogError add ExamIndex nvarchar (64)
go

--- 索引（错误日志表）
if not exists (select * from sysindexes where id = object_id('LogError')  and name = 'IX_LE_ExamIndex')
create index IX_LE_ExamIndex on LogError (
ExamIndex
)
go



---删除字段（错误日志表）
if exists(select * from syscolumns where id = object_id('LogError') and name = 'AccessionNumber') 
alter table LogError drop column AccessionNumber
go

/*==============================================================*/
/* 2017-10-17 

增加表：DayExamAmount（每日检查数核查表）
                                              
*/
/*==============================================================*/
-- 每日检查数核查表
if not exists (select * from sysobjects where name = 'DayExamAmount' and type = 'U')
create table DayExamAmount(
				DAY datetime NOT NULL,
				HospitalCode nvarchar (250) NOT NULL,
				HospitalName nvarchar (250),
				DataSource nvarchar (64) NOT NULL,
				DataSourceName nvarchar (64),
				ExamineType nvarchar (16) NOT NULL,
				TotalAmount int,
				RegistAmount int,
				constraint PK_DayExamAmount primary key (
					DAY,
					HospitalCode,
					DataSource,
					ExamineType
				)
			) 
                        go


/*==============================================================*/
/* 2017-10-18 

ObservationRequest（观察请求记录）修改字段：PlacerOrderNO nvarchar(128)
                                              
*/
/*==============================================================*/
-- 申请号（观察请求记录）
if  not exists(select * from syscolumns where id = object_id('ObservationRequest') and name = 'PlacerOrderNO') 
alter table ObservationRequest alter column PlacerOrderNO nvarchar (128)
go

/*==============================================================*/
/* 2017-10-30

ObservationRequest（观察请求记录表）增加字段：IsRepeatExamSum bit、IsDiseaseAnalysisSum bit 

*/
/*==============================================================*/
-- 重复检查已汇总标识（观察请求记录表）
if not exists(select * from syscolumns where id = object_id('ObservationRequest') and name = 'IsRepeatExamSum') 
alter table ObservationRequest add IsRepeatExamSum bit
go

-- 疾病分析已汇总标识（观察请求记录表）
if not exists(select * from syscolumns where id = object_id('ObservationRequest') and name = 'IsDiseaseAnalysisSum') 
alter table ObservationRequest add IsDiseaseAnalysisSum bit
go

/*==============================================================*/
/* 2017-11-01 

增加表：HospitalRegion（医院所属地区表）
                                              
*/
/*==============================================================*/
-- 医院所属地区表
if not exists (select * from sysobjects where name = 'HospitalRegion' and type = 'U')
create table HospitalRegion(
				Id int identity,
				HospitalCode nvarchar (250),
				HospitalName nvarchar (250),
				ProID int,
				ProvinceName nvarchar (20),
				CityID int,
				CityName nvarchar (20),
				CountyId int,
				CountyName nvarchar (20),
				constraint PK_HospitalRegion primary key (Id)
			) 
                       go


-- 索引（医院所属地区表）
if not exists (select * from sysindexes where id = object_id('HospitalRegion')  and name = 'IX_HR_HospitalCode')
create index IX_HR_HospitalCode on HospitalRegion(
HospitalCode
)
go

/*==============================================================*/
/* 2017-11-02

ExamCheckData（检查数据校对表）增加字段：CollectionTime datetime 
DayExamAmount（每日检查数核查表）增加字段：ImageAmount INT 

*/
/*==============================================================*/
-- 采集时间（检查数据校对表）
if not exists(select * from syscolumns where id = object_id('ExamCheckData') and name = 'CollectionTime') 
alter table ExamCheckData add CollectionTime datetime
go

-- 有影像检查总数量（每日检查数核查表）
if not exists(select * from syscolumns where id = object_id('DayExamAmount') and name = 'ImageAmount') 
alter table DayExamAmount add ImageAmount int
go

/*==============================================================*/
/* 2017-11-14

DayExamAmount（每日检查数核查表）增加字段：FilmAmount INT 

*/
/*==============================================================*/
-- 有胶片检查总数量（每日检查数核查表）
if not exists(select * from syscolumns where id = object_id('DayExamAmount') and name = 'FilmAmount') 
alter table DayExamAmount add FilmAmount int
go


/*==============================================================*/
/* 2017-11-23

Document（文档记录表）增加字段：FileDeleteFlag bit 

*/
/*==============================================================*/
---- 文件删除标志（文档记录表）

if not exists(select * from syscolumns where id = object_id('Document') and name = 'FileDeleteFlag') 
alter table Document add FileDeleteFlag bit
go


----索引（文档记录表）

if not exists (select * from sysindexes where id = object_id('Document') and name = 'IX_Document_FileDeleteFlag')
create index IX_Document_FileDeleteFlag on Document (
FileDeleteFlag
)
go


/*==============================================================*/
/* 2017-12-25

MediaMst（媒质表）增加字段：IsDirect bit 

*/
/*==============================================================*/
----- 是否直接上云（媒质表）

if not exists(select * from syscolumns where id = object_id('MediaMst') and name = 'IsDirect') 
alter table MediaMst add IsDirect bit
go

/*==============================================================*/
/* 2017-12-28

ObservationRequest（观察请求记录表）增加索引

*/
/*==============================================================*/
--------索引（观察请求记录表）

if not exists (select * from sysindexes where id = object_id('ObservationRequest')  and name = 'IX_ORE_PreliminaryDate')
create index IX_ORE_PreliminaryDate on ObservationRequest (
PreliminaryDate
)
go
/*==============================================================*/
/* 2018-01-08

ExamCheckData（检查数据校对表）增加字段：ReportTime datetime
DayExamAmount（每日检查数核查表）增加字段：PrepareTotalAmount INT

*/
/*==============================================================*/
------报告时间（检查数据校对表）


if not exists(select * from syscolumns where id = object_id('ExamCheckData') and name = 'ReportTime') 
alter table ExamCheckData add ReportTime datetime 
go

-------可发布检查总数量（每日检查数核查表）


if not exists(select * from syscolumns where id = object_id('DayExamAmount') and name = 'PrepareTotalAmount') 
alter table DayExamAmount add PrepareTotalAmount int 
go

/*==============================================================*/
/* 2018-01-18

IntegrationTask（集成任务表）增加字段：PerformTime datetime

*/
/*==============================================================*/
-----检查时间（集成任务表）


if not exists(select * from syscolumns where id = object_id('IntegrationTask') and name = 'PerformTime') 
alter table IntegrationTask add PerformTime datetime 
go


---------索引（集成任务表）


if not exists (select * from sysindexes where id = object_id('IntegrationTask')  and name = 'IX_IT_PerformTime')
create index IX_IT_PerformTime on IntegrationTask (
PerformTime
)
go


/*==============================================================*/
/* 2018-03-22

ObservationRequest（观察请求记录表）增加字段：CollectionMark SMALLINT
                                              
*/
/*==============================================================*/

------ 采集标识（观察请求记录表）
if not exists(select * from syscolumns where id = object_id('ObservationRequest') and name = 'CollectionMark') 
alter table ObservationRequest add CollectionMark smallint 
go



/*==============================================================*/
/* 2018-04-04 

增加表：ShortUrlAccess（短链接访问表）、ShortUrlAccessLog（短链接访问记录表）
                                              
*/
/*==============================================================*/
---- 短链接访问表


if not exists (select * from sysobjects where name = 'ShortUrlAccess' and type = 'U')
create table ShortUrlAccess(
                                AccessUID uniqueidentifier NOT NULL,
				AccessId nvarchar (16),
				Kind smallint,
				AccessMode smallint,
				PatientMasterID nvarchar (64),
				IDCardNO nvarchar (20),
				ObservationUID uniqueidentifier,
				AccessionNumber nvarchar (30),
				HospitalId nvarchar (64),
				Modality nvarchar (20),
				CustomParamContent nvarchar (1024),
				ExpireTime datetime,
				constraint PK_ShortUrlAccess primary key (AccessUID)
)
go




----索引（短链接访问表）


if not exists (select * from sysindexes where id = object_id('ShortUrlAccess')  and name = 'IX_SUA_AccessId')
create index IX_SUA_AccessId on ShortUrlAccess(
AccessId
)
go

-----短链接访问记录表
if not exists (select * from sysobjects where name = 'ShortUrlAccessLog' and type = 'U')
create table ShortUrlAccessLog(
                                Id int identity,
				AccessUID uniqueidentifier,
				UserId nvarchar (50),
				UserName nvarchar (50),
				AccessIP nvarchar (20),
				AccessTime datetime,
				constraint PK_ShortUrlAccessLog primary key (Id)
)
go


----索引（短链接访问记录表）

if not exists (select * from sysindexes where id = object_id('ShortUrlAccessLog')  and name = 'IX_SUAL_AccessUID')
create index IX_SUAL_AccessUID on ShortUrlAccessLog(
AccessUID
)
go


if not exists (select * from sysindexes where id = object_id('ShortUrlAccessLog')  and name = 'IX_SUAL_AccessIP')
create index IX_SUAL_AccessIP on ShortUrlAccessLog(
AccessIP
)
go

/*==============================================================*/
/* 2018-04-13 

增加表：JobServerVersion（JobServer版本管理表）
JobServer（Job服务程序表）增加字段：Version nvarchar(30)、IsNeedUpdate bit
                                              
*/
/*==============================================================*/
-----JobServer版本管理表
if not exists (select * from sysobjects where name = 'JobServerVersion' and type = 'U')
create table JobServerVersion(
                                Id int identity,
				ServiceUID uniqueidentifier,
				Version nvarchar (30),
				UpdateDate datetime,
				VersionName nvarchar (30),
				DownloadUrl nvarchar (300),
				FileSize FLOAT,
				FileSHA nvarchar (128),
				IsForceUpdate bit,
				IsNew bit,
				constraint PK_JobServerVersion primary key (Id)
)
go


----索引（JobServer版本管理表）


if not exists (select * from sysindexes where id = object_id('JobServerVersion')  and name = 'IX_JSV_ServiceUID')
create index IX_JSV_ServiceUID on JobServerVersion(
ServiceUID
)
go


if not exists(select * from syscolumns where id = object_id('JobServer') and name = 'Version') 
alter table JobServer add Version nvarchar(30)
go

----- 是否需要更新（Job服务程序表）

if not exists(select * from syscolumns where id = object_id('JobServer') and name = 'IsNeedUpdate') 
alter table JobServer add IsNeedUpdate bit
go




/*==============================================================*/
/* 2018-05-04

ObservationRequest（观察请求记录表）增加字段：ArchiveDate datetime
DayExamAmount（每日检查数核查表）增加字段：PublishTotalAmount INT、FaultTotalAmount INT
                                              
*/
/*==============================================================*/
-------- 归档时间（观察请求记录表）

if not exists(select * from syscolumns where id = object_id('ObservationRequest') and name = 'ArchiveDate') 
alter table ObservationRequest add ArchiveDate datetime
go



------已发布总数量（每日检查数核查表）

if not exists(select * from syscolumns where id = object_id('DayExamAmount') and name = 'PublishTotalAmount') 
alter table DayExamAmount add PublishTotalAmount int
go


----------- 失败总数量（每日检查数核查表）

if not exists(select * from syscolumns where id = object_id('DayExamAmount') and name = 'FaultTotalAmount') 
alter table DayExamAmount add FaultTotalAmount int
go

/*==============================================================*/
/* 2018-05-29

DicomStudy（影像的检查信息表）增加字段：IsAnonymous bit
                                              
*/
/*==============================================================*/
---------是否匿名化（影像的检查信息表）

if not exists(select * from syscolumns where id = object_id('DicomStudy') and name = 'IsAnonymous') 
alter table DicomStudy add IsAnonymous bit
go


/*==============================================================*/
/* 2018-06-01

JobServerVersion（JobServer版本管理表）增加字段：OrganizationID nvarchar(64)
                                              
*/
/*==============================================================*/
-----机构ID（JobServer版本管理表）


if not exists(select * from syscolumns where id = object_id('JobServerVersion') and name = 'OrganizationID') 
alter table JobServerVersion add OrganizationID nvarchar (64)
go




/*==============================================================*/
/* 2018-06-06 

Document（文档记录）修改字段：FileSize BIGINT
                                              
*/
/*==============================================================*/
----- 文件大小（文档记录）

/*
if exists(select * from syscolumns where id = object_id('Document') and name = 'FileSize') 
alter table Document alter column FileSize BIGINT
go
*/


/*==============================================================*/
/* 2018-06-07

JobServer（Job服务程序表）增加字段：IsCustomized bit
                                              
*/
/*==============================================================*/
------是否机构定制（Job服务程序表）

if not exists(select * from syscolumns where id = object_id('JobServer') and name = 'IsCustomized') 
alter table JobServer add IsCustomized bit
go