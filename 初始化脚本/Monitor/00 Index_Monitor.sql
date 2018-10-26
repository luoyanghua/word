/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2017/11/27 14:04:28                          */
/*==============================================================*/


/*==============================================================*/
/* Index: IX_CT_CustomerGuid                                    */
/*==============================================================*/
create index IX_CT_CustomerGuid on ConfigTemplate
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_DH_ProjectKey                                      */
/*==============================================================*/
create index IX_DH_ProjectKey on DatabaseHistory
(
   ProjectKey
);

/*==============================================================*/
/* Index: IX_DH_DataBaseKey                                     */
/*==============================================================*/
create index IX_DH_DataBaseKey on DatabaseHistory
(
   DataBaseKey
);

/*==============================================================*/
/* Index: IX_DH_AcqTime                                         */
/*==============================================================*/
create index IX_DH_AcqTime on DatabaseHistory
(
   AcqTime
);

/*==============================================================*/
/* Index: IX_HBH_ProjectKey                                     */
/*==============================================================*/
create index IX_HBH_ProjectKey on HeartBeatHistory
(
   ProjectKey
);

/*==============================================================*/
/* Index: IX_HBH_HeartKey                                       */
/*==============================================================*/
create index IX_HBH_HeartKey on HeartBeatHistory
(
   HeartKey
);


/*==============================================================*/
/* Index: IX_HBH_OperateDate                                    */
/*==============================================================*/

create index IX_HBH_OperateDate on HeartBeatHistory
(
   OperateDate desc
);


/*==============================================================*/
/* Index: IX_HBH_AcqTime                                        */
/*==============================================================*/
create index IX_HBH_AcqTime on HeartBeatHistory
(
   AcqTime
);

/*==============================================================*/
/* Index: IX_MSM_CustomerGuid                                   */
/*==============================================================*/
create index IX_MSM_CustomerGuid on Manager_Server_Mapping
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_MSM_ServerKey                                      */
/*==============================================================*/
create index IX_MSM_ServerKey on Manager_Server_Mapping
(
   ServerKey
);

/*==============================================================*/
/* Index: IX_MD_ProjectKey                                      */
/*==============================================================*/
create index IX_MD_ProjectKey on MonitorDatabase
(
   ProjectKey
);

/*==============================================================*/
/* Index: IX_MHB_ProjectKey                                     */
/*==============================================================*/
create index IX_MHB_ProjectKey on MonitorHeartBeat
(
   ProjectKey
);

/*==============================================================*/
/* Index: IX_MP_ProjectKey                                      */
/*==============================================================*/
create index IX_MP_ProjectKey on MonitorProcess
(
   ProjectKey
);

/*==============================================================*/
/* Index: IX_MP_ServerKey                                       */
/*==============================================================*/
create index IX_MP_ServerKey on MonitorProject
(
   ServerKey
);

/*==============================================================*/
/* Index: IX_MS_ProjectKey                                      */
/*==============================================================*/
create index IX_MS_ProjectKey on MonitorStorage
(
   ProjectKey
);

/*==============================================================*/
/* Index: IX_NL_WarnId                                          */
/*==============================================================*/
create index IX_NL_WarnId on NotificationLog
(
   WarnId
);

/*==============================================================*/
/* Index: IX_NL_RecieveCustomerGuid                             */
/*==============================================================*/
create index IX_NL_RecieveCustomerGuid on NotificationLog
(
   RecieveCustomerGuid
);

/*==============================================================*/
/* Index: IX_NL_Phone                                           */
/*==============================================================*/
create index IX_NL_Phone on NotificationLog
(
   Phone
);

/*==============================================================*/
/* Index: IX_NL_OperateDate                                     */
/*==============================================================*/
create index IX_NL_OperateDate on NotificationLog
(
   OperateDate
);

/*==============================================================*/
/* Index: IX_PH_ProjectKey                                      */
/*==============================================================*/
create index IX_PH_ProjectKey on ProcessHistory
(
   ProjectKey
);

/*==============================================================*/
/* Index: IX_PH_ProcessKey                                      */
/*==============================================================*/
create index IX_PH_ProcessKey on ProcessHistory
(
   ProcessKey
);

/*==============================================================*/
/* Index: IX_PH_OperateDate                                      */
/*==============================================================*/
create index IX_PH_ProcessKey on ProcessHistory
(
   OperateDate
);

/*==============================================================*/
/* Index: IX_PH_AcqTime                                         */
/*==============================================================*/
create index IX_PH_AcqTime on ProcessHistory
(
   AcqTime
);

/*==============================================================*/
/* Index: IX_SNH_ServerKey                                      */
/*==============================================================*/
create index IX_SNH_ServerKey on ServerNatureHistory
(
   ServerKey
);

/*==============================================================*/
/* Index: IX_SNH_ProjectKey                                     */
/*==============================================================*/
create index IX_SNH_ProjectKey on ServerNatureHistory
(
   ProjectKey
);

/*==============================================================*/
/* Index: IX_SNH_AcqTime                                        */
/*==============================================================*/
create index IX_SNH_AcqTime on ServerNatureHistory
(
   AcqTime
);

/*==============================================================*/
/* Index: IX_SH_ProjectKey                                      */
/*==============================================================*/
create index IX_SH_ProjectKey on StorageHistory
(
   ProjectKey
);

/*==============================================================*/
/* Index: IX_SH_StorageKey                                      */
/*==============================================================*/
create index IX_SH_StorageKey on StorageHistory
(
   StorageKey
);

/*==============================================================*/
/* Index: IX_SH_AcqTime                                         */
/*==============================================================*/
create index IX_SH_AcqTime on StorageHistory
(
   AcqTime
);

/*==============================================================*/
/* Index: IX_WM_ServerKey                                       */
/*==============================================================*/
create index IX_WM_ServerKey on WarnMessage
(
   ServerKey
);

/*==============================================================*/
/* Index: IX_WM_OperateDate                                     */
/*==============================================================*/

create index IX_WM_OperateDate on WarnMessage
(
   OperateDate desc
);


/*==============================================================*/
/* Index: IX_WM_ProjectKey                                      */
/*==============================================================*/
create index IX_WM_ProjectKey on WarnMessage
(
   ProjectKey
);

/*==============================================================*/
/* Index: IX_WM_MonitorKey                                      */
/*==============================================================*/
create index IX_WM_MonitorKey on WarnMessage
(
   MonitorKey
);

/*==============================================================*/
/* Index: IX_WM_HistoryKey                                      */
/*==============================================================*/
create index IX_WM_HistoryKey on WarnMessage
(
   HistoryKey
);

/*==============================================================*/
/* Index: IX_WM_IsRead                                          */
/*==============================================================*/
create index IX_WM_IsRead on WarnMessage
(
   IsRead
);

/*==============================================================*/
/* Index: IX_WM_OperateDate                                     */
/*==============================================================*/
create index IX_WM_OperateDate on WarnMessage
(
   OperateDate
);

