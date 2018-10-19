/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2017/12/8 10:58:01                           */
/*==============================================================*/


/*==============================================================*/
/* Index: IX_FUR_FollowUpGuid                                   */
/*==============================================================*/
create index IX_FUR_FollowUpGuid on FollowUpRecord
(
   FollowUpGuid
);

/*==============================================================*/
/* Index: IX_FUR_RecordCustomerGuid                             */
/*==============================================================*/
create index IX_FUR_RecordCustomerGuid on FollowUpRecord
(
   RecordCustomerGuid
);

/*==============================================================*/
/* Index: IX_FUR_RecordTime                                     */
/*==============================================================*/
create index IX_FUR_RecordTime on FollowUpRecord
(
   RecordTime
);

/*==============================================================*/
/* Index: IX_FUT_FollowUpGuid                                   */
/*==============================================================*/
create index IX_FUT_FollowUpGuid on FollowUpTask
(
   FollowUpGuid
);

/*==============================================================*/
/* Index: IX_FUT_CaseRangeCode                                  */
/*==============================================================*/
create index IX_FUT_CaseRangeCode on FollowUpTask
(
   CaseRangeCode
);

/*==============================================================*/
/* Index: IX_FUT_CaseTypeCode                                   */
/*==============================================================*/
create index IX_FUT_CaseTypeCode on FollowUpTask
(
   CaseTypeCode
);

/*==============================================================*/
/* Index: IX_FUT_DiseaseCode                                    */
/*==============================================================*/
create index IX_FUT_DiseaseCode on FollowUpTask
(
   DiseaseCode
);

/*==============================================================*/
/* Index: IX_FUT_ModeCode                                       */
/*==============================================================*/
create index IX_FUT_ModeCode on FollowUpTask
(
   ModeCode
);

/*==============================================================*/
/* Index: IX_FUT_FollowCustomerGuid                             */
/*==============================================================*/
create index IX_FUT_FollowCustomerGuid on FollowUpTask
(
   FollowCustomerGuid
);

/*==============================================================*/
/* Index: IX_FUT_CreateCustomerGuid                             */
/*==============================================================*/
create index IX_FUT_CreateCustomerGuid on FollowUpTask
(
   CreateCustomerGuid
);

/*==============================================================*/
/* Index: IX_FUT_SummaryCustomerGuid                            */
/*==============================================================*/
create index IX_FUT_SummaryCustomerGuid on FollowUpTask
(
   SummaryCustomerGuid
);

/*==============================================================*/
/* Index: IX_FUT_FirstDate                                      */
/*==============================================================*/
create index IX_FUT_FirstDate on FollowUpTask
(
   FirstDate
);

/*==============================================================*/
/* Index: IX_FUT_CreateTime                                     */
/*==============================================================*/
create index IX_FUT_CreateTime on FollowUpTask
(
   CreateTime
);

/*==============================================================*/
/* Index: IX_FUT_IsFit                                          */
/*==============================================================*/
create index IX_FUT_IsFit on FollowUpTask
(
   IsFit
);

/*==============================================================*/
/* Index: IX_FUT_IsSatisfied                                    */
/*==============================================================*/
create index IX_FUT_IsSatisfied on FollowUpTask
(
   IsSatisfied
);

/*==============================================================*/
/* Index: IX_FUT_State                                          */
/*==============================================================*/
create index IX_FUT_State on FollowUpTask
(
   State
);

/*==============================================================*/
/* Index: IX_FUT_OfficeId                                       */
/*==============================================================*/
create index IX_FUT_OfficeId on FollowUpTemplate
(
   OfficeId
);

/*==============================================================*/
/* Index: IX_FUT_InstitutionGuid                                */
/*==============================================================*/
create index IX_FUT_InstitutionGuid on FollowUpTemplate
(
   InstitutionGuid
);

