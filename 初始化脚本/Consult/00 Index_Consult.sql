/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2017/3/13 14:34:31                           */
/*==============================================================*/


/*==============================================================*/
/* Index: IX_AC_ServiceId                                       */
/*==============================================================*/
create index IX_AC_ServiceId on ApplyConsult
(
   ServiceId
);

/*==============================================================*/
/* Index: IX_AC_SystemMedNo                                     */
/*==============================================================*/
create index IX_AC_SystemMedNo on ApplyConsult
(
   SystemMedNo
);

/*==============================================================*/
/* Index: IX_AC_IdNumber                                        */
/*==============================================================*/
create index IX_AC_IdNumber on ApplyConsult
(
   IdNumber
);

/*==============================================================*/
/* Index: IX_AC_HealthCardNumber                                */
/*==============================================================*/
create index IX_AC_HealthCardNumber on ApplyConsult
(
   HealthCardNumber
);

/*==============================================================*/
/* Index: IX_AC_ExamineDate                                     */
/*==============================================================*/
create index IX_AC_ExamineDate on ApplyConsult
(
   ExamineDate
);

/*==============================================================*/
/* Index: IX_AC_RequestOfficeId                                 */
/*==============================================================*/
create index IX_AC_RequestOfficeId on ApplyConsult
(
   RequestOfficeId
);

/*==============================================================*/
/* Index: IX_AC_CustomerGuid                                    */
/*==============================================================*/
create index IX_AC_CustomerGuid on ApplyConsult
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_AC_RequestDate                                     */
/*==============================================================*/
create index IX_AC_RequestDate on ApplyConsult
(
   RequestDate
);

/*==============================================================*/
/* Index: IX_AC_ServiceCenterId                                 */
/*==============================================================*/
create index IX_AC_ServiceCenterId on ApplyConsult
(
   ServiceCenterId
);

/*==============================================================*/
/* Index: IX_AC_ConsultOfficeId                                 */
/*==============================================================*/
create index IX_AC_ConsultOfficeId on ApplyConsult
(
   ConsultOfficeId
);

/*==============================================================*/
/* Index: IX_AC_ConsultKindCode                                 */
/*==============================================================*/
create index IX_AC_ConsultKindCode on ApplyConsult
(
   ConsultKindCode
);

/*==============================================================*/
/* Index: IX_AC_ConsultClassCode                                */
/*==============================================================*/
create index IX_AC_ConsultClassCode on ApplyConsult
(
   ConsultClassCode
);

/*==============================================================*/
/* Index: IX_AC_KeyWord                                         */
/*==============================================================*/
create index IX_AC_KeyWord on ApplyConsult
(
   KeyWord
);

/*==============================================================*/
/* Index: IX_AC_ServiceState                                    */
/*==============================================================*/
create index IX_AC_ServiceState on ApplyConsult
(
   ServiceState
);

/*==============================================================*/
/* Index: IX_AC_TeachId                                         */
/*==============================================================*/
create index IX_AC_TeachId on ApplyConsult
(
   TeachId
);

/*==============================================================*/
/* Index: IX_AConsultP_ServiceId                                */
/*==============================================================*/
create index IX_AConsultP_ServiceId on ApplyConsultPrepare
(
   ServiceId
);

/*==============================================================*/
/* Index: IX_AConsultP_UserName                                 */
/*==============================================================*/
create index IX_AConsultP_UserName on ApplyConsultPrepare
(
   UserName
);

/*==============================================================*/
/* Index: IX_AConsultP_IsFinish                                 */
/*==============================================================*/
create index IX_AConsultP_IsFinish on ApplyConsultPrepare
(
   IsFinish
);

/*==============================================================*/
/* Index: IX_ConsultCenter_ServiceId                            */
/*==============================================================*/
create index IX_ConsultCenter_ServiceId on ConsultCenter
(
   ServiceId
);

/*==============================================================*/
/* Index: IX_ConsultDA_ServiceId                                */
/*==============================================================*/
create index IX_ConsultDA_ServiceId on ConsultDataAudit
(
   ServiceId
);

/*==============================================================*/
/* Index: IX_ConsultFee_FeeMode                                 */
/*==============================================================*/
create index IX_ConsultFee_FeeMode on ConsultFee
(
   FeeMode
);

/*==============================================================*/
/* Index: IX_ConsultFee_TitleCode                               */
/*==============================================================*/
create index IX_ConsultFee_TitleCode on ConsultFee
(
   ExpertTitleCode
);

/*==============================================================*/
/* Index: IX_ConsultFee_KindCode                                */
/*==============================================================*/
create index IX_ConsultFee_KindCode on ConsultFee
(
   ConsultKindCode
);

/*==============================================================*/
/* Index: IX_ConsultFee_ClassCode                               */
/*==============================================================*/
create index IX_ConsultFee_ClassCode on ConsultFee
(
   ConsultClassCode
);

/*==============================================================*/
/* Index: IX_ConsultFee_ServiceId                               */
/*==============================================================*/
create index IX_ConsultFee_ServiceId on ConsultFee
(
   ServiceCenterId
);

/*==============================================================*/
/* Index: IX_CFeeDetail_ServiceId                               */
/*==============================================================*/
create index IX_CFeeDetail_ServiceId on ConsultFeeDetail
(
   ServiceCenterId
);

/*==============================================================*/
/* Index: IX_CImage_ServiceId                                   */
/*==============================================================*/
create index IX_CImage_ServiceId on ConsultImage
(
   ServiceId
);

/*==============================================================*/
/* Index: IX_ConsultKeyWord_ServiceId                           */
/*==============================================================*/
create index IX_ConsultKeyWord_ServiceId on ConsultKeyWord
(
   ServiceId
);

/*==============================================================*/
/* Index: IX_ConsultP_ServiceId                                 */
/*==============================================================*/
create index IX_ConsultP_ServiceId on ConsultProcess
(
   ServiceId
);

/*==============================================================*/
/* Index: IX_DEvaluation_ServiceId                              */
/*==============================================================*/
create index IX_DEvaluation_ServiceId on DiagnosisEvaluation
(
   ServiceId
);

/*==============================================================*/
/* Index: IX_DEvaluation_CustomerGuid                           */
/*==============================================================*/
create index IX_DEvaluation_CustomerGuid on DiagnosisEvaluation
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_DEvaluation_AdviceDate                             */
/*==============================================================*/
create index IX_DEvaluation_AdviceDate on DiagnosisEvaluation
(
   AdviceDate
);

/*==============================================================*/
/* Index: IX_DReply_ServiceId                                   */
/*==============================================================*/
create index IX_DReply_ServiceId on DiagnosisReply
(
   ServiceId
);

/*==============================================================*/
/* Index: IX_DReply_CustomerGuid                                */
/*==============================================================*/
create index IX_DReply_CustomerGuid on DiagnosisReply
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_DReply_State                                       */
/*==============================================================*/
create index IX_DReply_State on DiagnosisReply
(
   State
);

/*==============================================================*/
/* Index: IX_DReply_ServiceCenterId                             */
/*==============================================================*/
create index IX_DReply_ServiceCenterId on DiagnosisReply
(
   ServiceCenterId
);

/*==============================================================*/
/* Index: IX_ExamineDesc_ExamineType                            */
/*==============================================================*/
create index IX_ExamineDesc_ExamineType on ExamineDesc
(
   ExamineType
);

/*==============================================================*/
/* Index: IX_EEvaluation_ServiceId                              */
/*==============================================================*/
create index IX_EEvaluation_ServiceId on ExpertEvaluation
(
   ServiceId
);

/*==============================================================*/
/* Index: IX_EEvaluation_ExpertrGuid                            */
/*==============================================================*/
create index IX_EEvaluation_ExpertrGuid on ExpertEvaluation
(
   ExpertGuid
);

/*==============================================================*/
/* Index: IX_EEvaluation_CustomerGuid                           */
/*==============================================================*/
create index IX_EEvaluation_CustomerGuid on ExpertEvaluation
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_MConsultFee_KindCode                               */
/*==============================================================*/
create index IX_MConsultFee_KindCode on MedicalConsultFee
(
   ConsultKindCode
);

/*==============================================================*/
/* Index: IX_MConsultFee_ExamineType                            */
/*==============================================================*/
create index IX_MConsultFee_ExamineType on MedicalConsultFee
(
   ExamineType
);

/*==============================================================*/
/* Index: IX_MConsultFee_ServiceId                              */
/*==============================================================*/
create index IX_MConsultFee_ServiceId on MedicalConsultFee
(
   ServiceCenterId
);

