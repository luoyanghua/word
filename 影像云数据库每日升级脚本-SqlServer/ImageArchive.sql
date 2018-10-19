/*==============================================================*/
/* 2017-10-16

LogError��������־�������ֶΣ�ExamIndex nvarchar(64)��ɾ���ֶΣ� AccessionNumber

*/
/*==============================================================*/
--- ����ڲ�Ψһ�ţ�������־��
if not exists(select * from syscolumns where id = object_id('LogError') and name = 'ExamIndex') 
alter table LogError add ExamIndex nvarchar (64)
go

--- ������������־��
if not exists (select * from sysindexes where id = object_id('LogError')  and name = 'IX_LE_ExamIndex')
create index IX_LE_ExamIndex on LogError (
ExamIndex
)
go



---ɾ���ֶΣ�������־��
if exists(select * from syscolumns where id = object_id('LogError') and name = 'AccessionNumber') 
alter table LogError drop column AccessionNumber
go

/*==============================================================*/
/* 2017-10-17 

���ӱ�DayExamAmount��ÿ�ռ�����˲��
                                              
*/
/*==============================================================*/
-- ÿ�ռ�����˲��
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

ObservationRequest���۲������¼���޸��ֶΣ�PlacerOrderNO nvarchar(128)
                                              
*/
/*==============================================================*/
-- ����ţ��۲������¼��
if  not exists(select * from syscolumns where id = object_id('ObservationRequest') and name = 'PlacerOrderNO') 
alter table ObservationRequest alter column PlacerOrderNO nvarchar (128)
go

/*==============================================================*/
/* 2017-10-30

ObservationRequest���۲������¼�������ֶΣ�IsRepeatExamSum bit��IsDiseaseAnalysisSum bit 

*/
/*==============================================================*/
-- �ظ�����ѻ��ܱ�ʶ���۲������¼��
if not exists(select * from syscolumns where id = object_id('ObservationRequest') and name = 'IsRepeatExamSum') 
alter table ObservationRequest add IsRepeatExamSum bit
go

-- ���������ѻ��ܱ�ʶ���۲������¼��
if not exists(select * from syscolumns where id = object_id('ObservationRequest') and name = 'IsDiseaseAnalysisSum') 
alter table ObservationRequest add IsDiseaseAnalysisSum bit
go

/*==============================================================*/
/* 2017-11-01 

���ӱ�HospitalRegion��ҽԺ����������
                                              
*/
/*==============================================================*/
-- ҽԺ����������
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


-- ������ҽԺ����������
if not exists (select * from sysindexes where id = object_id('HospitalRegion')  and name = 'IX_HR_HospitalCode')
create index IX_HR_HospitalCode on HospitalRegion(
HospitalCode
)
go

/*==============================================================*/
/* 2017-11-02

ExamCheckData���������У�Ա������ֶΣ�CollectionTime datetime 
DayExamAmount��ÿ�ռ�����˲�������ֶΣ�ImageAmount INT 

*/
/*==============================================================*/
-- �ɼ�ʱ�䣨�������У�Ա�
if not exists(select * from syscolumns where id = object_id('ExamCheckData') and name = 'CollectionTime') 
alter table ExamCheckData add CollectionTime datetime
go

-- ��Ӱ������������ÿ�ռ�����˲��
if not exists(select * from syscolumns where id = object_id('DayExamAmount') and name = 'ImageAmount') 
alter table DayExamAmount add ImageAmount int
go

/*==============================================================*/
/* 2017-11-14

DayExamAmount��ÿ�ռ�����˲�������ֶΣ�FilmAmount INT 

*/
/*==============================================================*/
-- �н�Ƭ�����������ÿ�ռ�����˲��
if not exists(select * from syscolumns where id = object_id('DayExamAmount') and name = 'FilmAmount') 
alter table DayExamAmount add FilmAmount int
go


/*==============================================================*/
/* 2017-11-23

Document���ĵ���¼�������ֶΣ�FileDeleteFlag bit 

*/
/*==============================================================*/
---- �ļ�ɾ����־���ĵ���¼��

if not exists(select * from syscolumns where id = object_id('Document') and name = 'FileDeleteFlag') 
alter table Document add FileDeleteFlag bit
go


----�������ĵ���¼��

if not exists (select * from sysindexes where id = object_id('Document') and name = 'IX_Document_FileDeleteFlag')
create index IX_Document_FileDeleteFlag on Document (
FileDeleteFlag
)
go


/*==============================================================*/
/* 2017-12-25

MediaMst��ý�ʱ������ֶΣ�IsDirect bit 

*/
/*==============================================================*/
----- �Ƿ�ֱ�����ƣ�ý�ʱ�

if not exists(select * from syscolumns where id = object_id('MediaMst') and name = 'IsDirect') 
alter table MediaMst add IsDirect bit
go

/*==============================================================*/
/* 2017-12-28

ObservationRequest���۲������¼����������

*/
/*==============================================================*/
--------�������۲������¼��

if not exists (select * from sysindexes where id = object_id('ObservationRequest')  and name = 'IX_ORE_PreliminaryDate')
create index IX_ORE_PreliminaryDate on ObservationRequest (
PreliminaryDate
)
go
/*==============================================================*/
/* 2018-01-08

ExamCheckData���������У�Ա������ֶΣ�ReportTime datetime
DayExamAmount��ÿ�ռ�����˲�������ֶΣ�PrepareTotalAmount INT

*/
/*==============================================================*/
------����ʱ�䣨�������У�Ա�


if not exists(select * from syscolumns where id = object_id('ExamCheckData') and name = 'ReportTime') 
alter table ExamCheckData add ReportTime datetime 
go

-------�ɷ��������������ÿ�ռ�����˲��


if not exists(select * from syscolumns where id = object_id('DayExamAmount') and name = 'PrepareTotalAmount') 
alter table DayExamAmount add PrepareTotalAmount int 
go

/*==============================================================*/
/* 2018-01-18

IntegrationTask����������������ֶΣ�PerformTime datetime

*/
/*==============================================================*/
-----���ʱ�䣨���������


if not exists(select * from syscolumns where id = object_id('IntegrationTask') and name = 'PerformTime') 
alter table IntegrationTask add PerformTime datetime 
go


---------���������������


if not exists (select * from sysindexes where id = object_id('IntegrationTask')  and name = 'IX_IT_PerformTime')
create index IX_IT_PerformTime on IntegrationTask (
PerformTime
)
go


/*==============================================================*/
/* 2018-03-22

ObservationRequest���۲������¼�������ֶΣ�CollectionMark SMALLINT
                                              
*/
/*==============================================================*/

------ �ɼ���ʶ���۲������¼��
if not exists(select * from syscolumns where id = object_id('ObservationRequest') and name = 'CollectionMark') 
alter table ObservationRequest add CollectionMark smallint 
go



/*==============================================================*/
/* 2018-04-04 

���ӱ�ShortUrlAccess�������ӷ��ʱ���ShortUrlAccessLog�������ӷ��ʼ�¼��
                                              
*/
/*==============================================================*/
---- �����ӷ��ʱ�


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




----�����������ӷ��ʱ�


if not exists (select * from sysindexes where id = object_id('ShortUrlAccess')  and name = 'IX_SUA_AccessId')
create index IX_SUA_AccessId on ShortUrlAccess(
AccessId
)
go

-----�����ӷ��ʼ�¼��
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


----�����������ӷ��ʼ�¼��

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

���ӱ�JobServerVersion��JobServer�汾�����
JobServer��Job�������������ֶΣ�Version nvarchar(30)��IsNeedUpdate bit
                                              
*/
/*==============================================================*/
-----JobServer�汾�����
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


----������JobServer�汾�����


if not exists (select * from sysindexes where id = object_id('JobServerVersion')  and name = 'IX_JSV_ServiceUID')
create index IX_JSV_ServiceUID on JobServerVersion(
ServiceUID
)
go


if not exists(select * from syscolumns where id = object_id('JobServer') and name = 'Version') 
alter table JobServer add Version nvarchar(30)
go

----- �Ƿ���Ҫ���£�Job��������

if not exists(select * from syscolumns where id = object_id('JobServer') and name = 'IsNeedUpdate') 
alter table JobServer add IsNeedUpdate bit
go




/*==============================================================*/
/* 2018-05-04

ObservationRequest���۲������¼�������ֶΣ�ArchiveDate datetime
DayExamAmount��ÿ�ռ�����˲�������ֶΣ�PublishTotalAmount INT��FaultTotalAmount INT
                                              
*/
/*==============================================================*/
-------- �鵵ʱ�䣨�۲������¼��

if not exists(select * from syscolumns where id = object_id('ObservationRequest') and name = 'ArchiveDate') 
alter table ObservationRequest add ArchiveDate datetime
go



------�ѷ�����������ÿ�ռ�����˲��

if not exists(select * from syscolumns where id = object_id('DayExamAmount') and name = 'PublishTotalAmount') 
alter table DayExamAmount add PublishTotalAmount int
go


----------- ʧ����������ÿ�ռ�����˲��

if not exists(select * from syscolumns where id = object_id('DayExamAmount') and name = 'FaultTotalAmount') 
alter table DayExamAmount add FaultTotalAmount int
go

/*==============================================================*/
/* 2018-05-29

DicomStudy��Ӱ��ļ����Ϣ�������ֶΣ�IsAnonymous bit
                                              
*/
/*==============================================================*/
---------�Ƿ���������Ӱ��ļ����Ϣ��

if not exists(select * from syscolumns where id = object_id('DicomStudy') and name = 'IsAnonymous') 
alter table DicomStudy add IsAnonymous bit
go


/*==============================================================*/
/* 2018-06-01

JobServerVersion��JobServer�汾����������ֶΣ�OrganizationID nvarchar(64)
                                              
*/
/*==============================================================*/
-----����ID��JobServer�汾�����


if not exists(select * from syscolumns where id = object_id('JobServerVersion') and name = 'OrganizationID') 
alter table JobServerVersion add OrganizationID nvarchar (64)
go




/*==============================================================*/
/* 2018-06-06 

Document���ĵ���¼���޸��ֶΣ�FileSize BIGINT
                                              
*/
/*==============================================================*/
----- �ļ���С���ĵ���¼��

/*
if exists(select * from syscolumns where id = object_id('Document') and name = 'FileSize') 
alter table Document alter column FileSize BIGINT
go
*/


/*==============================================================*/
/* 2018-06-07

JobServer��Job�������������ֶΣ�IsCustomized bit
                                              
*/
/*==============================================================*/
------�Ƿ�������ƣ�Job��������

if not exists(select * from syscolumns where id = object_id('JobServer') and name = 'IsCustomized') 
alter table JobServer add IsCustomized bit
go