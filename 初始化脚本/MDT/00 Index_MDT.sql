/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2017/7/14 15:47:36                           */
/*==============================================================*/


/*==============================================================*/
/* Index: IX_AMDT_ServiceId                                     */
/*==============================================================*/
create index IX_AMDT_ServiceId on ApplyMDT
(
   ServiceId
);

/*==============================================================*/
/* Index: IX_AMDT_SystemMedNo                                   */
/*==============================================================*/
create index IX_AMDT_SystemMedNo on ApplyMDT
(
   SystemMedNo
);

/*==============================================================*/
/* Index: IX_AMDT_IdNumber                                      */
/*==============================================================*/
create index IX_AMDT_IdNumber on ApplyMDT
(
   IdNumber
);

/*==============================================================*/
/* Index: IX_AMDT_HealthCardNumber                              */
/*==============================================================*/
create index IX_AMDT_HealthCardNumber on ApplyMDT
(
   HealthCardNumber
);

/*==============================================================*/
/* Index: IX_AMDT_RequestOfficeId                               */
/*==============================================================*/
create index IX_AMDT_RequestOfficeId on ApplyMDT
(
   RequestOfficeId
);

/*==============================================================*/
/* Index: IX_AMDT_CustomerGuid                                  */
/*==============================================================*/
create index IX_AMDT_CustomerGuid on ApplyMDT
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_AMDT_RequestDate                                   */
/*==============================================================*/
create index IX_AMDT_RequestDate on ApplyMDT
(
   RequestDate
);

/*==============================================================*/
/* Index: IX_AMDT_ServiceCenterId                               */
/*==============================================================*/
create index IX_AMDT_ServiceCenterId on ApplyMDT
(
   ServiceCenterId
);

/*==============================================================*/
/* Index: IX_AMDT_ConsultKindCode                               */
/*==============================================================*/
create index IX_AMDT_ConsultKindCode on ApplyMDT
(
   ConsultKindCode
);

/*==============================================================*/
/* Index: IX_AMDT_ConsultClassCode                              */
/*==============================================================*/
create index IX_AMDT_ConsultClassCode on ApplyMDT
(
   ConsultClassCode
);

/*==============================================================*/
/* Index: IX_AMDT_KeyWord                                       */
/*==============================================================*/
create index IX_AMDT_KeyWord on ApplyMDT
(
   KeyWord
);

/*==============================================================*/
/* Index: IX_AMDT_ServiceState                                  */
/*==============================================================*/
create index IX_AMDT_ServiceState on ApplyMDT
(
   ServiceState
);

/*==============================================================*/
/* Index: IX_MDTCenter_ServiceId                                */
/*==============================================================*/
create index IX_MDTCenter_ServiceId on MDTCenter
(
   ServiceId
);

/*==============================================================*/
/* Index: IX_MDTC_ServiceId                                     */
/*==============================================================*/
create index IX_MDTC_ServiceId on MDTCustomer
(
   ServiceId
);

/*==============================================================*/
/* Index: IX_MDTC_ServiceCenterId                               */
/*==============================================================*/
create index IX_MDTC_ServiceCenterId on MDTCustomer
(
   ServiceCenterId
);

/*==============================================================*/
/* Index: IX_MDTC_CustomerGuid                                  */
/*==============================================================*/
create index IX_MDTC_CustomerGuid on MDTCustomer
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_MDTDR_ServiceId                                    */
/*==============================================================*/
create index IX_MDTDR_ServiceId on MDTDiagnosisReply
(
   ServiceId
);

/*==============================================================*/
/* Index: IX_MDTDR_CustomerGuid                                 */
/*==============================================================*/
create index IX_MDTDR_CustomerGuid on MDTDiagnosisReply
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_MDTDR_State                                        */
/*==============================================================*/
create index IX_MDTDR_State on MDTDiagnosisReply
(
   State
);

/*==============================================================*/
/* Index: IX_MDTDR_ServiceCenterId                              */
/*==============================================================*/
create index IX_MDTDR_ServiceCenterId on MDTDiagnosisReply
(
   ServiceCenterId
);

/*==============================================================*/
/* Index: IX_MDTP_ServiceId                                     */
/*==============================================================*/
create index IX_MDTP_ServiceId on MDTProcess
(
   ServiceId
);

/*==============================================================*/
/* Index: IX_NIM_ServiceId                                      */
/*==============================================================*/
create index IX_NIM_ServiceId on NoImageMark
(
   ServiceId
);

