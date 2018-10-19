/*==============================================================*/
/* 2017-10-18 

增加表：ServiceDNS（服务中心自定义域名表）
                                              
*/
/*==============================================================*/
-- 服务中心自定义域名表
if not exists (select * from sysobjects where name = 'ServiceDNS' and type = 'U')
create table ServiceDNS(
				Id int identity,
				InstitutionGuid uniqueidentifier,
				CrmDNS nvarchar (50),
				MedDNS nvarchar (50),
				EduDNS nvarchar (50),
				QcDNS nvarchar (50),
				SsDNS nvarchar (50),
				DmDNS nvarchar (50),
				OrgDNS nvarchar (50),
				OcDNS nvarchar (50),
				constraint PK_ServiceDNS primary key (Id)
			)
                         go
-- 服务中心自定义域名表 InstitutionGuid
if not exists(select * from syscolumns where id = object_id('ServiceDNS') and name = 'InstitutionGuid') 
alter table ServiceDNS add InstitutionGuid uniqueidentifier
go


-- 索引（服务中心自定义域名表）
if not exists (select * from sysindexes where id = object_id('ServiceDNS') and name = 'IX_SD_InstitutionGuid')
create index IX_SD_InstitutionGuid on ServiceDNS (
InstitutionGuid
)
go


/*==============================================================*/
/* 2017-10-24 

增加表：MonitorManager（监控管理员和维护人员表）
                                              
*/
/*==============================================================*/
-- 监控管理员和维护人员表
if not exists (select * from sysobjects where name = 'MonitorManager' and type = 'U')
create table MonitorManager(
				Id int identity,
				CustomerGuid uniqueidentifier,
				Unit nvarchar (100),
				Depart nvarchar (64),
				Office nvarchar (64),
				Kind smallint,
				HospitalCode nvarchar (250),
				HospitalName nvarchar (250),
				IsHospital bit,
				constraint PK_MonitorManager primary key (Id) 
			)
                        go
-- 服务中心自定义域名表 新增InstitutionGuid
if not exists(select * from syscolumns where id = object_id('ServiceDNS') and name = 'InstitutionGuid') 
alter table ServiceDNS add InstitutionGuid uniqueidentifier
go

-- 索引（监控管理员和维护人员表）
if not exists (select * from sysindexes where id = object_id('MonitorManager')  and name = 'IX_MM_CustomerGuid')
create index IX_MM_CustomerGuid on MonitorManager (
CustomerGuid
)
go




/*==============================================================*/
/* 2017-12-14 

Leader（行政管理人员表）增加字段：ProID int、ProvinceName nvarchar(20)、CityID int、CityName nvarchar(20)、CountyId int、CountyName nvarchar(20)
                                              
*/
/*==============================================================*/
---- 所在省（行政管理人员表）
if not exists(select * from syscolumns where id = object_id('Leader') and name = 'ProID') 
alter table Leader add ProID int
go

if not exists(select * from syscolumns where id = object_id('Leader') and name = 'ProvinceName') 
alter table Leader add ProvinceName nvarchar (20)
go

if not exists(select * from syscolumns where id = object_id('Leader') and name = 'CityID') 
alter table Leader add CityID int
go


if not exists(select * from syscolumns where id = object_id('Leader') and name = 'CityName') 
alter table Leader add CityName nvarchar (20)
go

if not exists(select * from syscolumns where id = object_id('Leader') and name = 'CountyId') 
alter table Leader add CountyId int
go

if not exists(select * from syscolumns where id = object_id('Leader') and name = 'CountyName') 
alter table Leader add CountyName nvarchar (20)
go


/*==============================================================*/
/* 2017-12-19 

MyCollection（我的收藏（关注）表）增加索引
                                              
*/
/*==============================================================*/
-----索引（我的收藏（关注）表）

if not exists (select * from sysindexes where id = object_id('MyCollection')  and name = 'IX_Mco_CollectionId')
create index IX_Mco_CollectionId on MyCollection (
CollectionId
)
go



/*==============================================================*/
/* 2017-12-20 

增加表：MedicalStaff（医护人员表）
                                              
*/
/*==============================================================*/
---- 医护人员表
if not exists (select * from sysobjects where name = 'MedicalStaff' and type = 'U')
create table MedicalStaff (
                                Id int identity,
				CustomerGuid uniqueidentifier,
				OfficeId int,
				OfficeCode nvarchar (30),
				Office nvarchar (30),
				SubjectSecondId int,
				SubjectSecondCode nvarchar (30),
				SubjectSecondName nvarchar (30),
				HospitalCode nvarchar (250),
				HospitalName nvarchar (250),
				constraint PK_MedicalStaff primary key (Id)
)
go
------索引（医护人员表）

if not exists (select * from sysindexes where id = object_id('MedicalStaff') and name = 'IX_MS_CustomerGuid')
create index IX_MS_CustomerGuid on MedicalStaff (
CustomerGuid 
)
go

if not exists (select * from sysindexes where id = object_id('MedicalStaff') and name = 'IX_MS_HospitalCode')
create index IX_MS_HospitalCode on MedicalStaff (
HospitalCode
)
go


/*==============================================================*/
/* 2018-01-05

MedicalStaff（医护人员表）增加字段：WorkNo nvarchar(20)

*/
/*==============================================================*/
-------- 医护工号（医护人员表）
if not exists(select * from syscolumns where id = object_id('MedicalStaff') and name = 'WorkNo') 
alter table MedicalStaff add WorkNo nvarchar(20)
go


/*==============================================================*/
/* 2018-01-10

Problem（问题解答表）增加字段：CustomerKind SMALLINT、SourceSystem SMALLINT、TypeCode nvarchar(30)、TypeName nvarchar(30)

*/
/*==============================================================*/
---------用户类型（问题解答表）

if not exists(select * from syscolumns where id = object_id('Problem') and name = 'CustomerKind') 
alter table Problem add CustomerKind smallint
go

-----所属系统（问题解答表）
if not exists(select * from syscolumns where id = object_id('Problem') and name = 'SourceSystem') 
alter table Problem add SourceSystem smallint
go

------问题分类Code（问题解答表）

if not exists(select * from syscolumns where id = object_id('Problem') and name = 'TypeCode') 
alter table Problem add TypeCode nvarchar (30)
go


------问题分类名称（问题解答表）
if not exists(select * from syscolumns where id = object_id('Problem') and name = 'TypeName') 
alter table Problem add TypeName nvarchar (30)
go



/*==============================================================*/
/* 2018-01-23 

增加表：Role_Category_Mapping（角色所属类别表）
DoctorServiceCenter（医生、医护人员所属服务中心（多点执业）表）增加字段：IsConfirm bit
PlatSignRecord（会员机构和平台签约记录表）增加字段：Reason nvarchar(300)
HospitalCenterSignRecord（合作医院和服务中心签约记录表）增加字段：Reason nvarchar(300)
                                              
*/
/*==============================================================*/

if not exists (select * from sysobjects where name = 'Role_Category_Mapping' and type = 'U')
create table Role_Category_Mapping (
                                Id int identity,
				CustomerRole_Id int,
				Category nvarchar (255),
				constraint PK_Role_Category_Mapping primary key (Id)
)
go


-------索引（角色所属类别表）


if not exists (select * from sysindexes where id = object_id('Role_Category_Mapping') and name = 'IX_RCM_CustomerRole_Id')
create index IX_RCM_CustomerRole_Id on Role_Category_Mapping (
CustomerRole_Id
)
go

if not exists (select * from sysindexes where id = object_id('Role_Category_Mapping') and name = 'IX_RCM_Category')
create index IX_RCM_Category on Role_Category_Mapping (
Category
)
go


------已确认标识（医生、医护人员所属服务中心（多点执业）表）

if not exists(select * from syscolumns where id = object_id('DoctorServiceCenter') and name = 'IsConfirm') 
alter table DoctorServiceCenter add IsConfirm bit
go



------拒绝原因（会员机构和平台签约记录表）

if not exists(select * from syscolumns where id = object_id('PlatSignRecord') and name = 'Reason') 
alter table PlatSignRecord add Reason nvarchar (300)
go


------ 拒绝原因（合作医院和服务中心签约记录表）


if not exists(select * from syscolumns where id = object_id('HospitalCenterSignRecord') and name = 'Reason') 
alter table HospitalCenterSignRecord add Reason nvarchar (300)
go



/*==============================================================*/
/* 2018-02-28

InstitutionOpen（机构开通的业务表）增加字段：Kind SMALLINT
ServiceOpen（服务中心开通的服务表）增加字段：Kind SMALLINT

*/
/*==============================================================*/
--------服务类型（机构开通的业务表）

if not exists(select * from syscolumns where id = object_id('InstitutionOpen') and name = 'Kind') 
alter table InstitutionOpen add Kind smallint
go


---------服务类型（服务中心开通的服务表）

if not exists(select * from syscolumns where id = object_id('ServiceOpen') and name = 'Kind') 
alter table ServiceOpen add Kind smallint
go



/*==============================================================*/
/* 2018-03-07

CustomerShare（用户分享表）增加字段：State SMALLINT
增加表：InstitutionDataAccess（机构数据互访授权表）

*/
/*==============================================================*/
-----分享状态（用户分享表）

if not exists(select * from syscolumns where id = object_id('CustomerShare') and name = 'State') 
alter table CustomerShare add State smallint
go

----- 机构数据互访授权表

if not exists (select * from sysobjects where name = 'InstitutionDataAccess' and type = 'U')
create table InstitutionDataAccess(
                                Id int identity,
				GrantInstitutionGuid uniqueidentifier,
				GrantInstitutionlCode nvarchar (250),
				GrantInstitutionlName nvarchar (250),
				AccessInstitutionGuid uniqueidentifier,
				AccessInstitutionlCode nvarchar (250),
				AccessInstitutionlName nvarchar (250),
				State smallint,
				ReqestDate datetime,
				LastOperateDate datetime,
				constraint PK_InstitutionDataAccess primary key (Id)
)
go



------索引（机构数据互访授权表）

if not exists (select * from sysindexes where id = object_id('InstitutionDataAccess')  and name = 'IX_IDA_GrantInstitutionGuid')
create index IX_IDA_GrantInstitutionGuid on InstitutionDataAccess(
GrantInstitutionGuid
)
go

if not exists (select * from sysindexes where id = object_id('InstitutionDataAccess')  and name = 'IX_IDA_GrantInstitutionlCode')
create index IX_IDA_GrantInstitutionlCode on InstitutionDataAccess(
GrantInstitutionlCode
)
go


if not exists (select * from sysindexes where id = object_id('InstitutionDataAccess')  and name = 'IX_IDA_AccessInstitutionGuid')
create index IX_IDA_AccessInstitutionGuid on InstitutionDataAccess(
AccessInstitutionGuid
)
go

if not exists (select * from sysindexes where id = object_id('InstitutionDataAccess')  and name = 'IX_IDA_State')
create index IX_IDA_State on InstitutionDataAccess(
State
)
go



/*==============================================================*/
/* 2018-03-15

CustomerShare（用户分享表）增加字段：InstitutionGuid uniqueidentifier
CustomerShare（用户分享表）增加索引

*/
/*==============================================================*/
------ 机构Guid（用户分享表）

if not exists(select * from syscolumns where id = object_id('CustomerShare') and name = 'InstitutionGuid') 
alter table CustomerShare add InstitutionGuid uniqueidentifier
go

-------索引（用户分享表）

if not exists (select * from sysindexes where id = object_id('CustomerShare')  and name = 'IX_CS_InstitutionGuid')
create index IX_CS_InstitutionGuid on CustomerShare(
InstitutionGuid
)
go


/*==============================================================*/
/* 2018-03-30

InstitutionOpen（机构开通的业务表）增加字段：State SMALLINT

*/
/*==============================================================*/
----- 服务状态（机构开通的业务表）

if not exists(select * from syscolumns where id = object_id('InstitutionOpen') and name = 'State') 
alter table InstitutionOpen add State smallint
go



/*==============================================================*/
/* 2018-04-02

CustomerConfig（用户或服务中心、机构配置表（个性化参数）表）增加字段：ConfigItemDesc nvarchar(300)、ConfigSystem SMALLINT

*/
/*==============================================================*/
----- 用户配置项描述（用户或服务中心、机构配置表（个性化参数）表）

if not exists(select * from syscolumns where id = object_id('CustomerConfig') and name = 'ConfigItemDesc') 
alter table CustomerConfig add ConfigItemDesc nvarchar (300)
go




------ 所属业务系统（用户或服务中心、机构配置表（个性化参数）表）

if not exists(select * from syscolumns where id = object_id('CustomerConfig') and name = 'ConfigSystem') 
alter table CustomerConfig add ConfigSystem smallint
go



/*==============================================================*/
/* 2018-04-12

增加表：Subscribe（用户订阅表）

*/
/*==============================================================*/
----用户订阅表

if not exists (select * from sysobjects where name = 'Subscribe' and type = 'U')
create table Subscribe (
                                Id int identity,
				SubscribeGuid uniqueidentifier,
				Kind smallint,
				SubscribeContent smallint,
				SubscribeCycle smallint,
				Method smallint,
				InstitutionGuid uniqueidentifier,
				CustomerGuid uniqueidentifier,
				CustomerName nvarchar (50),
				SubscribeDate datetime,
				State smallint,
				constraint PK_Subscribe primary key (Id)
)
go


----索引（用户订阅表）


if not exists (select * from sysindexes where id = object_id('Subscribe')  and name = 'IX_Subbe_SubscribeGuid')
create index IX_Subbe_SubscribeGuid on Subscribe(
SubscribeGuid
)
go


if not exists (select * from sysindexes where id = object_id('Subscribe')  and name = 'IX_Subbe_SubscribeContent')
create index IX_Subbe_SubscribeContent on Subscribe(
SubscribeContent
)
go


if not exists (select * from sysindexes where id = object_id('Subscribe')  and name = 'IX_Subbe_SubscribeCycle')
create index IX_Subbe_SubscribeCycle on Subscribe(
SubscribeCycle
)
go


if not exists (select * from sysindexes where id = object_id('Subscribe')  and name = 'IX_Subbe_InstitutionGuid')
create index IX_Subbe_InstitutionGuid on Subscribe(
InstitutionGuid
)
go

if not exists (select * from sysindexes where id = object_id('Subscribe')  and name = 'IX_Subbe_CustomerGuid')
create index IX_Subbe_CustomerGuid on Subscribe(
CustomerGuid
)
go


if not exists (select * from sysindexes where id = object_id('Subscribe')  and name = 'IX_Subbe_State')
create index IX_Subbe_State on Subscribe(
State
)
go



/*==============================================================*/
/* 2018-04-20

MyCollection（我的收藏（关注）表）增加字段：PatientName nvarchar(50)、ICDCode nvarchar(64)、AcrCode nvarchar(64)
MyCollection（我的收藏（关注）表）增加索引

*/
/*==============================================================*/
----- 患者姓名（我的收藏（关注）表）


if not exists(select * from syscolumns where id = object_id('MyCollection') and name = 'PatientName') 
alter table MyCollection add PatientName nvarchar(50)
go


----- ICD10代码（我的收藏（关注）表）


if not exists(select * from syscolumns where id = object_id('MyCollection') and name = 'ICDCode') 
alter table MyCollection add ICDCode nvarchar(64)
go


------ACR代码（我的收藏（关注）表）

if not exists(select * from syscolumns where id = object_id('MyCollection') and name = 'AcrCode') 
alter table MyCollection add AcrCode nvarchar(64)
go



------索引（我的收藏（关注）表）


if not exists (select * from sysindexes where id = object_id('MyCollection')  and name = 'IX_MCo_PatientName')
create index IX_MCo_PatientName on MyCollection(
PatientName
)
go



if not exists (select * from sysindexes where id = object_id('MyCollection')  and name = 'IX_MCo_ICDCode')
create index IX_MCo_ICDCode on MyCollection(
ICDCode
)
go



if not exists (select * from sysindexes where id = object_id('MyCollection')  and name = 'IX_MCo_AcrCode')
create index IX_MCo_AcrCode on MyCollection(
AcrCode
)
go





/*==============================================================*/
/* 2018-05-21

Institution（会员机构表）增加字段：IsToMPI bit

*/
/*==============================================================*/
------ 是否已同步到患者主索引（会员机构表）


if not exists(select * from syscolumns where id = object_id('Institution') and name = 'IsToMPI') 
alter table Institution add IsToMPI bit
go






/*==============================================================*/
/* 2018-05-28

增加表：MemberDoctorService（合作医院和医生之间协议开通服务表）

*/
/*==============================================================*/
-----合作医院和医生之间协议开通服务表


if not exists (select * from sysobjects where name = 'MemberDoctorService' and type = 'U')
create table MemberDoctorService (
                                Id int identity,
				InstitutionGuid uniqueidentifier,
				HospitalCode nvarchar (250),
				ServiceCenterId int,
				CustomerGuid uniqueidentifier,
				CustomerName nvarchar (50),
				CustomerPriority smallint,
				ServiceTypeCode nvarchar (100),
				ServiceTypeName nvarchar (100),
				BeginDate datetime,
				EndDate datetime,
				IsAudit bit,
				constraint PK_MemberDoctorService primary key (Id)
)
go




/*==============================================================*/
/* 2018-06-26

DoctorOffice（医生对应科室表）增加字段：SubjectFirstId INT、SubjectFirstCode nvarchar(30)、SubjectFirstName nvarchar(30)

*/
/*==============================================================*/
----一级科室Id（医生对应科室表）

if not exists(select * from syscolumns where id = object_id('DoctorOffice') and name = 'SubjectFirstId') 
alter table DoctorOffice add SubjectFirstId int
go

---- 一级科室代码（医生对应科室表）


if not exists(select * from syscolumns where id = object_id('DoctorOffice') and name = 'SubjectFirstCode') 
alter table DoctorOffice add SubjectFirstCode nvarchar(30)
go

---- 一级科室名称（医生对应科室表）

if not exists(select * from syscolumns where id = object_id('DoctorOffice') and name = 'SubjectFirstName') 
alter table DoctorOffice add SubjectFirstName nvarchar(30)
go

/*==============================================================*/
/* 2018-08-14

DoctorService（医生、医护人员开通服务表）增加字段：Initiator SMALLINT

*/
/*==============================================================*/
----- 开通服务发起方（医生、医护人员开通服务表）

if not exists(select * from syscolumns where id = object_id('DoctorService') and name = 'Initiator') 
alter table DoctorService add Initiator smallint
go



/*==============================================================*/
/* 2018-08-15

PlatSignRecord（会员机构和平台签约记录表）增加字段：CustomerGuid uniqueidentifier
CenterSignRecord（服务中心签约记录表）增加字段：CustomerGuid uniqueidentifier

*/
/*==============================================================*/
------签约人Guid（会员机构和平台签约记录表）

if not exists(select * from syscolumns where id = object_id('PlatSignRecord') and name = 'CustomerGuid') 
alter table PlatSignRecord add CustomerGuid uniqueidentifier 
go


if not exists(select * from syscolumns where id = object_id('CenterSignRecord') and name = 'CustomerGuid') 
alter table CenterSignRecord add CustomerGuid uniqueidentifier 
go

/*==============================================================*/
/* 2018-08-23

Customer（用户表）增加字段：Nationality nvarchar(20)

*/
/*==============================================================*/
----国籍（用户表）
if not exists(select * from syscolumns where id = object_id('Customer') and name = 'Nationality') 
alter table Customer add Nationality nvarchar (20) 
go


/*==============================================================*/
/* 2018-08-27

DoctorMember（会员医生表）增加字段：SocialTenure nvarchar(500)

*/
/*==============================================================*/
----社会任职（会员医生表）

if not exists(select * from syscolumns where id = object_id('DoctorMember') and name = 'SocialTenure') 
alter table DoctorMember add SocialTenure nvarchar (500)
go

/*==============================================================*/
/* 2018-09-07

增加表：RoleGroup（角色权限分组表）、RolePermission（角色细分权限表）、Permission_Group_Mapping（角色分组权限表）、Customer_Group_Mapping（用户与角色分组关系表）

*/
/*==============================================================*/
----- 角色权限分组表

if not exists (select * from sysobjects where name = 'RoleGroup' and type = 'U')
create table RoleGroup (
                                Id int identity,
				NAME nvarchar (64),
				COMMENT nvarchar (255),
				Config nvarchar (1024),
				RoleName nvarchar (255),
				Category nvarchar (255) NOT NULL,
				ServiceCenterId int,
				InstitutionGuid uniqueidentifier,
				Kind smallint,
				constraint PK_RoleGroup primary key (Id)
)
go



---- 角色细分权限表


if not exists (select * from sysobjects where name = 'RolePermission' and type = 'U')
create table RolePermission (
                                Id int identity,
				RoleName nvarchar (255),
				NAME nvarchar (255),
				SystemName nvarchar (255),
				Category nvarchar (255),
				constraint PK_RolePermission primary key (Id)
)
go

------角色分组权限表

if not exists (select * from sysobjects where name = 'Permission_Group_Mapping' and type = 'U')
create table Permission_Group_Mapping (
                                Id int identity ,
				GroupId int,
				PermissionId int,
				Config nvarchar (1024),
				constraint PK_Permission_Group_Mapping primary key (Id)
)
go

----------用户与角色分组关系表


if not exists (select * from sysobjects where name = 'Customer_Group_Mapping' and type = 'U')
create table Customer_Group_Mapping (
                                Id int identity,
				CustomerGuid uniqueidentifier ,
				GroupId int,
				constraint PK_Customer_Group_Mapping primary key (Id)
)
go



