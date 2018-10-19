/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2000                    */
/* Created on:     2017/10/10 14:44:48                          */
/*==============================================================*/


/*==============================================================*/
/* Index: IX_C_OrderNo                                          */
/*==============================================================*/
create index IX_C_OrderNo on Charge (
OrderNo ASC
)
go

/*==============================================================*/
/* Index: IX_C_ChargeId                                         */
/*==============================================================*/
create index IX_C_ChargeId on Charge (
ChargeId ASC
)
go

/*==============================================================*/
/* Index: IX_C_TransactionNo                                    */
/*==============================================================*/
create index IX_C_TransactionNo on Charge (
TransactionNo ASC
)
go

/*==============================================================*/
/* Index: IX_C_PayMethod                                        */
/*==============================================================*/
create index IX_C_PayMethod on Charge (
PayMethod ASC
)
go

/*==============================================================*/
/* Index: IX_C_Channel                                          */
/*==============================================================*/
create index IX_C_Channel on Charge (
Channel ASC
)
go

/*==============================================================*/
/* Index: IX_C_PayCustomerGuid                                  */
/*==============================================================*/
create index IX_C_PayCustomerGuid on Charge (
PayCustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_C_PayTime                                          */
/*==============================================================*/
create index IX_C_PayTime on Charge (
PayTime ASC
)
go

/*==============================================================*/
/* Index: IX_C_Kind                                             */
/*==============================================================*/
create index IX_C_Kind on Charge (
Kind ASC
)
go

/*==============================================================*/
/* Index: IX_C_BusinessId                                       */
/*==============================================================*/
create index IX_C_BusinessId on Charge (
BusinessId ASC
)
go

/*==============================================================*/
/* Index: IX_C_ServiceCenterId                                  */
/*==============================================================*/
create index IX_C_ServiceCenterId on Charge (
ServiceCenterId ASC
)
go

/*==============================================================*/
/* Index: IX_C_State                                            */
/*==============================================================*/
create index IX_C_State on Charge (
State ASC
)
go

/*==============================================================*/
/* Index: IX_C_ReconciliationState                              */
/*==============================================================*/
create index IX_C_ReconciliationState on Charge (
ReconciliationState ASC
)
go

/*==============================================================*/
/* Index: IX_C_IsOffline                                        */
/*==============================================================*/
create index IX_C_IsOffline on Charge (
IsOffline ASC
)
go

/*==============================================================*/
/* Index: IX_C_IsNotify                                         */
/*==============================================================*/
create index IX_C_IsNotify on Charge (
IsNotify ASC
)
go

/*==============================================================*/
/* Index: IX_C_IsSync                                           */
/*==============================================================*/
create index IX_C_IsSync on Charge (
IsSync ASC
)
go

/*==============================================================*/
/* Index: IX_DS_CustomerGuid                                    */
/*==============================================================*/
create index IX_DS_CustomerGuid on DoctorInCome (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_DS_OrderNo                                         */
/*==============================================================*/
create index IX_DS_OrderNo on DoctorInCome (
OrderNo ASC
)
go

/*==============================================================*/
/* Index: IX_DS_Kind                                            */
/*==============================================================*/
create index IX_DS_Kind on DoctorInCome (
Kind ASC
)
go

/*==============================================================*/
/* Index: IX_DS_BusinessId                                      */
/*==============================================================*/
create index IX_DS_BusinessId on DoctorInCome (
BusinessId ASC
)
go

/*==============================================================*/
/* Index: IX_DS_ServiceCenterId                                 */
/*==============================================================*/
create index IX_DS_ServiceCenterId on DoctorInCome (
ServiceCenterId ASC
)
go

/*==============================================================*/
/* Index: IX_PayLog_OrderNo                                     */
/*==============================================================*/
create index IX_PayLog_OrderNo on PayLog (
OrderNo ASC
)
go

/*==============================================================*/
/* Index: IX_PayLog_Kind                                        */
/*==============================================================*/
create index IX_PayLog_Kind on PayLog (
Kind ASC
)
go

/*==============================================================*/
/* Index: IX_PayLog_Event                                       */
/*==============================================================*/
create index IX_PayLog_Event on PayLog (
Event ASC
)
go

/*==============================================================*/
/* Index: IX_PayLog_OCustomerGuid                               */
/*==============================================================*/
create index IX_PayLog_OCustomerGuid on PayLog (
OperateCustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_PayLog_EventTime                                   */
/*==============================================================*/
create index IX_PayLog_EventTime on PayLog (
EventTime ASC
)
go

/*==============================================================*/
/* Index: IX_R_OrderNo                                          */
/*==============================================================*/
create index IX_R_OrderNo on Refund (
OrderNo ASC
)
go

/*==============================================================*/
/* Index: IX_R_RefundId                                         */
/*==============================================================*/
create index IX_R_RefundId on Refund (
RefundId ASC
)
go

/*==============================================================*/
/* Index: IX_R_ChargeId                                         */
/*==============================================================*/
create index IX_R_ChargeId on Refund (
ChargeId ASC
)
go

/*==============================================================*/
/* Index: IX_R_TransactionNo                                    */
/*==============================================================*/
create index IX_R_TransactionNo on Refund (
TransactionNo ASC
)
go

/*==============================================================*/
/* Index: IX_R_ChargeOrderNo                                    */
/*==============================================================*/
create index IX_R_ChargeOrderNo on Refund (
ChargeOrderNo ASC
)
go

/*==============================================================*/
/* Index: IX_R_PayCustomerGuid                                  */
/*==============================================================*/
create index IX_R_PayCustomerGuid on Refund (
PayCustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_R_RefundTime                                       */
/*==============================================================*/
create index IX_R_RefundTime on Refund (
RefundTime ASC
)
go

/*==============================================================*/
/* Index: IX_R_Kind                                             */
/*==============================================================*/
create index IX_R_Kind on Refund (
Kind ASC
)
go

/*==============================================================*/
/* Index: IX_R_BusinessId                                       */
/*==============================================================*/
create index IX_R_BusinessId on Refund (
BusinessId ASC
)
go

/*==============================================================*/
/* Index: IX_R_ServiceCenterId                                  */
/*==============================================================*/
create index IX_R_ServiceCenterId on Refund (
ServiceCenterId ASC
)
go

/*==============================================================*/
/* Index: IX_R_State                                            */
/*==============================================================*/
create index IX_R_State on Refund (
State ASC
)
go

/*==============================================================*/
/* Index: IX_R_ReconciliationState                              */
/*==============================================================*/
create index IX_R_ReconciliationState on Refund (
ReconciliationState ASC
)
go

/*==============================================================*/
/* Index: IX_R_IsNotify                                         */
/*==============================================================*/
create index IX_R_IsNotify on Refund (
IsNotify ASC
)
go

