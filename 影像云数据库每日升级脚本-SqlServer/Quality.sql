/*==============================================================*/
/* 2017-12-04

TaskRecord���ʿ������ȡ����������ֶΣ�Memo nvarchar(100)

*/
/*==============================================================*/
---- ��ע���ʿ������ȡ�����

if not exists(select * from syscolumns where id = object_id('TaskRecord') and name = 'Memo') 
alter table TaskRecord add Memo nvarchar(100)
go

/*==============================================================*/
/* 2017-12-11

ExaminationItemGrade�������Ŀ���ֱ������ֶΣ�MemberGuid uniqueidentifier
���ӱ�TaskGroup���ʿ����������TaskGroupMember���������Ա����TaskGroupHospital���������ʿ�ҽԺ����TaskGroupExamination���������������

*/
/*==============================================================*/
-------�ʿ���Ա�û�Ψһ�ţ������Ŀ���ֱ�


if not exists(select * from syscolumns where id = object_id('ExaminationItemGrade') and name = 'MemberGuid') 
alter table ExaminationItemGrade add MemberGuid uniqueidentifier
go


----- �����������Ŀ���ֱ�

if not exists (select * from sysindexes where id = object_id('ExaminationItemGrade') and and name = 'IX_EIG_MemberGuid')
create index IX_EIG_MemberGuid on ExaminationItemGrade (
MemberGuid 
)
go



------�ʿ��������

if not exists (select * from sysobjects where name = 'TaskGroup' and type = 'U')
create table TaskGroup (
				Id int identity,
				TaskId uniqueidentifier,
				GroupName nvarchar (100),
				constraint PK_TaskGroup primary key (Id)
			) 
go

----- �������ʿ��������
if not exists (select * from sysindexes where id = object_id('TaskGroup') and and name = 'IX_TG_TaskId')
create index IX_TG_TaskId on TaskGroup (
TaskId
)
go



-----�������Ա��
if not exists (select * from sysobjects where name = 'TaskGroupMember' and type = 'U')
create table TaskGroupMember (
				Id int identity,
				GroupId int,
				MemberGuid uniqueidentifier,
				MemberName nvarchar (100),
				constraint PK_TaskGroupMember primary key (Id)
			)
go

-----�������������Ա��

if not exists (select * from sysindexes where id = object_id('TaskGroupMember') and and name = 'IX_TGM_GroupId')
create index IX_TGM_GroupId on TaskGroupMember (
GroupId
)
go


------�������ʿ�ҽԺ��
if not exists (select * from sysobjects where name = 'TaskGroupHospital' and type = 'U')
create table TaskGroupHospital (
				Id int identity,
				GroupId int,
				HospitalCode nvarchar (250),
				HospitalName nvarchar (250),
				constraint PK_TaskGroupHospital primary key (Id)
			)
go

------ �������������ʿ�ҽԺ��
if not exists (select * from sysindexes where id = object_id('TaskGroupHospital') and and name = 'IX_TGH_GroupId')
create index IX_TGH_GroupId on TaskGroupHospital (
GroupId
)
go



----- �������������
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

------�������������������

if not exists (select * from sysindexes where id = object_id('TaskGroupExamination') and and name = 'IX_TGE_GroupId')
create index IX_TGE_GroupId on TaskGroupExamination (
GroupId
)
go

