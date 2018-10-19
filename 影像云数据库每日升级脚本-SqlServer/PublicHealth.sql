/*==============================================================*/
/* 2017-12-26 

增加表：NetClinic（网络门诊表）、NetClinicProcess（网络门诊过程表）、NetClinicKeyWord（网络门诊关键字表）
                                              
*/
/*==============================================================*/
------ 网络门诊表
if not exists (select * from sysobjects where name = 'NetClinic' and type = 'U')
create table NetClinic (
				Id int identity,
				ServiceId uniqueidentifier,
				SheduleKind int,
				PatientName nvarchar (64),
				PatientSex nvarchar (4),
				PatientBirthday nvarchar (10),
				Age int,
				AgeUnit nvarchar (2),
				PatientPhone nvarchar (20),
				IsMarried int,
				Nation nvarchar (50),
				Profession nvarchar (100),
				IdNumber nvarchar (20),
				HealthCardNumber nvarchar (250),
				HealthCardType nvarchar (10),
				PatientDesc nvarchar (500),
				FamilyHistory nvarchar (500),
				PastHistory nvarchar (2000),
				AllergyHistory nvarchar (300),
				Purpose nvarchar (1000),
				KeyWord nvarchar (200),
				CustomerGuid uniqueidentifier,
				CustomerName nvarchar (100),
				RequestPhone nvarchar (20),
				RequestDate datetime,
				HospitalCode nvarchar (250),
				HospitalName nvarchar (250),
				SubjectId int,
				SubjectName nvarchar (50),
				SheduleBeginTime datetime,
				SheduleEndTime datetime,
				OrderNo int,
				StartDate datetime,
				EndDate datetime,
				CancelReason nvarchar (300),
				ServiceState smallint,
				EvaluationState smallint,
				IsScript bit,
				Fee decimal(18,2),
				IsUrgency bit,
				ExpertCustomerGuid uniqueidentifier,
				ExpertCustomerName nvarchar (50),
				Diagnosis nvarchar (2000),
				DM nvarchar (64),
				ICD nvarchar (100),
				MC nvarchar (100),
				DiagnosisMemo nvarchar (1000),
				DiagnosisTime datetime,
				ReviseTime datetime,
				ServiceCenterId int,
				ServiceCenterName nvarchar (100),
				DigitalSignatureId int,
				ClientKind smallint,
				constraint PK_NetClinic primary key (Id)
			) 
                         go

------ 索引（网络门诊表）


if not exists (select * from sysindexes where id = object_id('NetClinic') and name = 'IX_NClinic_ServiceId')
create index IX_NClinic_ServiceId on NetClinic(
ServiceId
)
go



if not exists (select * from sysindexes where id = object_id('NetClinic') and name = 'IX_NClinic_CustomerGuid')
create index IX_NClinic_CustomerGuid on NetClinic(
CustomerGuid
)
go



if not exists (select * from sysindexes where id = object_id('NetClinic') and name = 'IX_NClinic_RequestDate')
create index IX_NClinic_RequestDate on NetClinic(
RequestDate
)
go



if not exists (select * from sysindexes where id = object_id('NetClinic') and name = 'IX_NClinic_OrderNo')
create index IX_NClinic_OrderNo on NetClinic(
OrderNo
)
go



if not exists (select * from sysindexes where id = object_id('NetClinic') and name = 'IX_NClinic_ExpertCustomerGuid')
create index IX_NClinic_ExpertCustomerGuid on NetClinic(
ExpertCustomerGuid
)
go



if not exists (select * from sysindexes where id = object_id('NetClinic') and name = 'IX_NClinic_ServiceCenterId')
create index IX_NClinic_ServiceCenterId on NetClinic(
ServiceCenterId
)
go



if not exists (select * from sysindexes where id = object_id('NetClinic') and  name = 'IX_NClinic_ServiceState')
create index IX_NClinic_ServiceState on NetClinic(
ServiceState
)
go



------网络门诊过程表

if not exists (select * from sysobjects where name = 'NetClinicProcess' and type = 'U')
create table NetClinicProcess(
				Id int identity,
				ServiceId uniqueidentifier,
				EVENT int,
				OperateDescription nvarchar (1024),
				OperateCustomerGuid uniqueidentifier,
				OperateCustomerName nvarchar (100),
				IP nvarchar (20),
				EventTime datetime,
				constraint PK_NetClinicProcess primary key (Id)
			) 
                       go

----- 索引（网络门诊过程表）


if not exists (select * from sysindexes where id = object_id('NetClinicProcess') and  name = 'IX_NCP_ServiceId')
create index IX_NCP_ServiceId on NetClinicProcess(
ServiceId 
)
go

if not exists (select * from sysindexes where id = object_id('NetClinicProcess') and name = 'IX_NCP_Event')
create index IX_NCP_Event on NetClinicProcess(
EVENT
)
go



if not exists (select * from sysindexes where id = object_id('NetClinicProcess') and name = 'IX_NCP_OCustomerGuid')
create index IX_NCP_OCustomerGuid on NetClinicProcess(
OperateCustomerGuid
)
go



if not exists (select * from sysindexes where id = object_id('NetClinicProcess') and name = 'IX_NCP_EventTime')
create index IX_NCP_EventTime on NetClinicProcess(
EventTime
)
go



----- 网络门诊关键字表

if not exists (select * from sysobjects where name = 'NetClinicKeyWord' and type = 'U')
create table NetClinicKeyWord(

				Id int identity,
				ServiceId uniqueidentifier NOT NULL,
				KeyWord nvarchar (50),
				constraint PK_NetClinicKeyWord primary key (Id)
			)          
                       go

------ 索引（网络门诊关键字表）

if not exists (select * from sysindexes where id = object_id('NetClinicKeyWord') and name = 'IX_NCKW_ServiceId')
create index IX_NCKW_ServiceId on NetClinicKeyWord(
ServiceId
)
go


/*==============================================================*/
/* 2017-12-28 

NetClinic(网络门诊表) 增加字段： PatientGuid uniqueidentifier、TitleCode nvarchar(20)、Title nvarchar(20)

*/
/*==============================================================*/
------ 患者唯一号（网络门诊表）

if not exists(select * from syscolumns where id = object_id('NetClinic') and name = 'PatientGuid') 
alter table NetClinic add PatientGuid uniqueidentifier
go

------专家职称Code（网络门诊表）

if not exists(select * from syscolumns where id = object_id('NetClinic') and name = 'TitleCode') 
alter table NetClinic add TitleCode nvarchar (20)
go


------专家职称（网络门诊表）

if not exists(select * from syscolumns where id = object_id('NetClinic') and name = 'Title') 
alter table NetClinic add Title nvarchar (20)
go
		