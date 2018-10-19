/*==============================================================*/
/* 2018-03-15

增加表：RemoteClinicProcess（门诊过程表）

*/
/*==============================================================*/
-------------门诊过程表
if not exists (select * from sysobjects where name = 'RemoteClinicProcess' and type = 'U')
create table RemoteClinicProcess (
				Id int identity,
				ServiceId uniqueidentifier,
				EVENT int,
				OperateDescription nvarchar(max),
				OperateCustomerGuid uniqueidentifier,
				OperateCustomerName nvarchar (100),
				IP nvarchar (20),
				EventTime datetime,
				constraint PK_RemoteClinicProcess primary key (Id)
		)
go


------索引（门诊过程表）
if not exists (select * from sysindexes where id = object_id('RemoteClinicProcess')  and name = 'IX_RCP_ServiceId')
create index IX_RCP_ServiceId on RemoteClinicProcess(
ServiceId
)
go
