/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2000                    */
/* Created on:     2017/11/27 14:02:40                          */
/*==============================================================*/


/*==============================================================*/
/* Index: IX_CT_CustomerGuid                                    */
/*==============================================================*/
create index IX_CT_CustomerGuid on ConfigTemplate (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_DH_ProjectKey                                      */
/*==============================================================*/
create index IX_DH_ProjectKey on DatabaseHistory (
ProjectKey ASC
)
go

/*==============================================================*/
/* Index: IX_DH_DataBaseKey                                     */
/*==============================================================*/
create index IX_DH_DataBaseKey on DatabaseHistory (
DataBaseKey ASC
)
go

/*==============================================================*/
/* Index: IX_DH_AcqTime                                         */
/*==============================================================*/
create index IX_DH_AcqTime on DatabaseHistory (
AcqTime ASC
)
go

/*==============================================================*/
/* Index: IX_HBH_ProjectKey                                     */
/*==============================================================*/
create index IX_HBH_ProjectKey on HeartBeatHistory (
ProjectKey ASC
)
go

/*==============================================================*/
/* Index: IX_HBH_HeartKey                                       */
/*==============================================================*/
create index IX_HBH_HeartKey on HeartBeatHistory (
HeartKey ASC
)
go

/*==============================================================*/
/* Index: IX_HBH_AcqTime                                        */
/*==============================================================*/
create index IX_HBH_AcqTime on HeartBeatHistory (
AcqTime ASC
)
go

/*==============================================================*/
/* Index: IX_MSM_CustomerGuid                                   */
/*==============================================================*/
create index IX_MSM_CustomerGuid on Manager_Server_Mapping (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_MSM_ServerKey                                      */
/*==============================================================*/
create index IX_MSM_ServerKey on Manager_Server_Mapping (
ServerKey ASC
)
go

/*==============================================================*/
/* Index: IX_MD_ProjectKey                                      */
/*==============================================================*/
create index IX_MD_ProjectKey on MonitorDatabase (
ProjectKey ASC
)
go

/*==============================================================*/
/* Index: IX_MHB_ProjectKey                                     */
/*==============================================================*/
create index IX_MHB_ProjectKey on MonitorHeartBeat (
ProjectKey ASC
)
go

/*==============================================================*/
/* Index: IX_MP_ProjectKey                                      */
/*==============================================================*/
create index IX_MP_ProjectKey on MonitorProcess (
ProjectKey ASC
)
go

/*==============================================================*/
/* Index: IX_MP_ServerKey                                       */
/*==============================================================*/
create index IX_MP_ServerKey on MonitorProject (
ServerKey ASC
)
go

/*==============================================================*/
/* Index: IX_MS_ProjectKey                                      */
/*==============================================================*/
create index IX_MS_ProjectKey on MonitorStorage (
ProjectKey ASC
)
go

/*==============================================================*/
/* Index: IX_NL_WarnId                                          */
/*==============================================================*/
create index IX_NL_WarnId on NotificationLog (
WarnId ASC
)
go

/*==============================================================*/
/* Index: IX_NL_RecieveCustomerGuid                             */
/*==============================================================*/
create index IX_NL_RecieveCustomerGuid on NotificationLog (
RecieveCustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_NL_Phone                                           */
/*==============================================================*/
create index IX_NL_Phone on NotificationLog (
Phone ASC
)
go

/*==============================================================*/
/* Index: IX_NL_OperateDate                                     */
/*==============================================================*/
create index IX_NL_OperateDate on NotificationLog (
OperateDate ASC
)
go

/*==============================================================*/
/* Index: IX_PH_ProjectKey                                      */
/*==============================================================*/
create index IX_PH_ProjectKey on ProcessHistory (
ProjectKey ASC
)
go

/*==============================================================*/
/* Index: IX_PH_ProcessKey                                      */
/*==============================================================*/
create index IX_PH_ProcessKey on ProcessHistory (
ProcessKey ASC
)
go

/*==============================================================*/
/* Index: IX_PH_AcqTime                                         */
/*==============================================================*/
create index IX_PH_AcqTime on ProcessHistory (
AcqTime ASC
)
go

/*==============================================================*/
/* Index: IX_SNH_ServerKey                                      */
/*==============================================================*/
create index IX_SNH_ServerKey on ServerNatureHistory (
ServerKey ASC
)
go

/*==============================================================*/
/* Index: IX_SNH_ProjectKey                                     */
/*==============================================================*/
create index IX_SNH_ProjectKey on ServerNatureHistory (
ProjectKey ASC
)
go

/*==============================================================*/
/* Index: IX_SNH_AcqTime                                        */
/*==============================================================*/
create index IX_SNH_AcqTime on ServerNatureHistory (
AcqTime ASC
)
go

/*==============================================================*/
/* Index: IX_SH_ProjectKey                                      */
/*==============================================================*/
create index IX_SH_ProjectKey on StorageHistory (
ProjectKey ASC
)
go

/*==============================================================*/
/* Index: IX_SH_StorageKey                                      */
/*==============================================================*/
create index IX_SH_StorageKey on StorageHistory (
StorageKey ASC
)
go

/*==============================================================*/
/* Index: IX_SH_AcqTime                                         */
/*==============================================================*/
create index IX_SH_AcqTime on StorageHistory (
AcqTime ASC
)
go

/*==============================================================*/
/* Index: IX_WM_ServerKey                                       */
/*==============================================================*/
create index IX_WM_ServerKey on WarnMessage (
ServerKey ASC
)
go

/*==============================================================*/
/* Index: IX_WM_ProjectKey                                      */
/*==============================================================*/
create index IX_WM_ProjectKey on WarnMessage (
ProjectKey ASC
)
go

/*==============================================================*/
/* Index: IX_WM_MonitorKey                                      */
/*==============================================================*/
create index IX_WM_MonitorKey on WarnMessage (
MonitorKey ASC
)
go

/*==============================================================*/
/* Index: IX_WM_HistoryKey                                      */
/*==============================================================*/
create index IX_WM_HistoryKey on WarnMessage (
HistoryKey ASC
)
go

/*==============================================================*/
/* Index: IX_WM_IsRead                                          */
/*==============================================================*/
create index IX_WM_IsRead on WarnMessage (
IsRead ASC
)
go

/*==============================================================*/
/* Index: IX_WM_OperateDate                                     */
/*==============================================================*/
create index IX_WM_OperateDate on WarnMessage (
OperateDate ASC
)
go

