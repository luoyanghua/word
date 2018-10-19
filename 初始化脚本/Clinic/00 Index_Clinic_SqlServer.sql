/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2000                    */
/* Created on:     2018/3/15 10:33:02                           */
/*==============================================================*/


/*==============================================================*/
/* Index: IX_CJBMC_ServiceId                                    */
/*==============================================================*/
create index IX_CJBMC_ServiceId on ClinicJBMC (
ServiceId ASC
)
go

/*==============================================================*/
/* Index: IX_EShedule_WeekDay                                   */
/*==============================================================*/
create index IX_EShedule_WeekDay on ExpertShedule (
WeekDay ASC
)
go

/*==============================================================*/
/* Index: IX_EShedule_PartCode                                  */
/*==============================================================*/
create index IX_EShedule_PartCode on ExpertShedule (
PartCode ASC
)
go

/*==============================================================*/
/* Index: IX_EShedule_SubjectId                                 */
/*==============================================================*/
create index IX_EShedule_SubjectId on ExpertShedule (
SubjectId ASC
)
go

/*==============================================================*/
/* Index: IX_EShedule_CustomerGuid                              */
/*==============================================================*/
create index IX_EShedule_CustomerGuid on ExpertShedule (
ExpertCustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_EShedule_ServiceCenterId                           */
/*==============================================================*/
create index IX_EShedule_ServiceCenterId on ExpertShedule (
ServiceCenterId ASC
)
go

/*==============================================================*/
/* Index: IX_RClinic_ServiceId                                  */
/*==============================================================*/
create index IX_RClinic_ServiceId on RemoteClinic (
ServiceId ASC
)
go

/*==============================================================*/
/* Index: IX_RClinic_CustomerGuid                               */
/*==============================================================*/
create index IX_RClinic_CustomerGuid on RemoteClinic (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_RClinic_ExpertCustomerGuid                         */
/*==============================================================*/
create index IX_RClinic_ExpertCustomerGuid on RemoteClinic (
ExpertCustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_RClinic_ServiceCenterId                            */
/*==============================================================*/
create index IX_RClinic_ServiceCenterId on RemoteClinic (
ServiceCenterId ASC
)
go

/*==============================================================*/
/* Index: IX_RClinic_ServiceState                               */
/*==============================================================*/
create index IX_RClinic_ServiceState on RemoteClinic (
ServiceState ASC
)
go

/*==============================================================*/
/* Index: IX_RCP_ServiceId                                      */
/*==============================================================*/
create index IX_RCP_ServiceId on RemoteClinicPrepare (
ServiceId ASC
)
go

/*==============================================================*/
/* Index: IX_RCP_ServiceId                                      */
/*==============================================================*/
create index IX_RCP_ServiceId on RemoteClinicProcess (
ServiceId ASC
)
go

/*==============================================================*/
/* Index: IX_RCR_ServiceId                                      */
/*==============================================================*/
create index IX_RCR_ServiceId on RemoteClinicRequest (
ServiceId ASC
)
go

/*==============================================================*/
/* Index: IX_RCR_CustomerGuid                                   */
/*==============================================================*/
create index IX_RCR_CustomerGuid on RemoteClinicRequest (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_RCR_State                                          */
/*==============================================================*/
create index IX_RCR_State on RemoteClinicRequest (
State ASC
)
go

/*==============================================================*/
/* Index: IX_RClinicS_SheduleDate                               */
/*==============================================================*/
create index IX_RClinicS_SheduleDate on RemoteClinicShedule (
SheduleDate ASC
)
go

/*==============================================================*/
/* Index: IX_RClinicS_SubjectId                                 */
/*==============================================================*/
create index IX_RClinicS_SubjectId on RemoteClinicShedule (
SubjectId ASC
)
go

/*==============================================================*/
/* Index: IX_RClinicS_ECustomerGuid                             */
/*==============================================================*/
create index IX_RClinicS_ECustomerGuid on RemoteClinicShedule (
ExpertCustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_RClinicS_Order                                     */
/*==============================================================*/
create index IX_RClinicS_Order on RemoteClinicShedule (
"Order" ASC
)
go

/*==============================================================*/
/* Index: IX_RClinicS_BeginTime                                 */
/*==============================================================*/
create index IX_RClinicS_BeginTime on RemoteClinicShedule (
SheduleBeginTime ASC
)
go

/*==============================================================*/
/* Index: IX_RClinicS_EndTime                                   */
/*==============================================================*/
create index IX_RClinicS_EndTime on RemoteClinicShedule (
SheduleEndTime ASC
)
go

/*==============================================================*/
/* Index: IX_RClinicS_ServiceId                                 */
/*==============================================================*/
create index IX_RClinicS_ServiceId on RemoteClinicShedule (
ServiceId ASC
)
go

/*==============================================================*/
/* Index: IX_RClinicS_CustomerGuid                              */
/*==============================================================*/
create index IX_RClinicS_CustomerGuid on RemoteClinicShedule (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_SSubject_CenterId                                  */
/*==============================================================*/
create index IX_SSubject_CenterId on SheduleSubject (
ServiceCenterId ASC
)
go

/*==============================================================*/
/* Index: IX_SSO_SubjectId                                      */
/*==============================================================*/
create index IX_SSO_SubjectId on SheduleSubjectOffice (
SubjectId ASC
)
go

/*==============================================================*/
/* Index: IX_SExpert_SubjectId                                  */
/*==============================================================*/
create index IX_SExpert_SubjectId on SubjectExpert (
SubjectId ASC
)
go

/*==============================================================*/
/* Index: IX_SExpert_CustomerGuid                               */
/*==============================================================*/
create index IX_SExpert_CustomerGuid on SubjectExpert (
ExpertCustomerGuid ASC
)
go

