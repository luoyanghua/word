
/*==============================================================*/
/* 2017-10-16 

Article（网站信息发布表）修改字段：PicGuid 为 PicGuid uniqueidentifier
                                              
*/
/*==============================================================*/
--- PicGuid（网站信息发布表）
if exists(select * from syscolumns where id = object_id('Article') and name = 'PicGuid') 
alter table Article drop column PicGuid
alter table Article add PicGuid uniqueidentifier
go

/*==============================================================*/
/* 2017-10-26

增加表：HWMeeting（会议记录表）、HWSite（会场终端信息）、HWSiteSchedule（会场参与会议排期表）

*/
/*==============================================================*/
--- 会议记录表
if not exists (select * from sysobjects where name = 'HWMeeting' and type = 'U')
create table HWMeeting (
				Id int identity,
				ServiceId uniqueidentifier,
				Kind int,
				MeetId int,
				NAME nvarchar (200),
				BeginTime datetime,
				EndTime datetime,
				Duration int,
				AccessCode nvarchar (9),
				AccessPwd nvarchar (6),
				MediaEncryptType smallint,
				CPResource smallint,
				Rate nvarchar (16),
				IsRecording bit,
				RecorderAddr nvarchar (500),
				IsLiveBroadcast bit,
				Presentation smallint,
				PASSWORD nvarchar (6),
				State smallint,
				MainSiteUri int,
				MaxSiteCount smallint,
				RSEId int,
				IsAutoRecord bit,
				IsVoiceRecord bit,
				MainMcuId int,
				CustomerGuid uniqueidentifier,
				CustomerName nvarchar (50),
				CreateTime datetime,
				SourceSystem smallint,
				constraint PK_HWMeeting primary key (Id)
			)
                        go
--- 索引（会议记录表）
if not exists (select * from sysindexes where id = object_id('HWMeeting') and name = 'IX_HWM_ServiceId')
create index IX_HWM_ServiceId on HWMeeting (
ServiceId
)
go


if not exists (select * from sysindexes where id = object_id('HWMeeting') and name = 'IX_HWM_CustomerGuid')
create index IX_HWM_CustomerGuid on HWMeeting (
CustomerGuid
)
go

if not exists (select * from sysindexes where id = object_id('HWMeeting') and name = 'IX_HWM_State')
create index IX_HWM_State on HWMeeting (
State
)
go

-- 会场终端信息
if not exists (select * from sysobjects where name = 'HWSite' and type = 'U')
create table HWSite (
				Id int identity,
				CustomerGuid uniqueidentifier,
				NAME nvarchar (64),
				Uri nvarchar (64),
				Type smallint,
				Rate nvarchar (16),
				UserName nvarchar (32),
				UserPwd nvarchar (32),
				constraint PK_HWSite primary key (Id)
			) 
                        go

-- 索引（会场终端信息）
if not exists (select * from sysindexes where id = object_id('HWSite') and name = 'IX_HWS_CustomerGuid')
create index IX_HWS_CustomerGuid on HWSite (
CustomerGuid
)
go

if not exists (select * from sysindexes where id = object_id('HWSite') and name = 'IX_HWS_Uri')
create index IX_HWS_Uri on HWSite (
Uri
)
go

--- 会场参与会议排期表
if not exists (select * from sysobjects where name = 'HWSiteSchedule' and type = 'U')
create table HWSiteSchedule(
				Id int identity,
				SiteUri nvarchar (64),
				CustomerGuid uniqueidentifier,
				ServiceId uniqueidentifier,
				MeetId int,
				BeginTime datetime,
				EndTime datetime,
				constraint PK_HWSiteSchedule primary key (Id)
			) 
                        go


---索引（会场参与会议排期表）
if not exists (select * from sysindexes where id = object_id('HWSiteSchedule') and name = 'IX_HWSS_SiteUri')
create index IX_HWSS_SiteUri on HWSiteSchedule (
SiteUri
)
go


if not exists (select * from sysindexes where id = object_id('HWSiteSchedule') and name = 'IX_HWSS_ServiceId')
create index IX_HWSS_ServiceId on HWSiteSchedule (
ServiceId
)
go

if not exists (select * from sysindexes where id = object_id('HWSiteSchedule') and name = 'IX_HWSS_BeginTime')
create index IX_HWSS_BeginTime on HWSiteSchedule (
BeginTime
)
go


if not exists (select * from sysindexes where id = object_id('HWSiteSchedule') and name = 'IX_HWSS_EndTime')
create index IX_HWSS_EndTime on HWSiteSchedule (
EndTime
)
go


/*==============================================================*/
/* 2017-10-27 

Article（网站信息发布表）修改字段：Role 为 Role nvarchar(100)
                                              
*/
/*==============================================================*/
--- 面向角色（网站信息发布表）
if exists(select * from syscolumns where id = object_id('Article') and name = 'Role') 
alter table Article alter column Role nvarchar (100) 
go



/*==============================================================*/
/* 2017-12-11

Meeting（视频会议表）增加字段：Number nvarchar(50)

*/
/*==============================================================*/
---- 会议（直播）编号（视频会议表）

if not exists(select * from syscolumns where id = object_id('Meeting') and name = 'Number') 
alter table Meeting add Number nvarchar(50)
go



/*==============================================================*/
/* 2017-12-18

Article（网站信息发布表）增加字段：ServiceKind SMALLINT
DataDownload（资料下载表）增加字段：ServiceKind SMALLINT

*/
/*==============================================================*/
----- 中心类型（网站信息发布表）

if not exists(select * from syscolumns where id = object_id('Article') and name = 'ServiceKind') 
alter table Article add ServiceKind smallint
go


if not exists(select * from syscolumns where id = object_id('DataDownload') and name = 'ServiceKind') 
alter table DataDownload add ServiceKind smallint
go



/*==============================================================*/
/* 2017-12-20

City（市表）增加字段：IsHot bit

*/
/*==============================================================*/
-------是否热门城市（市表）

if not exists(select * from syscolumns where id = object_id('City') and name = 'IsHot') 
alter table City add IsHot bit
go



/*==============================================================*/
/* 2017-12-25

Article（网站信息发布表）增加字段：InstitutionGuid uniqueidentifier、InstitutionlName nvarchar(250)
DataDownload（资料下载表）增加字段：InstitutionGuid uniqueidentifier、InstitutionlName nvarchar(250)

*/
/*==============================================================*/

----- InstitutionGuid（网站信息发布表）

if not exists(select * from syscolumns where id = object_id('Article') and name = 'InstitutionGuid') 
alter table Article add InstitutionGuid uniqueidentifier
go



------医疗机构名称（网站信息发布表）

if not exists(select * from syscolumns where id = object_id('Article') and name = 'InstitutionlName') 
alter table Article add InstitutionlName nvarchar(250)
go

------索引（网站信息发布表）
if not exists (select * from sysindexes where id = object_id('Article')  and name = 'IX_Article_InstitutionGuid')
create index IX_Article_InstitutionGuid on Article(
InstitutionGuid
)
go

------InstitutionGuid（资料下载表）

if not exists(select * from syscolumns where id = object_id('DataDownload') and name = 'InstitutionGuid') 
alter table DataDownload add InstitutionGuid uniqueidentifier
go

------ 医疗机构名称（资料下载表）

if not exists(select * from syscolumns where id = object_id('DataDownload') and name = 'InstitutionlName') 
alter table DataDownload add InstitutionlName nvarchar(250)
go
-------索引（资料下载表）

if not exists (select * from sysindexes where id = object_id('DataDownload') and name = 'IX_DDownload_InstitutionGuid')
create index IX_DDownload_InstitutionGuid on DataDownload(
InstitutionGuid
)
go




/*==============================================================*/
/* 2018-01-10

增加表：Detection（人工智能检测表）
HWSite（会场终端信息表）增加字段：TerminalType SMALLINT、State SMALLINT、Address nvarchar(256)、Reason nvarchar(512)、InstitutionGuid uniqueidentifier、InstitutionlName nvarchar(250)

*/
/*==============================================================*/
----- 人工智能检测表

if not exists (select * from sysobjects where name = 'Detection' and type = 'U')
create table Detection (
                                Id int identity,
				ServiceId uniqueidentifier,
				Kind smallint,
				DetectionType smallint,
				DetectionTimes int,
				DetectionResult nvarchar(max),
				State smallint,
				DetectionDate datetime,
				SubmitDate datetime,
				constraint PK_Detection primary key (Id)
)
go
-----索引（人工智能检测表）
if not exists (select * from sysindexes where id = object_id('Detection')  and name = 'IX_Detection_ServiceId')
create index IX_Detection_ServiceId on Detection (
ServiceId
)
go
if not exists (select * from sysindexes where id = object_id('Detection')  and name = 'IX_Detection_DetectionType')
create index IX_Detection_DetectionType on Detection (
DetectionType
)
go
if not exists (select * from sysindexes where id = object_id('Detection')  and name = 'IX_Detection_SubmitDate')
create index IX_Detection_SubmitDate on Detection (
SubmitDate
)
go

------终端类型（会场终端信息表）

if not exists(select * from syscolumns where id = object_id('HWSite') and name = 'TerminalType') 
alter table HWSite add TerminalType smallint 
go


---------终端状态（会场终端信息表）



if not exists(select * from syscolumns where id = object_id('HWSite') and name = 'State') 
alter table HWSite add State smallint 
go

------ 终端地址（会场终端信息表）

if not exists(select * from syscolumns where id = object_id('HWSite') and name = 'Address') 
alter table HWSite add Address nvarchar (256) 
go


------停用原因（会场终端信息表）
if not exists(select * from syscolumns where id = object_id('HWSite') and name = 'Reason') 
alter table HWSite add Reason nvarchar (512) 
go
-----------InstitutionGuid（会场终端信息表）
if not exists(select * from syscolumns where id = object_id('HWSite') and name = 'InstitutionGuid') 
alter table HWSite add InstitutionGuid  uniqueidentifier
go
------------医疗机构名称（会场终端信息表）
if not exists(select * from syscolumns where id = object_id('HWSite') and name = 'InstitutionlName') 
alter table HWSite add InstitutionlName nvarchar (250) 
go

/*==============================================================*/
/* 2018-01-19

HWSite（会场终端信息表）增加字段：IP nvarchar(20)、Role SMALLINT

*/
/*==============================================================*/
--------- 终端IP（会场终端信息表）


if not exists(select * from syscolumns where id = object_id('HWSite') and name = 'IP') 
alter table HWSite add IP nvarchar (20)
go


------终端角色（会场终端信息表）
if not exists(select * from syscolumns where id = object_id('HWSite') and name = 'Role') 
alter table HWSite add Role smallint 
go



/*==============================================================*/
/* 2018-01-31

增加表：LogAudit（操作日志审计表）
OperatorLog（操作日志表）增加字段：State SMALLINT
*/
/*==============================================================*/
------ 操作日志审计表
if not exists (select * from sysobjects where name = 'LogAudit' and type = 'U')
create table LogAudit (
                                Id int identity,
				LogId int,
				AuditCustomerGuid uniqueidentifier,
				AuditCustomerName nvarchar (100),
				AuditResultCode nvarchar (30),
				AuditResultName nvarchar (100),
				AuditTime datetime,
				constraint PK_LogAudit primary key (Id)
)
go
-------------索引（操作日志审计表）

if not exists (select * from sysindexes where id = object_id('LogAudit') and name = 'IX_LA_LogId')
create index IX_LA_LogId on LogAudit(
LogId
)
go

if not exists (select * from sysindexes where id = object_id('LogAudit')  and name = 'IX_LA_AuditCustomerGuid')
create index IX_LA_AuditCustomerGuid on LogAudit(
AuditCustomerGuid
)
go


if not exists (select * from sysindexes where id = object_id('LogAudit')  and name = 'IX_LA_AuditResultCode')
create index IX_LA_AuditResultCode on LogAudit(
AuditResultCode
)
go
-----审计状态（操作日志表）

if not exists(select * from syscolumns where id = object_id('OperatorLog') and name = 'State') 
alter table OperatorLog add State smallint
go



/*==============================================================*/
/* 2018-02-06

DataDicType（数据字典分类表）增加字段：TypeComment nvarchar(300)

*/
/*==============================================================*/
------补充说明（数据字典分类表）

if not exists(select * from syscolumns where id = object_id('DataDicType') and name = 'TypeComment') 
alter table DataDicType add TypeComment nvarchar(300)
go



/*==============================================================*/
/* 2018-03-01

SmsTemplate（短信（消息）模板表）增加字段：Kind SMALLINT
DataDicType（数据字典分类表）增加字段：IsEdit bit

*/
/*==============================================================*/
----- 模板类型（短信（消息）模板表）


if not exists(select * from syscolumns where id = object_id('SmsTemplate') and name = 'Kind') 
alter table SmsTemplate add Kind smallint
go

-------是否可编辑（数据字典分类表）


if not exists(select * from syscolumns where id = object_id('DataDicType') and name = 'IsEdit') 
alter table DataDicType add IsEdit bit
go


/*==============================================================*/
/* 2018-03-06

ServiceCenterFallback（诊断中心兜底关系表）增加字段：HospitalCode nvarchar(250)
ServiceCenterFallback（诊断中心兜底关系表）增加索引

*/
/*==============================================================*/
----- 医疗机构代码（诊断中心兜底关系表）

if not exists(select * from syscolumns where id = object_id('ServiceCenterFallback') and name = 'HospitalCode') 
alter table ServiceCenterFallback add HospitalCode nvarchar (250)
go

-------索引（诊断中心兜底关系表）

if not exists (select * from sysindexes where id = object_id('ServiceCenterFallback')  and name = 'IX_SCF_HospitalCode')
create index IX_SCF_HospitalCode on ServiceCenterFallback(
HospitalCode
)
go


/*==============================================================*/
/* 2018-03-30

JPushMessages（极光推送消息表）增加字段：SourceSystem SMALLINT

*/
/*==============================================================*/
---- 来源系统（极光推送消息表）


if not exists(select * from syscolumns where id = object_id('JPushMessages') and name = 'SourceSystem') 
alter table JPushMessages add SourceSystem smallint
go




/*==============================================================*/
/* 2018-05-04

增加表：PublicMessage（公共消息表）、PublicMessageTarget（公共消息发送对象表）

*/
/*==============================================================*/
-----公共消息表

if not exists (select * from sysobjects where name = 'PublicMessage' and type = 'U')
create table PublicMessage (
                                Id int identity,
				Title nvarchar(300),
				Content nvarchar(max),
				IsAlert bit,
				IsSMS bit,
				IsEmail bit,
				IsApp bit,
				CreateTime datetime,
				PrepareSendTime datetime,
				IsPrepare bit,
				State smallint,
				constraint PK_PublicMessage primary key (Id)
)
go


----公共消息发送对象表

if not exists (select * from sysobjects where name = 'PublicMessageTarget' and type = 'U')
create table PublicMessageTarget (
                                Id int identity,
				MessageId int,
				ReceiveCustomerGuid uniqueidentifier,
				ReceiveCustomerName nvarchar (50),
				ReceivePhone nvarchar (20),
				ReceiveEmail nvarchar(100),
				RegistrationId uniqueidentifier,
				SendTime datetime,
				State smallint,
				constraint PK_PublicMessageTarget primary key (Id)
)
go



/*==============================================================*/
/* 2018-05-07

PublicMessage（公共消息表）增加字段：ServiceCenterId INT、ServiceCenterName nvarchar(100)、InstitutionGuid uniqueidentifier、InstitutionlName nvarchar(250)

*/
/*==============================================================*/
--------- 服务中心ID（公共消息表）

if not exists(select * from syscolumns where id = object_id('PublicMessage') and name = 'ServiceCenterId') 
alter table PublicMessage add ServiceCenterId int
go

------- 服务中心名称（公共消息表）


if not exists(select * from syscolumns where id = object_id('PublicMessage') and name = 'ServiceCenterName') 
alter table PublicMessage add ServiceCenterName nvarchar (100) 
go


-------- 医疗机构Guid（公共消息表）


if not exists(select * from syscolumns where id = object_id('PublicMessage') and name = 'InstitutionGuid') 
alter table PublicMessage add InstitutionGuid uniqueidentifier
go

------ 医疗机构名称（公共消息表）

if not exists(select * from syscolumns where id = object_id('PublicMessage') and name = 'InstitutionlName') 
alter table PublicMessage add InstitutionlName nvarchar (250)
go





/*==============================================================*/
/* 2018-05-14

PublicMessageTarget（公共消息发送对象表）增加字段：SendResult nvarchar(300)

*/
/*==============================================================*/
-------发送结果（公共消息发送对象表）

if not exists(select * from syscolumns where id = object_id('PublicMessageTarget') and name = 'SendResult') 
alter table PublicMessageTarget add SendResult nvarchar (300)
go





/*==============================================================*/
/* 2018-06-01

OperatorLog（操作日志表）修改字段：OperateDescription nvarchar(max)

*/
/*==============================================================*/
-------操作描述（操作日志表）

if exists(select * from syscolumns where id = object_id('OperatorLog') and name = 'OperateDescription') 
alter table OperatorLog alter column OperateDescription nvarchar(max)
go




/*==============================================================*/
/* 2018-07-03

增加表：CrossCloudApply（跨云朵业务申请表）

*/
/*==============================================================*/
-----跨云朵业务申请表

if not exists (select * from sysobjects where name = 'CrossCloudApply' and type = 'U')
create table CrossCloudApply (
                                Id int identity,
				SourceId uniqueidentifier,
				SourceKind smallint,
				ServiceId uniqueidentifier,
				ServiceKind smallint,
				ServiceInfo nvarchar(max),
				CloudId nvarchar (50),
				CustomerGuid uniqueidentifier,
				CustomerName nvarchar (50),
				Phone nvarchar (20),
				State smallint,
				constraint PK_CrossCloudApply primary key (Id)
)
go


/*==============================================================*/
/* 2018-07-24 

增加表：AppVersion（App版本管理表）
                                              
*/
/*==============================================================*/
-----App版本管理表

if not exists (select * from sysobjects where name = 'AppVersion' and type = 'U')
create table AppVersion (
                                Id int identity,
				AppId smallint,
				AppName nvarchar (30),
				Plat smallint,
				Version nvarchar (30),
				ChangeLog nvarchar(max),
				UpdateDate datetime,
				VersionName nvarchar (30),
				DownloadUrl nvarchar (300),
				FileSize float,
				FileSHA nvarchar (128),
				IsForceUpdate bit,
				IsNew bit,
				constraint PK_AppVersion primary key (Id)
)
go



/*==============================================================*/
/* 2018-07-30

OperatorLog（操作日志表）增加字段：OperateResult SMALLINT

*/
/*==============================================================*/
----- 操作结果（操作日志表）

if not exists(select * from syscolumns where id = object_id('OperatorLog') and name = 'OperateResult') 
alter table OperatorLog add OperateResult smallint
go



/*==============================================================*/
/* 2018-08-02 

增加表：ClientAccessAddress（不同网段客户端互访地址映射表）
                                              
*/
/*==============================================================*/
----不同网段客户端互访地址映射表

if not exists (select * from sysobjects where name = 'ClientAccessAddress' and type = 'U')
create table ClientAccessAddress (
	                        Id int identity,
	 			NetName nvarchar (100),
				PortalIP nvarchar (50),
				CRMIP nvarchar (50),
				MedIP nvarchar (50),
				PubIP nvarchar (50),
				SsIP nvarchar (50),
				EduIP nvarchar (50),
				DmIP nvarchar (50),
				QcIP nvarchar (50),
				RsvIP nvarchar (50),
				OcIP nvarchar (50),
				IbIP nvarchar (50),
				VmIP nvarchar (50),
				MbIP nvarchar (50),
				CookieIP nvarchar (50),
				constraint PK_ClientAccessAddress primary key (Id)
)
go


/*==============================================================*/
/* 2018-10-12

Column（自定义栏目表）增加字段：SourceSystem SMALLINT
Module（自定义模块表）增加字段：SourceSystem SMALLINT
SiteInfo（网站自定义信息表）增加字段：OppositeLogoBinary varbinary(max)

*/
/*==============================================================*/
-----来源系统（自定义栏目表）



if not exists(select * from syscolumns where id = object_id('Column') and name = 'SourceSystem') 
alter table Column add SourceSystem smallint
go

----- 来源系统（自定义模块表）

if not exists(select * from syscolumns where id = object_id('Module') and name = 'SourceSystem') 
alter table Module add SourceSystem smallint
go



-----网站Logo反白效果图片二进制流（网站自定义信息表）

if not exists(select * from syscolumns where id = object_id('SiteInfo') and name = 'OppositeLogoBinary') 
alter table SiteInfo add OppositeLogoBinary varbinary(max)
go
















