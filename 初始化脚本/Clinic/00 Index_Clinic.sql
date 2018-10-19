/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2018/3/15 10:34:06                           */
/*==============================================================*/


/*==============================================================*/
/* Index: IX_CJBMC_ServiceId                                    */
/*==============================================================*/
create index IX_CJBMC_ServiceId on ClinicJBMC
(
   ServiceId
);

/*==============================================================*/
/* Index: IX_EShedule_WeekDay                                   */
/*==============================================================*/
create index IX_EShedule_WeekDay on ExpertShedule
(
   WeekDay
);

/*==============================================================*/
/* Index: IX_EShedule_PartCode                                  */
/*==============================================================*/
create index IX_EShedule_PartCode on ExpertShedule
(
   PartCode
);

/*==============================================================*/
/* Index: IX_EShedule_SubjectId                                 */
/*==============================================================*/
create index IX_EShedule_SubjectId on ExpertShedule
(
   SubjectId
);

/*==============================================================*/
/* Index: IX_EShedule_CustomerGuid                              */
/*==============================================================*/
create index IX_EShedule_CustomerGuid on ExpertShedule
(
   ExpertCustomerGuid
);

/*==============================================================*/
/* Index: IX_EShedule_ServiceCenterId                           */
/*==============================================================*/
create index IX_EShedule_ServiceCenterId on ExpertShedule
(
   ServiceCenterId
);

/*==============================================================*/
/* Index: IX_RClinic_ServiceId                                  */
/*==============================================================*/
create index IX_RClinic_ServiceId on RemoteClinic
(
   ServiceId
);

/*==============================================================*/
/* Index: IX_RClinic_CustomerGuid                               */
/*==============================================================*/
create index IX_RClinic_CustomerGuid on RemoteClinic
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_RClinic_ExpertCustomerGuid                         */
/*==============================================================*/
create index IX_RClinic_ExpertCustomerGuid on RemoteClinic
(
   ExpertCustomerGuid
);

/*==============================================================*/
/* Index: IX_RClinic_ServiceCenterId                            */
/*==============================================================*/
create index IX_RClinic_ServiceCenterId on RemoteClinic
(
   ServiceCenterId
);

/*==============================================================*/
/* Index: IX_RClinic_ServiceState                               */
/*==============================================================*/
create index IX_RClinic_ServiceState on RemoteClinic
(
   ServiceState
);

/*==============================================================*/
/* Index: IX_RCP_ServiceId                                      */
/*==============================================================*/
create index IX_RCP_ServiceId on RemoteClinicPrepare
(
   ServiceId
);

/*==============================================================*/
/* Index: IX_RCP_ServiceId                                      */
/*==============================================================*/
create index IX_RCP_ServiceId on RemoteClinicProcess
(
   ServiceId
);

/*==============================================================*/
/* Index: IX_RCR_ServiceId                                      */
/*==============================================================*/
create index IX_RCR_ServiceId on RemoteClinicRequest
(
   ServiceId
);

/*==============================================================*/
/* Index: IX_RCR_CustomerGuid                                   */
/*==============================================================*/
create index IX_RCR_CustomerGuid on RemoteClinicRequest
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_RCR_State                                          */
/*==============================================================*/
create index IX_RCR_State on RemoteClinicRequest
(
   State
);

/*==============================================================*/
/* Index: IX_RClinicS_SheduleDate                               */
/*==============================================================*/
create index IX_RClinicS_SheduleDate on RemoteClinicShedule
(
   SheduleDate
);

/*==============================================================*/
/* Index: IX_RClinicS_SubjectId                                 */
/*==============================================================*/
create index IX_RClinicS_SubjectId on RemoteClinicShedule
(
   SubjectId
);

/*==============================================================*/
/* Index: IX_RClinicS_ECustomerGuid                             */
/*==============================================================*/
create index IX_RClinicS_ECustomerGuid on RemoteClinicShedule
(
   ExpertCustomerGuid
);

/*==============================================================*/
/* Index: IX_RClinicS_Order                                     */
/*==============================================================*/
create index IX_RClinicS_Order on RemoteClinicShedule
(
   `Order`
);

/*==============================================================*/
/* Index: IX_RClinicS_BeginTime                                 */
/*==============================================================*/
create index IX_RClinicS_BeginTime on RemoteClinicShedule
(
   SheduleBeginTime
);

/*==============================================================*/
/* Index: IX_RClinicS_EndTime                                   */
/*==============================================================*/
create index IX_RClinicS_EndTime on RemoteClinicShedule
(
   SheduleEndTime
);

/*==============================================================*/
/* Index: IX_RClinicS_ServiceId                                 */
/*==============================================================*/
create index IX_RClinicS_ServiceId on RemoteClinicShedule
(
   ServiceId
);

/*==============================================================*/
/* Index: IX_RClinicS_CustomerGuid                              */
/*==============================================================*/
create index IX_RClinicS_CustomerGuid on RemoteClinicShedule
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_SSubject_CenterId                                  */
/*==============================================================*/
create index IX_SSubject_CenterId on SheduleSubject
(
   ServiceCenterId
);

/*==============================================================*/
/* Index: IX_SSO_SubjectId                                      */
/*==============================================================*/
create index IX_SSO_SubjectId on SheduleSubjectOffice
(
   SubjectId
);

/*==============================================================*/
/* Index: IX_SExpert_SubjectId                                  */
/*==============================================================*/
create index IX_SExpert_SubjectId on SubjectExpert
(
   SubjectId
);

/*==============================================================*/
/* Index: IX_SExpert_CustomerGuid                               */
/*==============================================================*/
create index IX_SExpert_CustomerGuid on SubjectExpert
(
   ExpertCustomerGuid
);

