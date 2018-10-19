/*==============================================================*/
/* 2017-10-20

增加表：FundusRequest（眼底诊断申请表）、FundusRequestReply（眼底诊断申请回复表）  

*/
/*==============================================================*/
-- 眼底诊断申请表
if not exists (select * from sysobjects where name = 'FundusRequest' and type = 'U')
create table FundusRequest(
				Id int identity,
				ServiceId uniqueidentifier,
				GPatientId uniqueidentifier,
				PatientId nvarchar (64),
				Age int,
				AgeUnit nvarchar (10),
				IsMarried int,
				Nation nvarchar (50),
				Profession nvarchar (100),
				ClinicDiagnose nvarchar (1024),
				PatientDesc nvarchar (255),
				MedicalRecord nvarchar (1024),
				FollowUpFlag bit,
				ExamItemID nvarchar (32),
				ExamItem nvarchar (64),
				ExamEquipment nvarchar (256),
				ExamCost decimal (6, 2),
				ExamPurpose nvarchar (256),
				ExamInfo nvarchar(max),
				ExamineDate datetime,
				ExamAttention nvarchar (256),
				StayInsu nvarchar (20),
				CustomerGuid uniqueidentifier,
				CustomerName nvarchar (100),
				RequestPhone nvarchar (20),
				RequestHospitalCode nvarchar (250),
				RequestHospitalName nvarchar (250),
				RequsetDeptName nvarchar (200),
				RequestDate datetime,
				ExamDocID nvarchar (64),
				ExamDoc nvarchar (16),
				ExamDocPhone nvarchar (20),
				RegisterDocID nvarchar (64),
				RegisterDoc nvarchar (16),
				RegisterDocPhone nvarchar (20),
				RegisterDate datetime,
				OriginalWriterID nvarchar (64),
				OriginalWriterName nvarchar (64),
				OriginalWriterPhone nvarchar (20),
				ServiceCenterId int,
				ServiceCenterName nvarchar (100),
				Fee decimal(18, 2),
				ServiceState int,
				ResubmitTimes int,
				IsEmergencyLock bit,
				CriticalValues nvarchar (100),
				IsOccupy bit,
				OccupyUID uniqueidentifier,
				OccupyName nvarchar (50),
				OccupyTime datetime,
				AssignExpert uniqueidentifier,
				AssignExpertName nvarchar (50),
				AssignTime datetime,
				HasNewMessage bit,
				IsPrint bit,
				ReportPrintCount int,
				ReportNumberOfChanges int,
				Allergy nvarchar (500),
				IsPregnant bit,
				InpatientNumber nvarchar (200),
				BedNumber nvarchar (50),
				HisSeriesNum nvarchar (32),
				SecurityLevel nvarchar (16),
				HisKeyNO nvarchar (64),
				IsUrgency bit,
				OrderID nvarchar (64),
				AccessionNumber nvarchar (64),
				MedRecNo nvarchar (50),
				OutPatientNo nvarchar (64),
				PhysicalNo nvarchar (64),
				Ward nvarchar (50),
				Priority smallint,
				IsToConsult bit,
				IsSummary bit,
				constraint PK_FundusRequest primary key (Id)
			) 
                        go


--索引（眼底诊断申请表）
if not exists (select * from sysindexes where id = object_id('FundusRequest')and name = 'IX_FR_ServiceId')
create index IX_FR_ServiceId on FundusRequest(
ServiceId
)
go


if not exists (select * from sysindexes where id = object_id('FundusRequest') and name = 'IX_FR_GPatientId')
create index IX_FR_GPatientId on FundusRequest(
GPatientId
)
go


if not exists (select * from sysindexes where id = object_id('FundusRequest') and name = 'IX_FR_PatientId')
create index IX_FR_PatientId on FundusRequest(
PatientId
)
go


if not exists (select * from sysindexes where id = object_id('FundusRequest') and name = 'IX_FR_StayInsu')
create index IX_FR_StayInsu on FundusRequest(
StayInsu
)
go


if not exists (select * from sysindexes where id = object_id('FundusRequest')  and name = 'IX_FR_RequestHospitalCode')
create index IX_FR_RequestHospitalCode on FundusRequest(
RequestHospitalCode
)
go

if not exists (select * from sysindexes where id = object_id('FundusRequest')  and name = 'IX_FR_CustomerGuid')
create index IX_FR_CustomerGuid on FundusRequest(
CustomerGuid
)
go

if not exists (select * from sysindexes where id = object_id('FundusRequest')  and name = 'IX_FR_RequestDate')
create index IX_FR_RequestDate on FundusRequest(
RequestDate
)
go

if not exists (select * from sysindexes where id = object_id('FundusRequest')  and name = 'IX_FR_ServiceCenterId')
create index IX_FR_ServiceCenterId on FundusRequest(
ServiceCenterId
)
go

if not exists (select * from sysindexes where id = object_id('FundusRequest')  and name = 'IX_FR_ServiceState')
create index IX_FR_ServiceState on FundusRequest(
ServiceState
)
go


if not exists (select * from sysindexes where id = object_id('FundusRequest')  and name = 'IX_FR_IsOccupy')
create index IX_FR_IsOccupy on FundusRequest(
IsOccupy
)
go


if not exists (select * from sysindexes where id = object_id('FundusRequest') and name = 'IX_FR_IsPrint')
create index IX_FR_IsPrint on FundusRequest(
IsPrint
)
go


if not exists (select * from sysindexes where id = object_id('FundusRequest') and name = 'IX_FR_AccessionNumber')
create index IX_FR_AccessionNumber on FundusRequest(
AccessionNumber
)
go


if not exists (select * from sysindexes where id = object_id('FundusRequest')  and name = 'IX_FR_MedRecNo')
create index IX_FR_MedRecNo on FundusRequest(
MedRecNo
)
go

if not exists (select * from sysindexes where id = object_id('FundusRequest') and name = 'IX_FR_IsToConsult')
create index IX_FR_IsToConsult on FundusRequest(
IsToConsult
)
go

-- 眼底诊断申请回复表
if not exists (select * from sysobjects where name = 'FundusRequestReply' and type = 'U')
create table FundusRequestReply(
				Id int identity,
				ServiceId uniqueidentifier,
				WriteCustomerGuid uniqueidentifier,
				WriteCustomerName nvarchar (50),
				WriteTime datetime,
				AuditCustomerGuid uniqueidentifier,
				AuditCustomerName nvarchar (50),
				AuditTime datetime,
				ReviseCustomerGuid uniqueidentifier,
				ReviseCustomerName nvarchar (50),
				ReviseTime datetime,
				ReviseCount int,
				ImageSight nvarchar(max),
				DiagnosisResult nvarchar(max),
				StructuredResult nvarchar(max),
				IsUrgencyReport bit,
				Memo nvarchar (1000),
				DigitalSignatureId int,
				constraint PK_FundusRequestReply primary key (Id)
			) 
                      go
	

-- 索引（眼底诊断申请回复表）
if not exists (select * from sysindexes where id = object_id('FundusRequestReply')  and name = 'IX_FRR_ServiceId')
create index IX_FRR_ServiceId on FundusRequestReply(
ServiceId
)
go


if not exists (select * from sysindexes where id = object_id('FundusRequestReply')  and name = 'IX_FRR_WriteCustomerGuid')
create index IX_FRR_WriteCustomerGuid on FundusRequestReply(
WriteCustomerGuid
)
go


if not exists (select * from sysindexes where id = object_id('FundusRequestReply')  and name = 'IX_FRR_WriteTime')
create index IX_FRR_WriteTime on FundusRequestReply(
WriteTime
)
go


if not exists (select * from sysindexes where id = object_id('FundusRequestReply')  and name = 'IX_FRR_AuditCustomerGuid')
create index IX_FRR_AuditCustomerGuid on FundusRequestReply(
AuditCustomerGuid
)
go


if not exists (select * from sysindexes where id = object_id('FundusRequestReply')  and name = 'IX_FRR_AuditTime')
create index IX_FRR_AuditTime on FundusRequestReply(
AuditTime
)
go


if not exists (select * from sysindexes where id = object_id('FundusRequestReply')  and name = 'IX_FRR_ReviseCustomerGuid')
create index IX_FRR_ReviseCustomerGuid on FundusRequestReply(
ReviseCustomerGuid
)
go

if not exists (select * from sysindexes where id = object_id('FundusRequestReply')  and name = 'IX_FRR_ReviseTime')
create index IX_FRR_ReviseTime on FundusRequestReply(
ReviseTime
)
go


if not exists (select * from sysindexes where id = object_id('FundusRequestReply')  and name = 'IX_FRR_IsUrgencyReport')
create index IX_FRR_IsUrgencyReport on FundusRequestReply(
IsUrgencyReport
)
go

/*==============================================================*/
/* 2017-10-23

增加表：DiagnosisImage（远程诊断图文报告表）

*/
/*==============================================================*/
-- 远程诊断图文报告表
if not exists (select * from sysobjects where name = 'DiagnosisImage' and type = 'U')
create table DiagnosisImage(
				Id int identity,
				ServiceId uniqueidentifier,
				Kind smallint,
				PicGuid uniqueidentifier,
				PictureUrl nvarchar (300),
				IsUrl bit,
				constraint PK_DiagnosisImage primary key (Id)
			) 
                      go


-- 索引（远程诊断图文报告表）

if not exists (select * from sysindexes where id = object_id('DiagnosisImage')  and name = 'IX_DImage_ServiceId')
create index IX_DImage_ServiceId on DiagnosisImage(
ServiceId
)
go

/*==============================================================*/
/* 2017-10-26

增加表：ImageOrder（影像转检预约表）

*/
/*==============================================================*/
-- 影像转检预约表
if not exists (select * from sysobjects where name = 'ImageOrder' and type = 'U')
create table ImageOrder(
				Id int identity,
				ServiceId uniqueidentifier,
				IdNumber nvarchar (20),
				MedNo nvarchar (64),
				InsuranceType nvarchar (64),
				HealthCardNo nvarchar (64),
				PatientName nvarchar (64),
				PatientSex nvarchar (4),
				PatientBirthday nvarchar (10),
				PhoneCode nvarchar (20),
				PatientId nvarchar (64),
				AccessionNumber nvarchar (64),
				Age int,
				AgeUnit nvarchar (10),
				IsMarried int,
				Nation nvarchar (50),
				Profession nvarchar (100),
				MedRecNo nvarchar (50),
				ClinicDocID nvarchar (64),
				ClinicDoc nvarchar (64),
				ClinicDocPhone nvarchar (20),
				ClinicDiagnose nvarchar (1024),
				PatientDesc nvarchar (255),
				MedicalRecord nvarchar (1024),
				ExamineType nvarchar (10),
				ExamineBodyPart nvarchar (256),
				CheckItem nvarchar (256),
				CheckEquipment nvarchar (256),
				ExamineDocID nvarchar (64),
				ExamineDoc nvarchar (64),
				ExamineDocPhone nvarchar (20),
				ExamineDate datetime,
				StayInsu nvarchar (20),
				RequestHospitalCode nvarchar (250),
				RequestHospitalName nvarchar (250),
				CustomerGuid uniqueidentifier,
				CustomerName nvarchar (100),
				RequestPhone nvarchar (20),
				RequestDate datetime,
				ServiceCenterId int,
				ServiceCenterName nvarchar (100),
				ServiceState int,
				IsUrgency bit,
				ResubmitTimes int,
				Allergy nvarchar (500),
				IsPregnant bit,
				IsGreenChannel bit,
				InpatientNumber nvarchar (200),
				RequsetDeptName nvarchar (200),
				PerDiagnosisRemark nvarchar (2000),
				Attention nvarchar (1000),
				PatientSigns nvarchar (500),
				AuxiliaryDiagnosis nvarchar (500),
				BedNumber nvarchar (50),
				ExamCost decimal (6, 2),
				ExamineTechnology nvarchar (255),
				Priority smallint,
				constraint PK_ImageOrder primary key (Id)
			) 
                        go


---索引（影像转检预约表）


if not exists (select * from sysindexes where id = object_id('ImageOrder')  and name = 'IX_IO_ServiceId')
create index IX_IO_ServiceId on ImageOrder(
ServiceId
)
go

if not exists (select * from sysindexes where id = object_id('ImageOrder')  and name = 'IX_IO_IdNumber')
create index IX_IO_IdNumber on ImageOrder(
IdNumber
)
go


if not exists (select * from sysindexes where id = object_id('ImageOrder')  and name = 'IX_IO_MedNo')
create index IX_IO_MedNo on ImageOrder(
MedNo
)
go


if not exists (select * from sysindexes where id = object_id('ImageOrder')  and name = 'IX_IO_HealthCardNo')
create index IX_IO_HealthCardNo on ImageOrder(
HealthCardNo
)
go


if not exists (select * from sysindexes where id = object_id('ImageOrder')  and name = 'IX_IO_PatientName')
create index IX_IO_PatientName on ImageOrder(
PatientName
)
go



if not exists (select * from sysindexes where id = object_id('ImageOrder')  and name = 'IX_IO_PhoneCode')
create index IX_IO_PhoneCode on ImageOrder(
PhoneCode
)
go


if not exists (select * from sysindexes where id = object_id('ImageOrder')  and name = 'IX_IO_PatientId')
create index IX_IO_PatientId on ImageOrder(
PatientId
)
go

if not exists (select * from sysindexes where id = object_id('ImageOrder')  and name = 'IX_IO_AccessionNumber')
create index IX_IO_AccessionNumber on ImageOrder(
AccessionNumber
)
go



if not exists (select * from sysindexes where id = object_id('ImageOrder') and name = 'IX_IO_MedRecNo')
create index IX_IO_MedRecNo on ImageOrder(
MedRecNo
)
go


if not exists (select * from sysindexes where id = object_id('ImageOrder')  and name = 'IX_IO_ExamineType')
create index IX_IO_ExamineType on ImageOrder(
ExamineType
)
go



if not exists (select * from sysindexes where id = object_id('ImageOrder') and name = 'IX_IO_StayInsu')
create index IX_IO_StayInsu on ImageOrder(
StayInsu
)
go


if not exists (select * from sysindexes where id = object_id('ImageOrder')  and name = 'IX_IO_RequestHospitalCode')
create index IX_IO_RequestHospitalCode on ImageOrder(
RequestHospitalCode
)
go



if not exists (select * from sysindexes where id = object_id('ImageOrder')  and name = 'IX_IO_CustomerGuid')
create index IX_IO_CustomerGuid on ImageOrder(
CustomerGuid
)
go



if not exists (select * from sysindexes where id = object_id('ImageOrder')  and name = 'IX_IO_RequestDate')
create index IX_IO_RequestDate on ImageOrder(
RequestDate
)
go


if not exists (select * from sysindexes where id = object_id('ImageOrder')  and name = 'IX_IO_ServiceCenterId')
create index IX_IO_ServiceCenterId on ImageOrder(
ServiceCenterId
)
go



if not exists (select * from sysindexes where id = object_id('ImageOrder')  and name = 'IX_IO_ServiceState')
create index IX_IO_ServiceState on ImageOrder(
ServiceState
)
go



/*==============================================================*/
/* 2018-01-24

增加表：WorkPosition（岗位表）、PostSchedule（岗位排班表）  

*/
/*==============================================================*/
------岗位表

if not exists (select * from sysobjects where name = 'WorkPosition' and type = 'U')
create table WorkPosition (
                                Id int identity,
				PositionName nvarchar (200),
				BeginTime nvarchar (8),
				EndTime nvarchar (8),
				ExamineTypes nvarchar (128),
				StayInsus nvarchar (128),
				HospitalCodes nvarchar (256),
				ServiceCenterId int,
				ServiceCenterName nvarchar (100),
				constraint PK_WorkPosition primary key (Id)
)
go

----------索引（岗位表）

if not exists (select * from sysindexes where id = object_id('WorkPosition')  and name = 'IX_WP_ServiceCenterId')
create index IX_WP_ServiceCenterId on WorkPosition(
ServiceCenterId
)
go

-------------岗位排班表

if not exists (select * from sysobjects where name = 'PostSchedule' and type = 'U')
create table PostSchedule (
                                Id int identity,
				WeekDay int,
				SheduleDate datetime,
				PositionId int,
				PositionName nvarchar (200),
				BeginTime nvarchar (8),
				EndTime nvarchar (8),
				DoctorCustomerGuid uniqueidentifier,
				DoctorCustomerName nvarchar (50),
				ServiceCenterId int,
				ServiceCenterName nvarchar (100),
				constraint PK_PostSchedule primary key (Id)
)
go


------- 索引（岗位排班表）

if not exists (select * from sysindexes where id = object_id('PostSchedule')  and name = 'IX_PS_SheduleDate')
create index IX_PS_SheduleDate on PostSchedule(
SheduleDate
)
go

if not exists (select * from sysindexes where id = object_id('PostSchedule')  and name = 'IX_PS_PositionId')
create index IX_PS_PositionId on PostSchedule(
PositionId
)
go

if not exists (select * from sysindexes where id = object_id('PostSchedule')  and name = 'IX_PS_BeginTime')
create index IX_PS_BeginTime on PostSchedule(
BeginTime
)
go


if not exists (select * from sysindexes where id = object_id('PostSchedule')  and name = 'IX_PS_EndTime')
create index IX_PS_EndTime on PostSchedule(
EndTime
)
go


if not exists (select * from sysindexes where id = object_id('PostSchedule')  and name = 'IX_PS_ServiceCenterId')
create index IX_PS_ServiceCenterId on PostSchedule(
ServiceCenterId
)
go

/*==============================================================*/
/* 2018-02-08

EcgRequest（心电诊断申请表）增加索引  

*/
/*==============================================================*/
-----索引（心电诊断申请表）

if not exists (select * from sysindexes where id = object_id('EcgRequest')  and name = 'IX_ER_AssignExpert')
create index IX_ER_AssignExpert on EcgRequest(
AssignExpert
)
go


/*==============================================================*/
/* 2018-02-28

EcgRequest（心电诊断申请表）增加字段：ScanState SMALLINT
EcgRequest（心电诊断申请表）增加索引

*/
/*==============================================================*/
-----------危机值扫描状态（心电诊断申请表）


if not exists(select * from syscolumns where id = object_id('EcgRequest') and name = 'ScanState') 
alter table EcgRequest add ScanState smallint
go


-------索引（心电诊断申请表）

if not exists (select * from sysindexes where id = object_id('EcgRequest')  and name = 'IX_ER_ScanState')
create index IX_ER_ScanState on EcgRequest(
ScanState
)
go



/*==============================================================*/
/* 2018-04-02

ExpertCloudRight（专家云诊断权限表）增加字段：ServiceCenterId INT

*/
/*==============================================================*/
---- 服务中心ID（专家云诊断权限表）

if not exists(select * from syscolumns where id = object_id('ExpertCloudRight') and name = 'ServiceCenterId') 
alter table ExpertCloudRight add ServiceCenterId int
go



/*==============================================================*/
/* 2018-04-19

增加表：GradeTemplate（诊断评分模版表）、DiagnosisGrade（诊断评分表）  
CloudDiagnosisReviseList（云诊断修订队列表（用于医院客户端轮询下载））增加字段：IsDelete bit
OperateProcess（操作过程表）增加字段：Kind SMALLINT

*/
/*==============================================================*/
----------- 诊断评分模版表


if not exists (select * from sysobjects where name = 'GradeTemplate' and type = 'U')
create table GradeTemplate (
                                Id int identity,
				Kind smallint,
				Modality nvarchar(16),
				Project nvarchar (50),
				ExaminePoint nvarchar (300),
				DefaultLower int,
				DownLower int,
				UpLower int,
				ServiceCenterId int,
				ServiceCenterName nvarchar (100),
				constraint PK_GradeTemplate primary key (Id)
)
go

-----索引（诊断评分模版表）


if not exists (select * from sysindexes where id = object_id('GradeTemplate')  and name = 'IX_GT_Modality')
create index IX_GT_Modality on GradeTemplate(
Modality
)
go

if not exists (select * from sysindexes where id = object_id('GradeTemplate')  and name = 'IX_GT_ServiceCenterId')
create index IX_GT_ServiceCenterId on GradeTemplate(
ServiceCenterId
)
go




--------------诊断评分表


if not exists (select * from sysobjects where name = 'DiagnosisGrade' and type = 'U')
create table DiagnosisGrade (
                                Id int identity,
				ServiceId uniqueidentifier,
				Kind smallint,
				Modality nvarchar (16),
				MedRecNo nvarchar (50),
				PatientId nvarchar (64),
				AccessionNumber nvarchar (64),
				PatientName nvarchar (64),
				ExamineDocID nvarchar (64),
				ExamineDoc nvarchar (64),
				ExamineDate datetime,
				ReportDocID nvarchar (64),
				ReportCustomerGuid uniqueidentifier,
				ReportCustomerName nvarchar (50),
				RequestCustomerGuid uniqueidentifier,
				RequestCustomerName nvarchar(100),
				RequestHospitalCode nvarchar (250),
				RequestHospitalName nvarchar (250),
				ServiceCenterId int,
				ServiceCenterName nvarchar (100),
				Grade int,
				LEVEL nvarchar (20),
				GradeReason nvarchar (1024),
				GradeDate datetime,
				Memo nvarchar (512),
				constraint PK_DiagnosisGrade primary key (Id)
)
go



-----索引（诊断评分表）

if not exists (select * from sysindexes where id = object_id('DiagnosisGrade')  and name = 'IX_DG_ServiceId')
create index IX_DG_ServiceId on DiagnosisGrade(
ServiceId
)
go



if not exists (select * from sysindexes where id = object_id('DiagnosisGrade')  and name = 'IX_DG_Modality')
create index IX_DG_Modality on DiagnosisGrade(
Modality
)
go



if not exists (select * from sysindexes where id = object_id('DiagnosisGrade')  and name = 'IX_DG_ExamineDate')
create index IX_DG_ExamineDate on DiagnosisGrade(
ExamineDate
)
go

if not exists (select * from sysindexes where id = object_id('DiagnosisGrade')  and name = 'IX_DG_ReportCustomerGuid')
create index IX_DG_ReportCustomerGuid on DiagnosisGrade(
ReportCustomerGuid
)
go


if not exists (select * from sysindexes where id = object_id('DiagnosisGrade')  and name = 'IX_DG_RequestCustomerGuid')
create index IX_DG_RequestCustomerGuid on DiagnosisGrade(
RequestCustomerGuid
)
go


if not exists (select * from sysindexes where id = object_id('DiagnosisGrade')  and name = 'IX_DG_RequestHospitalCode')
create index IX_DG_RequestHospitalCode on DiagnosisGrade(
RequestHospitalCode
)
go


if not exists (select * from sysindexes where id = object_id('DiagnosisGrade')  and name = 'IX_DG_ServiceCenterId')
create index IX_DG_ServiceCenterId on DiagnosisGrade(
ServiceCenterId
)
go



if not exists (select * from sysindexes where id = object_id('DiagnosisGrade')  and name = 'IX_DG_Level')
create index IX_DG_Level on DiagnosisGrade(
Level
)
go

if not exists (select * from sysindexes where id = object_id('DiagnosisGrade')  and name = 'IX_DG_GradeDate')
create index IX_DG_GradeDate on DiagnosisGrade(
GradeDate
)
go

--------是否已删除（云诊断修订队列表（用于医院客户端轮询下载））


if not exists(select * from syscolumns where id = object_id('CloudDiagnosisReviseList') and name = 'IsDelete') 
alter table CloudDiagnosisReviseList add IsDelete bit
go


-------- 云诊断类型（操作过程表）



if not exists(select * from syscolumns where id = object_id('OperateProcess') and name = 'Kind') 
alter table OperateProcess add Kind smallint
go




/*==============================================================*/
/* 2018-06-11

增加表：OverTimeLog（任务超时记录表） 

*/
/*==============================================================*/
---- 任务超时记录表


if not exists (select * from sysobjects where name = 'OverTimeLog' and type = 'U')
create table OverTimeLog (
                                Id int identity,
				ServiceId uniqueidentifier,
				Kind smallint,
				DoctorCustomerGuid uniqueidentifier,
				DoctorCustomerName nvarchar (50),
				ServiceCenterId int,
				ServiceCenterName nvarchar (100),
				RequestHospitalCode nvarchar (250),
				RequestHospitalName nvarchar (250),
				ExamineType nvarchar (10),
				OperateType smallint,
				OperateTime datetime,
				constraint PK_OverTimeLog primary key (Id)
)
go










