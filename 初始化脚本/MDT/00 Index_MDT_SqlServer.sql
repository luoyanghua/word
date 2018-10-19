/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2000                    */
/* Created on:     2017/10/10 14:58:17                          */
/*==============================================================*/


/*==============================================================*/
/* Index: IX_AMDT_ServiceId                                     */
/*==============================================================*/
create index IX_AMDT_ServiceId on ApplyMDT (
ServiceId ASC
)
go

/*==============================================================*/
/* Index: IX_AMDT_SystemMedNo                                   */
/*==============================================================*/
create index IX_AMDT_SystemMedNo on ApplyMDT (
SystemMedNo ASC
)
go

/*==============================================================*/
/* Index: IX_AMDT_IdNumber                                      */
/*==============================================================*/
create index IX_AMDT_IdNumber on ApplyMDT (
IdNumber ASC
)
go

/*==============================================================*/
/* Index: IX_AMDT_HealthCardNumber                              */
/*==============================================================*/
create index IX_AMDT_HealthCardNumber on ApplyMDT (
HealthCardNumber ASC
)
go

/*==============================================================*/
/* Index: IX_AMDT_RequestOfficeId                               */
/*==============================================================*/
create index IX_AMDT_RequestOfficeId on ApplyMDT (
RequestOfficeId ASC
)
go

/*==============================================================*/
/* Index: IX_AMDT_CustomerGuid                                  */
/*==============================================================*/
create index IX_AMDT_CustomerGuid on ApplyMDT (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_AMDT_RequestDate                                   */
/*==============================================================*/
create index IX_AMDT_RequestDate on ApplyMDT (
RequestDate ASC
)
go

/*==============================================================*/
/* Index: IX_AMDT_ServiceCenterId                               */
/*==============================================================*/
create index IX_AMDT_ServiceCenterId on ApplyMDT (
ServiceCenterId ASC
)
go

/*==============================================================*/
/* Index: IX_AMDT_ConsultKindCode                               */
/*==============================================================*/
create index IX_AMDT_ConsultKindCode on ApplyMDT (
ConsultKindCode ASC
)
go

/*==============================================================*/
/* Index: IX_AMDT_ConsultClassCode                              */
/*==============================================================*/
create index IX_AMDT_ConsultClassCode on ApplyMDT (
ConsultClassCode ASC
)
go

/*==============================================================*/
/* Index: IX_AMDT_KeyWord                                       */
/*==============================================================*/
create index IX_AMDT_KeyWord on ApplyMDT (
KeyWord ASC
)
go

/*==============================================================*/
/* Index: IX_AMDT_ServiceState                                  */
/*==============================================================*/
create index IX_AMDT_ServiceState on ApplyMDT (
ServiceState ASC
)
go

/*==============================================================*/
/* Index: IX_MDTCenter_ServiceId                                */
/*==============================================================*/
create index IX_MDTCenter_ServiceId on MDTCenter (
ServiceId ASC
)
go

/*==============================================================*/
/* Index: IX_MDTC_ServiceId                                     */
/*==============================================================*/
create index IX_MDTC_ServiceId on MDTCustomer (
ServiceId ASC
)
go

/*==============================================================*/
/* Index: IX_MDTC_ServiceCenterId                               */
/*==============================================================*/
create index IX_MDTC_ServiceCenterId on MDTCustomer (
ServiceCenterId ASC
)
go

/*==============================================================*/
/* Index: IX_MDTC_CustomerGuid                                  */
/*==============================================================*/
create index IX_MDTC_CustomerGuid on MDTCustomer (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_MDTDR_ServiceId                                    */
/*==============================================================*/
create index IX_MDTDR_ServiceId on MDTDiagnosisReply (
ServiceId ASC
)
go

/*==============================================================*/
/* Index: IX_MDTDR_CustomerGuid                                 */
/*==============================================================*/
create index IX_MDTDR_CustomerGuid on MDTDiagnosisReply (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_MDTDR_State                                        */
/*==============================================================*/
create index IX_MDTDR_State on MDTDiagnosisReply (
State ASC
)
go

/*==============================================================*/
/* Index: IX_MDTDR_ServiceCenterId                              */
/*==============================================================*/
create index IX_MDTDR_ServiceCenterId on MDTDiagnosisReply (
ServiceCenterId ASC
)
go

/*==============================================================*/
/* Index: IX_MDTP_ServiceId                                     */
/*==============================================================*/
create index IX_MDTP_ServiceId on MDTProcess (
ServiceId ASC
)
go

/*==============================================================*/
/* Index: IX_NIM_ServiceId                                      */
/*==============================================================*/
create index IX_NIM_ServiceId on NoImageMark (
ServiceId ASC
)
go

