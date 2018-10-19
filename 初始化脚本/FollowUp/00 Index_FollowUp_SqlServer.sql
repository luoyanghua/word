/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2000                    */
/* Created on:     2017/12/8 10:56:39                           */
/*==============================================================*/


/*==============================================================*/
/* Index: IX_FUR_FollowUpGuid                                   */
/*==============================================================*/
create index IX_FUR_FollowUpGuid on FollowUpRecord (
FollowUpGuid ASC
)
go

/*==============================================================*/
/* Index: IX_FUR_RecordCustomerGuid                             */
/*==============================================================*/
create index IX_FUR_RecordCustomerGuid on FollowUpRecord (
RecordCustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_FUR_RecordTime                                     */
/*==============================================================*/
create index IX_FUR_RecordTime on FollowUpRecord (
RecordTime ASC
)
go

/*==============================================================*/
/* Index: IX_FUT_FollowUpGuid                                   */
/*==============================================================*/
create index IX_FUT_FollowUpGuid on FollowUpTask (
FollowUpGuid ASC
)
go

/*==============================================================*/
/* Index: IX_FUT_CaseRangeCode                                  */
/*==============================================================*/
create index IX_FUT_CaseRangeCode on FollowUpTask (
CaseRangeCode ASC
)
go

/*==============================================================*/
/* Index: IX_FUT_CaseTypeCode                                   */
/*==============================================================*/
create index IX_FUT_CaseTypeCode on FollowUpTask (
CaseTypeCode ASC
)
go

/*==============================================================*/
/* Index: IX_FUT_DiseaseCode                                    */
/*==============================================================*/
create index IX_FUT_DiseaseCode on FollowUpTask (
DiseaseCode ASC
)
go

/*==============================================================*/
/* Index: IX_FUT_ModeCode                                       */
/*==============================================================*/
create index IX_FUT_ModeCode on FollowUpTask (
ModeCode ASC
)
go

/*==============================================================*/
/* Index: IX_FUT_FollowCustomerGuid                             */
/*==============================================================*/
create index IX_FUT_FollowCustomerGuid on FollowUpTask (
FollowCustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_FUT_CreateCustomerGuid                             */
/*==============================================================*/
create index IX_FUT_CreateCustomerGuid on FollowUpTask (
CreateCustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_FUT_SummaryCustomerGuid                            */
/*==============================================================*/
create index IX_FUT_SummaryCustomerGuid on FollowUpTask (
SummaryCustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_FUT_FirstDate                                      */
/*==============================================================*/
create index IX_FUT_FirstDate on FollowUpTask (
FirstDate ASC
)
go

/*==============================================================*/
/* Index: IX_FUT_CreateTime                                     */
/*==============================================================*/
create index IX_FUT_CreateTime on FollowUpTask (
CreateTime ASC
)
go

/*==============================================================*/
/* Index: IX_FUT_IsFit                                          */
/*==============================================================*/
create index IX_FUT_IsFit on FollowUpTask (
IsFit ASC
)
go

/*==============================================================*/
/* Index: IX_FUT_IsSatisfied                                    */
/*==============================================================*/
create index IX_FUT_IsSatisfied on FollowUpTask (
IsSatisfied ASC
)
go

/*==============================================================*/
/* Index: IX_FUT_State                                          */
/*==============================================================*/
create index IX_FUT_State on FollowUpTask (
State ASC
)
go

/*==============================================================*/
/* Index: IX_FUT_OfficeId                                       */
/*==============================================================*/
create index IX_FUT_OfficeId on FollowUpTemplate (
OfficeId ASC
)
go

/*==============================================================*/
/* Index: IX_FUT_InstitutionGuid                                */
/*==============================================================*/
create index IX_FUT_InstitutionGuid on FollowUpTemplate (
InstitutionGuid ASC
)
go

