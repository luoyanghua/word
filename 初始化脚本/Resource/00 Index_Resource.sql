/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2017/10/10 14:59:01                          */
/*==============================================================*/


/*==============================================================*/
/* Index: IX_AAnswer_TestId                                     */
/*==============================================================*/
create index IX_AAnswer_TestId on AskAnswer
(
   TestId
);

/*==============================================================*/
/* Index: IX_AskItem_QuestionId                                 */
/*==============================================================*/
create index IX_AskItem_QuestionId on AskItem
(
   QuestionId
);

/*==============================================================*/
/* Index: IX_FAnswer_TestId                                     */
/*==============================================================*/
create index IX_FAnswer_TestId on FillAnswer
(
   TestId
);

/*==============================================================*/
/* Index: IX_FillItem_QuestionId                                */
/*==============================================================*/
create index IX_FillItem_QuestionId on FillItem
(
   QuestionId
);

/*==============================================================*/
/* Index: IX_FIAnswer_TestId                                    */
/*==============================================================*/
create index IX_FIAnswer_TestId on FillItemAnswer
(
   TestId
);

/*==============================================================*/
/* Index: IX_Paper_PaperKind                                    */
/*==============================================================*/
create index IX_Paper_PaperKind on Paper
(
   PaperKind
);

/*==============================================================*/
/* Index: IX_Paper_PaperTypeCode                                */
/*==============================================================*/
create index IX_Paper_PaperTypeCode on Paper
(
   PaperTypeCode
);

/*==============================================================*/
/* Index: IX_Paper_PaperName                                    */
/*==============================================================*/
create index IX_Paper_PaperName on Paper
(
   PaperName
);

/*==============================================================*/
/* Index: IX_Paper_KeyWord                                      */
/*==============================================================*/
create index IX_Paper_KeyWord on Paper
(
   KeyWord
);

/*==============================================================*/
/* Index: IX_Paper_CustomerGuid                                 */
/*==============================================================*/
create index IX_Paper_CustomerGuid on Paper
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_Paper_CreateTime                                   */
/*==============================================================*/
create index IX_Paper_CreateTime on Paper
(
   CreateTime
);

/*==============================================================*/
/* Index: IX_PAnswer_PaperId                                    */
/*==============================================================*/
create index IX_PAnswer_PaperId on PaperAnswer
(
   PaperId
);

/*==============================================================*/
/* Index: IX_PAnswer_CustomerGuid                               */
/*==============================================================*/
create index IX_PAnswer_CustomerGuid on PaperAnswer
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_PHistory_TestId                                    */
/*==============================================================*/
create index IX_PHistory_TestId on PaperHistory
(
   TestId
);

/*==============================================================*/
/* Index: IX_PaperQ_PaperId                                     */
/*==============================================================*/
create index IX_PaperQ_PaperId on PaperQuestion
(
   PaperId
);

/*==============================================================*/
/* Index: IX_PStudent_PaperId                                   */
/*==============================================================*/
create index IX_PStudent_PaperId on PaperStudent
(
   PaperId
);

/*==============================================================*/
/* Index: IX_Question_QType                                     */
/*==============================================================*/
create index IX_Question_QType on Question
(
   QuestionType
);

/*==============================================================*/
/* Index: IX_Question_KeyWord                                   */
/*==============================================================*/
create index IX_Question_KeyWord on Question
(
   KeyWord
);

/*==============================================================*/
/* Index: IX_Question_CustomerGuid                              */
/*==============================================================*/
create index IX_Question_CustomerGuid on Question
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_QRelate_A                                          */
/*==============================================================*/
create index IX_QRelate_A on QuestionRelate
(
   AQuestionId
);

/*==============================================================*/
/* Index: IX_QRelate_B                                          */
/*==============================================================*/
create index IX_QRelate_B on QuestionRelate
(
   BQuestionId
);

/*==============================================================*/
/* Index: IX_SAnswer_TestId                                     */
/*==============================================================*/
create index IX_SAnswer_TestId on SelAnswer
(
   TestId
);

/*==============================================================*/
/* Index: IX_SelItem_QuestionId                                 */
/*==============================================================*/
create index IX_SelItem_QuestionId on SelItem
(
   QuestionId
);

/*==============================================================*/
/* Index: IX_SCredits_PaperId                                   */
/*==============================================================*/
create index IX_SCredits_PaperId on StudentCredits
(
   PaperId
);

/*==============================================================*/
/* Index: IX_SCredits_CustomerGuid                              */
/*==============================================================*/
create index IX_SCredits_CustomerGuid on StudentCredits
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_SCredits_HospitalId                                */
/*==============================================================*/
create index IX_SCredits_HospitalId on StudentCredits
(
   HospitalId
);

/*==============================================================*/
/* Index: IX_SCredits_STypeCode                                 */
/*==============================================================*/
create index IX_SCredits_STypeCode on StudentCredits
(
   StudentTypeCode
);

/*==============================================================*/
/* Index: IX_SCredits_CreditsTime                               */
/*==============================================================*/
create index IX_SCredits_CreditsTime on StudentCredits
(
   CreditsTime
);

/*==============================================================*/
/* Index: IX_SPlan_STypeCode                                    */
/*==============================================================*/
create index IX_SPlan_STypeCode on StudentPlan
(
   StudentTypeCode
);

/*==============================================================*/
/* Index: IX_SPlan_BeginTime                                    */
/*==============================================================*/
create index IX_SPlan_BeginTime on StudentPlan
(
   BeginTime
);

/*==============================================================*/
/* Index: IX_SPlan_EndTime                                      */
/*==============================================================*/
create index IX_SPlan_EndTime on StudentPlan
(
   EndTime
);

/*==============================================================*/
/* Index: IX_TFAnswer_TestId                                    */
/*==============================================================*/
create index IX_TFAnswer_TestId on TFAnswer
(
   TestId
);

/*==============================================================*/
/* Index: IX_TFItem_QuestionId                                  */
/*==============================================================*/
create index IX_TFItem_QuestionId on TFItem
(
   QuestionId
);

