/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2000                    */
/* Created on:     2017/10/10 14:50:47                          */
/*==============================================================*/


/*==============================================================*/
/* Index: IX_AAnswer_TestId                                     */
/*==============================================================*/
create index IX_AAnswer_TestId on AskAnswer (
TestId ASC
)
go

/*==============================================================*/
/* Index: IX_AskItem_QuestionId                                 */
/*==============================================================*/
create index IX_AskItem_QuestionId on AskItem (
QuestionId ASC
)
go

/*==============================================================*/
/* Index: IX_FAnswer_TestId                                     */
/*==============================================================*/
create index IX_FAnswer_TestId on FillAnswer (
TestId ASC
)
go

/*==============================================================*/
/* Index: IX_FillItem_QuestionId                                */
/*==============================================================*/
create index IX_FillItem_QuestionId on FillItem (
QuestionId ASC
)
go

/*==============================================================*/
/* Index: IX_FIAnswer_TestId                                    */
/*==============================================================*/
create index IX_FIAnswer_TestId on FillItemAnswer (
TestId ASC
)
go

/*==============================================================*/
/* Index: IX_Paper_PaperKind                                    */
/*==============================================================*/
create index IX_Paper_PaperKind on Paper (
PaperKind ASC
)
go

/*==============================================================*/
/* Index: IX_Paper_PaperTypeCode                                */
/*==============================================================*/
create index IX_Paper_PaperTypeCode on Paper (
PaperTypeCode ASC
)
go

/*==============================================================*/
/* Index: IX_Paper_PaperName                                    */
/*==============================================================*/
create index IX_Paper_PaperName on Paper (
PaperName ASC
)
go

/*==============================================================*/
/* Index: IX_Paper_KeyWord                                      */
/*==============================================================*/
create index IX_Paper_KeyWord on Paper (
KeyWord ASC
)
go

/*==============================================================*/
/* Index: IX_Paper_CustomerGuid                                 */
/*==============================================================*/
create index IX_Paper_CustomerGuid on Paper (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_Paper_CreateTime                                   */
/*==============================================================*/
create index IX_Paper_CreateTime on Paper (
CreateTime ASC
)
go

/*==============================================================*/
/* Index: IX_PAnswer_PaperId                                    */
/*==============================================================*/
create index IX_PAnswer_PaperId on PaperAnswer (
PaperId ASC
)
go

/*==============================================================*/
/* Index: IX_PAnswer_CustomerGuid                               */
/*==============================================================*/
create index IX_PAnswer_CustomerGuid on PaperAnswer (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_PHistory_TestId                                    */
/*==============================================================*/
create index IX_PHistory_TestId on PaperHistory (
TestId ASC
)
go

/*==============================================================*/
/* Index: IX_PaperQ_PaperId                                     */
/*==============================================================*/
create index IX_PaperQ_PaperId on PaperQuestion (
PaperId ASC
)
go

/*==============================================================*/
/* Index: IX_PStudent_PaperId                                   */
/*==============================================================*/
create index IX_PStudent_PaperId on PaperStudent (
PaperId ASC
)
go

/*==============================================================*/
/* Index: IX_Question_QType                                     */
/*==============================================================*/
create index IX_Question_QType on Question (
QuestionType ASC
)
go

/*==============================================================*/
/* Index: IX_Question_KeyWord                                   */
/*==============================================================*/
create index IX_Question_KeyWord on Question (
KeyWord ASC
)
go

/*==============================================================*/
/* Index: IX_Question_CustomerGuid                              */
/*==============================================================*/
create index IX_Question_CustomerGuid on Question (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_QRelate_A                                          */
/*==============================================================*/
create index IX_QRelate_A on QuestionRelate (
AQuestionId ASC
)
go

/*==============================================================*/
/* Index: IX_QRelate_B                                          */
/*==============================================================*/
create index IX_QRelate_B on QuestionRelate (
BQuestionId ASC
)
go

/*==============================================================*/
/* Index: IX_SAnswer_TestId                                     */
/*==============================================================*/
create index IX_SAnswer_TestId on SelAnswer (
TestId ASC
)
go

/*==============================================================*/
/* Index: IX_SelItem_QuestionId                                 */
/*==============================================================*/
create index IX_SelItem_QuestionId on SelItem (
QuestionId ASC
)
go

/*==============================================================*/
/* Index: IX_SCredits_PaperId                                   */
/*==============================================================*/
create index IX_SCredits_PaperId on StudentCredits (
PaperId ASC
)
go

/*==============================================================*/
/* Index: IX_SCredits_CustomerGuid                              */
/*==============================================================*/
create index IX_SCredits_CustomerGuid on StudentCredits (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_SCredits_HospitalId                                */
/*==============================================================*/
create index IX_SCredits_HospitalId on StudentCredits (
HospitalId ASC
)
go

/*==============================================================*/
/* Index: IX_SCredits_STypeCode                                 */
/*==============================================================*/
create index IX_SCredits_STypeCode on StudentCredits (
StudentTypeCode ASC
)
go

/*==============================================================*/
/* Index: IX_SCredits_CreditsTime                               */
/*==============================================================*/
create index IX_SCredits_CreditsTime on StudentCredits (
CreditsTime ASC
)
go

/*==============================================================*/
/* Index: IX_SPlan_STypeCode                                    */
/*==============================================================*/
create index IX_SPlan_STypeCode on StudentPlan (
StudentTypeCode ASC
)
go

/*==============================================================*/
/* Index: IX_SPlan_BeginTime                                    */
/*==============================================================*/
create index IX_SPlan_BeginTime on StudentPlan (
BeginTime ASC
)
go

/*==============================================================*/
/* Index: IX_SPlan_EndTime                                      */
/*==============================================================*/
create index IX_SPlan_EndTime on StudentPlan (
EndTime ASC
)
go

/*==============================================================*/
/* Index: IX_TFAnswer_TestId                                    */
/*==============================================================*/
create index IX_TFAnswer_TestId on TFAnswer (
TestId ASC
)
go

/*==============================================================*/
/* Index: IX_TFItem_QuestionId                                  */
/*==============================================================*/
create index IX_TFItem_QuestionId on TFItem (
QuestionId ASC
)
go

