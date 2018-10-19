/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2017/12/11 14:22:12                          */
/*==============================================================*/


/*==============================================================*/
/* Index: IX_CFB_CorrectiveId                                   */
/*==============================================================*/
create index IX_CFB_CorrectiveId on CorrectiveFeedBack
(
   CorrectiveId
);

/*==============================================================*/
/* Index: IX_CFB_FCustomerGuid                                  */
/*==============================================================*/
create index IX_CFB_FCustomerGuid on CorrectiveFeedBack
(
   FeedCustomerGuid
);

/*==============================================================*/
/* Index: IX_CFB_FeedTime                                       */
/*==============================================================*/
create index IX_CFB_FeedTime on CorrectiveFeedBack
(
   FeedTime
);

/*==============================================================*/
/* Index: IX_CFB_FeedState                                      */
/*==============================================================*/
create index IX_CFB_FeedState on CorrectiveFeedBack
(
   FeedState
);

/*==============================================================*/
/* Index: IX_E_HospitalCode                                     */
/*==============================================================*/
create index IX_E_HospitalCode on Equipment
(
   HospitalCode
);

/*==============================================================*/
/* Index: IX_EM_HospitalCode                                    */
/*==============================================================*/
create index IX_EM_HospitalCode on EquipmentMaintain
(
   HospitalCode
);

/*==============================================================*/
/* Index: IX_EM_Sysconfig                                       */
/*==============================================================*/
create index IX_EM_Sysconfig on EquipmentMaintain
(
   Sysconfig
);

/*==============================================================*/
/* Index: IX_EM_Office                                          */
/*==============================================================*/
create index IX_EM_Office on EquipmentMaintain
(
   Office
);

/*==============================================================*/
/* Index: IX_EG_TaskId                                          */
/*==============================================================*/
create index IX_EG_TaskId on ExaminationGrade
(
   TaskId
);

/*==============================================================*/
/* Index: IX_EG_MemberGuid                                      */
/*==============================================================*/
create index IX_EG_MemberGuid on ExaminationGrade
(
   MemberGuid
);

/*==============================================================*/
/* Index: IX_EG_Mode                                            */
/*==============================================================*/
create index IX_EG_Mode on ExaminationGrade
(
   Mode
);

/*==============================================================*/
/* Index: IX_EG_ExamIndex                                       */
/*==============================================================*/
create index IX_EG_ExamIndex on ExaminationGrade
(
   ExamIndex
);

/*==============================================================*/
/* Index: IX_EG_AccessionNumber                                 */
/*==============================================================*/
create index IX_EG_AccessionNumber on ExaminationGrade
(
   AccessionNumber
);

/*==============================================================*/
/* Index: IX_EG_ExamineType                                     */
/*==============================================================*/
create index IX_EG_ExamineType on ExaminationGrade
(
   ExamineType
);

/*==============================================================*/
/* Index: IX_EG_HospitalCode                                    */
/*==============================================================*/
create index IX_EG_HospitalCode on ExaminationGrade
(
   HospitalCode
);

/*==============================================================*/
/* Index: IX_EG_GradeTime                                       */
/*==============================================================*/
create index IX_EG_GradeTime on ExaminationGrade
(
   GradeTime
);

/*==============================================================*/
/* Index: IX_EG_Level                                           */
/*==============================================================*/
create index IX_EG_Level on ExaminationGrade
(
   Level
);

/*==============================================================*/
/* Index: IX_EG_TemplateCode                                    */
/*==============================================================*/
create index IX_EG_TemplateCode on ExaminationGrade
(
   TemplateCode
);

/*==============================================================*/
/* Index: IX_EG_QualityCode                                     */
/*==============================================================*/
create index IX_EG_QualityCode on ExaminationGrade
(
   QualityCode
);

/*==============================================================*/
/* Index: IX_EIG_TaskId                                         */
/*==============================================================*/
create index IX_EIG_TaskId on ExaminationItemGrade
(
   TaskId
);

/*==============================================================*/
/* Index: IX_EIG_MemberGuid                                     */
/*==============================================================*/
create index IX_EIG_MemberGuid on ExaminationItemGrade
(
   MemberGuid
);

/*==============================================================*/
/* Index: IX_EIG_Mode                                           */
/*==============================================================*/
create index IX_EIG_Mode on ExaminationItemGrade
(
   Mode
);

/*==============================================================*/
/* Index: IX_EIG_ExamIndex                                      */
/*==============================================================*/
create index IX_EIG_ExamIndex on ExaminationItemGrade
(
   ExamIndex
);

/*==============================================================*/
/* Index: IX_EIG_AccessionNumber                                */
/*==============================================================*/
create index IX_EIG_AccessionNumber on ExaminationItemGrade
(
   AccessionNumber
);

/*==============================================================*/
/* Index: IX_EIG_QcCode                                         */
/*==============================================================*/
create index IX_EIG_QcCode on ExaminationItemGrade
(
   QcCode
);

/*==============================================================*/
/* Index: IX_EIG_ExamineType                                    */
/*==============================================================*/
create index IX_EIG_ExamineType on ExaminationItemGrade
(
   ExamineType
);

/*==============================================================*/
/* Index: IX_EIG_HospitalCode                                   */
/*==============================================================*/
create index IX_EIG_HospitalCode on ExaminationItemGrade
(
   HospitalCode
);

/*==============================================================*/
/* Index: IX_EIG_Level                                          */
/*==============================================================*/
create index IX_EIG_Level on ExaminationItemGrade
(
   Level
);

/*==============================================================*/
/* Index: IX_ELG_TaskId                                         */
/*==============================================================*/
create index IX_ELG_TaskId on ExaminationLowerGrade
(
   TaskId
);

/*==============================================================*/
/* Index: IX_ELG_MemberGuid                                     */
/*==============================================================*/
create index IX_ELG_MemberGuid on ExaminationLowerGrade
(
   MemberGuid
);

/*==============================================================*/
/* Index: IX_ELG_Mode                                           */
/*==============================================================*/
create index IX_ELG_Mode on ExaminationLowerGrade
(
   Mode
);

/*==============================================================*/
/* Index: IX_ELG_ExamIndex                                      */
/*==============================================================*/
create index IX_ELG_ExamIndex on ExaminationLowerGrade
(
   ExamIndex
);

/*==============================================================*/
/* Index: IX_ELG_AccessionNumber                                */
/*==============================================================*/
create index IX_ELG_AccessionNumber on ExaminationLowerGrade
(
   AccessionNumber
);

/*==============================================================*/
/* Index: IX_ELG_ExamineType                                    */
/*==============================================================*/
create index IX_ELG_ExamineType on ExaminationLowerGrade
(
   ExamineType
);

/*==============================================================*/
/* Index: IX_ELG_HospitalCode                                   */
/*==============================================================*/
create index IX_ELG_HospitalCode on ExaminationLowerGrade
(
   HospitalCode
);

/*==============================================================*/
/* Index: IX_ELG_ItemName                                       */
/*==============================================================*/
create index IX_ELG_ItemName on ExaminationLowerGrade
(
   ItemName
);

/*==============================================================*/
/* Index: IX_ELG_QcCode                                         */
/*==============================================================*/
create index IX_ELG_QcCode on ExaminationLowerGrade
(
   QcCode
);

/*==============================================================*/
/* Index: IX_GP_TaskId                                          */
/*==============================================================*/
create index IX_GP_TaskId on GradePic
(
   TaskId
);

/*==============================================================*/
/* Index: IX_GP_ExamIndex                                       */
/*==============================================================*/
create index IX_GP_ExamIndex on GradePic
(
   ExamIndex
);

/*==============================================================*/
/* Index: IX_GP_AccessionNumber                                 */
/*==============================================================*/
create index IX_GP_AccessionNumber on GradePic
(
   AccessionNumber
);

/*==============================================================*/
/* Index: IX_GP_GradeId                                         */
/*==============================================================*/
create index IX_GP_GradeId on GradePic
(
   GradeId
);

/*==============================================================*/
/* Index: IX_GP_ItemName                                        */
/*==============================================================*/
create index IX_GP_ItemName on GradePic
(
   ItemName
);

/*==============================================================*/
/* Index: IX_GR_ResultId                                        */
/*==============================================================*/
create index IX_GR_ResultId on GradeResult
(
   ResultId
);

/*==============================================================*/
/* Index: IX_GR_TaskId                                          */
/*==============================================================*/
create index IX_GR_TaskId on GradeResult
(
   TaskId
);

/*==============================================================*/
/* Index: IX_GR_MemberGuid                                      */
/*==============================================================*/
create index IX_GR_MemberGuid on GradeResult
(
   MemberGuid
);

/*==============================================================*/
/* Index: IX_GR_HospitalCode                                    */
/*==============================================================*/
create index IX_GR_HospitalCode on GradeResult
(
   HospitalCode
);

/*==============================================================*/
/* Index: IX_GR_GradeTime                                       */
/*==============================================================*/
create index IX_GR_GradeTime on GradeResult
(
   GradeTime
);

/*==============================================================*/
/* Index: IX_GRtC_CorrectiveId                                  */
/*==============================================================*/
create index IX_GRtC_CorrectiveId on GradeResultCorrective
(
   CorrectiveId
);

/*==============================================================*/
/* Index: IX_GRtC_ResultId                                      */
/*==============================================================*/
create index IX_GRtC_ResultId on GradeResultCorrective
(
   ResultId
);

/*==============================================================*/
/* Index: IX_GRtC_HospitalCode                                  */
/*==============================================================*/
create index IX_GRtC_HospitalCode on GradeResultCorrective
(
   HospitalCode
);

/*==============================================================*/
/* Index: IX_GRtC_CorrectiveTime                                */
/*==============================================================*/
create index IX_GRtC_CorrectiveTime on GradeResultCorrective
(
   CorrectiveTime
);

/*==============================================================*/
/* Index: IX_P_HospitalCode                                     */
/*==============================================================*/
create index IX_P_HospitalCode on Person
(
   HospitalCode
);

/*==============================================================*/
/* Index: IX_QCH_StrategyId                                     */
/*==============================================================*/
create index IX_QCH_StrategyId on QualityCheckHospital
(
   StrategyId
);

/*==============================================================*/
/* Index: IX_QCH_HospitalCode                                   */
/*==============================================================*/
create index IX_QCH_HospitalCode on QualityCheckHospital
(
   HospitalCode
);

/*==============================================================*/
/* Index: IX_QCH_CheckTime                                      */
/*==============================================================*/
create index IX_QCH_CheckTime on QualityCheckHospital
(
   CheckTime
);

/*==============================================================*/
/* Index: IX_QCM_EquipmentId                                    */
/*==============================================================*/
create index IX_QCM_EquipmentId on QualityCheckMedia
(
   EquipmentId
);

/*==============================================================*/
/* Index: IX_QCM_PersonId                                       */
/*==============================================================*/
create index IX_QCM_PersonId on QualityCheckMedia
(
   PersonId
);

/*==============================================================*/
/* Index: IX_QCM_Kind                                           */
/*==============================================================*/
create index IX_QCM_Kind on QualityCheckMedia
(
   Kind
);

/*==============================================================*/
/* Index: IX_QCM_UploadTime                                     */
/*==============================================================*/
create index IX_QCM_UploadTime on QualityCheckMedia
(
   UploadTime
);

/*==============================================================*/
/* Index: IX_QCM_HospitalCode                                   */
/*==============================================================*/
create index IX_QCM_HospitalCode on QualityCheckMedia
(
   HospitalCode
);

/*==============================================================*/
/* Index: IX_QCO_StrategyId                                     */
/*==============================================================*/
create index IX_QCO_StrategyId on QualityCheckOther
(
   StrategyId
);

/*==============================================================*/
/* Index: IX_QCO_HospitalLevelCode                              */
/*==============================================================*/
create index IX_QCO_HospitalLevelCode on QualityCheckOther
(
   HospitalLevelCode
);

/*==============================================================*/
/* Index: IX_QCS_StrategyId                                     */
/*==============================================================*/
create index IX_QCS_StrategyId on QualityCheckStrategy
(
   StrategyId
);

/*==============================================================*/
/* Index: IX_QCS_MemberGuid                                     */
/*==============================================================*/
create index IX_QCS_MemberGuid on QualityCheckStrategy
(
   MemberGuid
);

/*==============================================================*/
/* Index: IX_QET_QualityCode                                    */
/*==============================================================*/
create index IX_QET_QualityCode on QualityExamineType
(
   QualityCode
);

/*==============================================================*/
/* Index: IX_QGR_TaskId                                         */
/*==============================================================*/
create index IX_QGR_TaskId on QualityGradeRecord
(
   TaskId
);

/*==============================================================*/
/* Index: IX_QGR_MemberGuid                                     */
/*==============================================================*/
create index IX_QGR_MemberGuid on QualityGradeRecord
(
   MemberGuid
);

/*==============================================================*/
/* Index: IX_QN_TaskId                                          */
/*==============================================================*/
create index IX_QN_TaskId on QualityNotice
(
   TaskId
);

/*==============================================================*/
/* Index: IX_QN_Kind                                            */
/*==============================================================*/
create index IX_QN_Kind on QualityNotice
(
   Kind
);

/*==============================================================*/
/* Index: IX_QN_RCustomerGuid                                   */
/*==============================================================*/
create index IX_QN_RCustomerGuid on QualityNotice
(
   ReceiveCustomerGuid
);

/*==============================================================*/
/* Index: IX_QSC_QualityCode                                    */
/*==============================================================*/
create index IX_QSC_QualityCode on QualitySysConfig
(
   QualityCode
);

/*==============================================================*/
/* Index: IX_QT_TaskId                                          */
/*==============================================================*/
create index IX_QT_TaskId on QualityTask
(
   TaskId
);

/*==============================================================*/
/* Index: IX_QT_QCenterId                                       */
/*==============================================================*/
create index IX_QT_QCenterId on QualityTask
(
   QualityCenterId
);

/*==============================================================*/
/* Index: IX_QT_Kind                                            */
/*==============================================================*/
create index IX_QT_Kind on QualityTask
(
   Kind
);

/*==============================================================*/
/* Index: IX_QT_GradeKind                                       */
/*==============================================================*/
create index IX_QT_GradeKind on QualityTask
(
   GradeKind
);

/*==============================================================*/
/* Index: IX_QT_Mode                                            */
/*==============================================================*/
create index IX_QT_Mode on QualityTask
(
   Mode
);

/*==============================================================*/
/* Index: IX_QT_QGroupId                                        */
/*==============================================================*/
create index IX_QT_QGroupId on QualityTask
(
   QualityGroupId
);

/*==============================================================*/
/* Index: IX_QT_StartDate                                       */
/*==============================================================*/
create index IX_QT_StartDate on QualityTask
(
   StartDate
);

/*==============================================================*/
/* Index: IX_QT_CustomerGuid                                    */
/*==============================================================*/
create index IX_QT_CustomerGuid on QualityTask
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_QT_State                                           */
/*==============================================================*/
create index IX_QT_State on QualityTask
(
   State
);

/*==============================================================*/
/* Index: IX_QT_QualityCenterId                                 */
/*==============================================================*/
create index IX_QT_QualityCenterId on QualityTemplate
(
   QualityCenterId
);

/*==============================================================*/
/* Index: IX_QT_TemplateCode                                    */
/*==============================================================*/
create index IX_QT_TemplateCode on QualityTemplate
(
   TemplateCode
);

/*==============================================================*/
/* Index: IX_QT_QualityCode                                     */
/*==============================================================*/
create index IX_QT_QualityCode on QualityTemplate
(
   QualityCode
);

/*==============================================================*/
/* Index: IX_QT_IsDefault                                       */
/*==============================================================*/
create index IX_QT_IsDefault on QualityTemplate
(
   IsDefault
);

/*==============================================================*/
/* Index: IX_QT_IsUse                                           */
/*==============================================================*/
create index IX_QT_IsUse on QualityTemplate
(
   IsUse
);

/*==============================================================*/
/* Index: IX_QM_TaskId                                          */
/*==============================================================*/
create index IX_QM_TaskId on QuatityMember
(
   TaskId
);

/*==============================================================*/
/* Index: IX_QM_TaskKind                                        */
/*==============================================================*/
create index IX_QM_TaskKind on QuatityMember
(
   TaskKind
);

/*==============================================================*/
/* Index: IX_QM_MemberGuid                                      */
/*==============================================================*/
create index IX_QM_MemberGuid on QuatityMember
(
   MemberGuid
);

/*==============================================================*/
/* Index: IX_QM_QCenterId                                       */
/*==============================================================*/
create index IX_QM_QCenterId on QuatityMember
(
   QualityCenterId
);

/*==============================================================*/
/* Index: IX_TE_ExtractTaskId                                   */
/*==============================================================*/
create index IX_TE_ExtractTaskId on TaskExamination
(
   ExtractTaskId
);

/*==============================================================*/
/* Index: IX_TE_TaskId                                          */
/*==============================================================*/
create index IX_TE_TaskId on TaskExamination
(
   TaskId
);

/*==============================================================*/
/* Index: IX_TE_ExamineType                                     */
/*==============================================================*/
create index IX_TE_ExamineType on TaskExamination
(
   ExamineType
);

/*==============================================================*/
/* Index: IX_TE_ExamineItem                                     */
/*==============================================================*/
create index IX_TE_ExamineItem on TaskExamination
(
   ExamineItem
);

/*==============================================================*/
/* Index: IX_TE_HospitalCode                                    */
/*==============================================================*/
create index IX_TE_HospitalCode on TaskExamination
(
   HospitalCode
);

/*==============================================================*/
/* Index: IX_TE_PerformTime                                     */
/*==============================================================*/
create index IX_TE_PerformTime on TaskExamination
(
   PerformTime
);

/*==============================================================*/
/* Index: IX_TG_TaskId                                          */
/*==============================================================*/
create index IX_TG_TaskId on TaskGroup
(
   TaskId
);

/*==============================================================*/
/* Index: IX_TGE_GroupId                                        */
/*==============================================================*/
create index IX_TGE_GroupId on TaskGroupExamination
(
   GroupId
);

/*==============================================================*/
/* Index: IX_TGH_GroupId                                        */
/*==============================================================*/
create index IX_TGH_GroupId on TaskGroupHospital
(
   GroupId
);

/*==============================================================*/
/* Index: IX_TGM_GroupId                                        */
/*==============================================================*/
create index IX_TGM_GroupId on TaskGroupMember
(
   GroupId
);

/*==============================================================*/
/* Index: IX_TR_ETaskId                                         */
/*==============================================================*/
create index IX_TR_ETaskId on TaskRecord
(
   ExtractTaskId
);

/*==============================================================*/
/* Index: IX_TR_TaskId                                          */
/*==============================================================*/
create index IX_TR_TaskId on TaskRecord
(
   TaskId
);

/*==============================================================*/
/* Index: IX_TR_Mode                                            */
/*==============================================================*/
create index IX_TR_Mode on TaskRecord
(
   Mode
);

/*==============================================================*/
/* Index: IX_VEN_TaskId                                         */
/*==============================================================*/
create index IX_VEN_TaskId on VideoExaminationNow
(
   TaskId
);

