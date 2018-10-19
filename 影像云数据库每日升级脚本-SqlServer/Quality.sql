/*==============================================================*/
/* 2017-12-04

TaskRecord（质控任务抽取任务表）增加字段：Memo nvarchar(100)

*/
/*==============================================================*/
---- 备注（质控任务抽取任务表）

if not exists(select * from syscolumns where id = object_id('TaskRecord') and name = 'Memo') 
alter table TaskRecord add Memo nvarchar(100)
go

/*==============================================================*/
/* 2017-12-11

ExaminationItemGrade（检查项目评分表）增加字段：MemberGuid uniqueidentifier
增加表：TaskGroup（质控任务组表）、TaskGroupMember（任务组成员表）、TaskGroupHospital（任务组质控医院表）、TaskGroupExamination（任务组检查任务表）

*/
/*==============================================================*/
-------质控人员用户唯一号（检查项目评分表）


if not exists(select * from syscolumns where id = object_id('ExaminationItemGrade') and name = 'MemberGuid') 
alter table ExaminationItemGrade add MemberGuid uniqueidentifier
go


----- 索引（检查项目评分表）

if not exists (select * from sysindexes where id = object_id('ExaminationItemGrade') and and name = 'IX_EIG_MemberGuid')
create index IX_EIG_MemberGuid on ExaminationItemGrade (
MemberGuid 
)
go



------质控任务组表

if not exists (select * from sysobjects where name = 'TaskGroup' and type = 'U')
create table TaskGroup (
				Id int identity,
				TaskId uniqueidentifier,
				GroupName nvarchar (100),
				constraint PK_TaskGroup primary key (Id)
			) 
go

----- 索引（质控任务组表）
if not exists (select * from sysindexes where id = object_id('TaskGroup') and and name = 'IX_TG_TaskId')
create index IX_TG_TaskId on TaskGroup (
TaskId
)
go



-----任务组成员表
if not exists (select * from sysobjects where name = 'TaskGroupMember' and type = 'U')
create table TaskGroupMember (
				Id int identity,
				GroupId int,
				MemberGuid uniqueidentifier,
				MemberName nvarchar (100),
				constraint PK_TaskGroupMember primary key (Id)
			)
go

-----索引（任务组成员表）

if not exists (select * from sysindexes where id = object_id('TaskGroupMember') and and name = 'IX_TGM_GroupId')
create index IX_TGM_GroupId on TaskGroupMember (
GroupId
)
go


------任务组质控医院表
if not exists (select * from sysobjects where name = 'TaskGroupHospital' and type = 'U')
create table TaskGroupHospital (
				Id int identity,
				GroupId int,
				HospitalCode nvarchar (250),
				HospitalName nvarchar (250),
				constraint PK_TaskGroupHospital primary key (Id)
			)
go

------ 索引（任务组质控医院表）
if not exists (select * from sysindexes where id = object_id('TaskGroupHospital') and and name = 'IX_TGH_GroupId')
create index IX_TGH_GroupId on TaskGroupHospital (
GroupId
)
go



----- 任务组检查任务表
if not exists (select * from sysobjects where name = 'TaskGroupExamination' and type = 'U')
create table TaskGroupExamination (
				Id int identity,
				GroupId int,
				ExamIndex uniqueidentifier,
				ExamineType nvarchar (16),
				HospitalCode nvarchar (250),
				HospitalName nvarchar (250),
				constraint PK_TaskGroupExamination primary key (Id)
			)
go

------索引（任务组检查任务表）

if not exists (select * from sysindexes where id = object_id('TaskGroupExamination') and and name = 'IX_TGE_GroupId')
create index IX_TGE_GroupId on TaskGroupExamination (
GroupId
)
go

