/*==============================================================*/
/* 2018-03-15

���ӱ�RemoteClinicProcess��������̱�

*/
/*==============================================================*/
-------------������̱�
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


------������������̱�
if not exists (select * from sysindexes where id = object_id('RemoteClinicProcess')  and name = 'IX_RCP_ServiceId')
create index IX_RCP_ServiceId on RemoteClinicProcess(
ServiceId
)
go







/*==============================================================*/
/* 2018-10-09

RemoteClinic��Զ��������޸��ֶΣ�PatientDesc nvarchar(1024)
                                              
*/
/*==============================================================*/
--------�������ߣ�Զ�������


if exists(select * from syscolumns where id = object_id('RemoteClinic') and name = 'PatientDesc') 
alter table RemoteClinic alter column PatientDesc nvarchar (1024)
go













