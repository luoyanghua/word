/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2000                    */
/* Created on:     2017/10/10 14:31:44                          */
/*==============================================================*/


/*==============================================================*/
/* Index: IX_AC_ServiceId                                       */
/*==============================================================*/
create index IX_AC_ServiceId on ApplyConsult (
ServiceId ASC
)
go

/*==============================================================*/
/* Index: IX_AC_SystemMedNo                                     */
/*==============================================================*/
create index IX_AC_SystemMedNo on ApplyConsult (
SystemMedNo ASC
)
go

/*==============================================================*/
/* Index: IX_AC_IdNumber                                        */
/*==============================================================*/
create index IX_AC_IdNumber on ApplyConsult (
IdNumber ASC
)
go

/*==============================================================*/
/* Index: IX_AC_HealthCardNumber                                */
/*==============================================================*/
create index IX_AC_HealthCardNumber on ApplyConsult (
HealthCardNumber ASC
)
go

/*==============================================================*/
/* Index: IX_AC_ExamineDate                                     */
/*==============================================================*/
create index IX_AC_ExamineDate on ApplyConsult (
ExamineDate ASC
)
go

/*==============================================================*/
/* Index: IX_AC_RequestOfficeId                                 */
/*==============================================================*/
create index IX_AC_RequestOfficeId on ApplyConsult (
RequestOfficeId ASC
)
go

/*==============================================================*/
/* Index: IX_AC_CustomerGuid                                    */
/*==============================================================*/
create index IX_AC_CustomerGuid on ApplyConsult (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_AC_RequestDate                                     */
/*==============================================================*/
create index IX_AC_RequestDate on ApplyConsult (
RequestDate ASC
)
go

/*==============================================================*/
/* Index: IX_AC_ServiceCenterId                                 */
/*==============================================================*/
create index IX_AC_ServiceCenterId on ApplyConsult (
ServiceCenterId ASC
)
go

/*==============================================================*/
/* Index: IX_AC_ConsultOfficeId                                 */
/*==============================================================*/
create index IX_AC_ConsultOfficeId on ApplyConsult (
ConsultOfficeId ASC
)
go

/*==============================================================*/
/* Index: IX_AC_ConsultKindCode                                 */
/*==============================================================*/
create index IX_AC_ConsultKindCode on ApplyConsult (
ConsultKindCode ASC
)
go

/*==============================================================*/
/* Index: IX_AC_ConsultClassCode                                */
/*==============================================================*/
create index IX_AC_ConsultClassCode on ApplyConsult (
ConsultClassCode ASC
)
go

/*==============================================================*/
/* Index: IX_AC_KeyWord                                         */
/*==============================================================*/
create index IX_AC_KeyWord on ApplyConsult (
KeyWord ASC
)
go

/*==============================================================*/
/* Index: IX_AC_ServiceState                                    */
/*==============================================================*/
create index IX_AC_ServiceState on ApplyConsult (
ServiceState ASC
)
go

/*==============================================================*/
/* Index: IX_AC_TeachId                                         */
/*==============================================================*/
create index IX_AC_TeachId on ApplyConsult (
TeachId ASC
)
go

/*==============================================================*/
/* Index: IX_AConsultP_ServiceId                                */
/*==============================================================*/
create index IX_AConsultP_ServiceId on ApplyConsultPrepare (
ServiceId ASC
)
go

/*==============================================================*/
/* Index: IX_AConsultP_UserName                                 */
/*==============================================================*/
create index IX_AConsultP_UserName on ApplyConsultPrepare (
UserName ASC
)
go

/*==============================================================*/
/* Index: IX_AConsultP_IsFinish                                 */
/*==============================================================*/
create index IX_AConsultP_IsFinish on ApplyConsultPrepare (
IsFinish ASC
)
go

/*==============================================================*/
/* Index: IX_ConsultCenter_ServiceId                            */
/*==============================================================*/
create index IX_ConsultCenter_ServiceId on ConsultCenter (
ServiceId ASC
)
go

/*==============================================================*/
/* Index: IX_ConsultDA_ServiceId                                */
/*==============================================================*/
create index IX_ConsultDA_ServiceId on ConsultDataAudit (
ServiceId ASC
)
go

/*==============================================================*/
/* Index: IX_ConsultFee_FeeMode                                 */
/*==============================================================*/
create index IX_ConsultFee_FeeMode on ConsultFee (
FeeMode ASC
)
go

/*==============================================================*/
/* Index: IX_ConsultFee_TitleCode                               */
/*==============================================================*/
create index IX_ConsultFee_TitleCode on ConsultFee (
ExpertTitleCode ASC
)
go

/*==============================================================*/
/* Index: IX_ConsultFee_KindCode                                */
/*==============================================================*/
create index IX_ConsultFee_KindCode on ConsultFee (
ConsultKindCode ASC
)
go

/*==============================================================*/
/* Index: IX_ConsultFee_ClassCode                               */
/*==============================================================*/
create index IX_ConsultFee_ClassCode on ConsultFee (
ConsultClassCode ASC
)
go

/*==============================================================*/
/* Index: IX_ConsultFee_ServiceId                               */
/*==============================================================*/
create index IX_ConsultFee_ServiceId on ConsultFee (
ServiceCenterId ASC
)
go

/*==============================================================*/
/* Index: IX_CFeeDetail_ServiceId                               */
/*==============================================================*/
create index IX_CFeeDetail_ServiceId on ConsultFeeDetail (
ServiceCenterId ASC
)
go

/*==============================================================*/
/* Index: IX_CImage_ServiceId                                   */
/*==============================================================*/
create index IX_CImage_ServiceId on ConsultImage (
ServiceId ASC
)
go

/*==============================================================*/
/* Index: IX_ConsultKeyWord_ServiceId                           */
/*==============================================================*/
create index IX_ConsultKeyWord_ServiceId on ConsultKeyWord (
ServiceId ASC
)
go

/*==============================================================*/
/* Index: IX_ConsultP_ServiceId                                 */
/*==============================================================*/
create index IX_ConsultP_ServiceId on ConsultProcess (
ServiceId ASC
)
go

/*==============================================================*/
/* Index: IX_DEvaluation_ServiceId                              */
/*==============================================================*/
create index IX_DEvaluation_ServiceId on DiagnosisEvaluation (
ServiceId ASC
)
go

/*==============================================================*/
/* Index: IX_DEvaluation_CustomerGuid                           */
/*==============================================================*/
create index IX_DEvaluation_CustomerGuid on DiagnosisEvaluation (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_DEvaluation_AdviceDate                             */
/*==============================================================*/
create index IX_DEvaluation_AdviceDate on DiagnosisEvaluation (
AdviceDate ASC
)
go

/*==============================================================*/
/* Index: IX_DReply_ServiceId                                   */
/*==============================================================*/
create index IX_DReply_ServiceId on DiagnosisReply (
ServiceId ASC
)
go

/*==============================================================*/
/* Index: IX_DReply_CustomerGuid                                */
/*==============================================================*/
create index IX_DReply_CustomerGuid on DiagnosisReply (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_DReply_State                                       */
/*==============================================================*/
create index IX_DReply_State on DiagnosisReply (
State ASC
)
go

/*==============================================================*/
/* Index: IX_DReply_ServiceCenterId                             */
/*==============================================================*/
create index IX_DReply_ServiceCenterId on DiagnosisReply (
ServiceCenterId ASC
)
go

/*==============================================================*/
/* Index: IX_ExamineDesc_ExamineType                            */
/*==============================================================*/
create index IX_ExamineDesc_ExamineType on ExamineDesc (
ExamineType ASC
)
go

/*==============================================================*/
/* Index: IX_EEvaluation_ServiceId                              */
/*==============================================================*/
create index IX_EEvaluation_ServiceId on ExpertEvaluation (
ServiceId ASC
)
go

/*==============================================================*/
/* Index: IX_EEvaluation_ExpertrGuid                            */
/*==============================================================*/
create index IX_EEvaluation_ExpertrGuid on ExpertEvaluation (
ExpertGuid ASC
)
go

/*==============================================================*/
/* Index: IX_EEvaluation_CustomerGuid                           */
/*==============================================================*/
create index IX_EEvaluation_CustomerGuid on ExpertEvaluation (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_MConsultFee_KindCode                               */
/*==============================================================*/
create index IX_MConsultFee_KindCode on MedicalConsultFee (
ConsultKindCode ASC
)
go

/*==============================================================*/
/* Index: IX_MConsultFee_ExamineType                            */
/*==============================================================*/
create index IX_MConsultFee_ExamineType on MedicalConsultFee (
ExamineType ASC
)
go

/*==============================================================*/
/* Index: IX_MConsultFee_ServiceId                              */
/*==============================================================*/
create index IX_MConsultFee_ServiceId on MedicalConsultFee (
ServiceCenterId ASC
)
go

