/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2000                    */
/* Created on:     2017/12/11 14:20:59                          */
/*==============================================================*/


/*==============================================================*/
/* Index: IX_CFB_CorrectiveId                                   */
/*==============================================================*/
create index IX_CFB_CorrectiveId on CorrectiveFeedBack (
CorrectiveId ASC
)
go

/*==============================================================*/
/* Index: IX_CFB_FCustomerGuid                                  */
/*==============================================================*/
create index IX_CFB_FCustomerGuid on CorrectiveFeedBack (
FeedCustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_CFB_FeedTime                                       */
/*==============================================================*/
create index IX_CFB_FeedTime on CorrectiveFeedBack (
FeedTime ASC
)
go

/*==============================================================*/
/* Index: IX_CFB_FeedState                                      */
/*==============================================================*/
create index IX_CFB_FeedState on CorrectiveFeedBack (
FeedState ASC
)
go

/*==============================================================*/
/* Index: IX_E_HospitalCode                                     */
/*==============================================================*/
create index IX_E_HospitalCode on Equipment (
HospitalCode ASC
)
go

/*==============================================================*/
/* Index: IX_EM_HospitalCode                                    */
/*==============================================================*/
create index IX_EM_HospitalCode on EquipmentMaintain (
HospitalCode ASC
)
go

/*==============================================================*/
/* Index: IX_EM_Sysconfig                                       */
/*==============================================================*/
create index IX_EM_Sysconfig on EquipmentMaintain (
Sysconfig ASC
)
go

/*==============================================================*/
/* Index: IX_EM_Office                                          */
/*==============================================================*/
create index IX_EM_Office on EquipmentMaintain (
Office ASC
)
go

/*==============================================================*/
/* Index: IX_EG_TaskId                                          */
/*==============================================================*/
create index IX_EG_TaskId on ExaminationGrade (
TaskId ASC
)
go

/*==============================================================*/
/* Index: IX_EG_MemberGuid                                      */
/*==============================================================*/
create index IX_EG_MemberGuid on ExaminationGrade (
MemberGuid ASC
)
go

/*==============================================================*/
/* Index: IX_EG_Mode                                            */
/*==============================================================*/
create index IX_EG_Mode on ExaminationGrade (
Mode ASC
)
go

/*==============================================================*/
/* Index: IX_EG_ExamIndex                                       */
/*==============================================================*/
create index IX_EG_ExamIndex on ExaminationGrade (
ExamIndex ASC
)
go

/*==============================================================*/
/* Index: IX_EG_AccessionNumber                                 */
/*==============================================================*/
create index IX_EG_AccessionNumber on ExaminationGrade (
AccessionNumber ASC
)
go

/*==============================================================*/
/* Index: IX_EG_ExamineType                                     */
/*==============================================================*/
create index IX_EG_ExamineType on ExaminationGrade (
ExamineType ASC
)
go

/*==============================================================*/
/* Index: IX_EG_HospitalCode                                    */
/*==============================================================*/
create index IX_EG_HospitalCode on ExaminationGrade (
HospitalCode ASC
)
go

/*==============================================================*/
/* Index: IX_EG_GradeTime                                       */
/*==============================================================*/
create index IX_EG_GradeTime on ExaminationGrade (
GradeTime ASC
)
go

/*==============================================================*/
/* Index: IX_EG_Level                                           */
/*==============================================================*/
create index IX_EG_Level on ExaminationGrade (
Level ASC
)
go

/*==============================================================*/
/* Index: IX_EG_TemplateCode                                    */
/*==============================================================*/
create index IX_EG_TemplateCode on ExaminationGrade (
TemplateCode ASC
)
go

/*==============================================================*/
/* Index: IX_EG_QualityCode                                     */
/*==============================================================*/
create index IX_EG_QualityCode on ExaminationGrade (
QualityCode ASC
)
go

/*==============================================================*/
/* Index: IX_EIG_TaskId                                         */
/*==============================================================*/
create index IX_EIG_TaskId on ExaminationItemGrade (
TaskId ASC
)
go

/*==============================================================*/
/* Index: IX_EIG_MemberGuid                                     */
/*==============================================================*/
create index IX_EIG_MemberGuid on ExaminationItemGrade (
MemberGuid ASC
)
go

/*==============================================================*/
/* Index: IX_EIG_Mode                                           */
/*==============================================================*/
create index IX_EIG_Mode on ExaminationItemGrade (
Mode ASC
)
go

/*==============================================================*/
/* Index: IX_EIG_ExamIndex                                      */
/*==============================================================*/
create index IX_EIG_ExamIndex on ExaminationItemGrade (
ExamIndex ASC
)
go

/*==============================================================*/
/* Index: IX_EIG_AccessionNumber                                */
/*==============================================================*/
create index IX_EIG_AccessionNumber on ExaminationItemGrade (
AccessionNumber ASC
)
go

/*==============================================================*/
/* Index: IX_EIG_QcCode                                         */
/*==============================================================*/
create index IX_EIG_QcCode on ExaminationItemGrade (
QcCode ASC
)
go

/*==============================================================*/
/* Index: IX_EIG_ExamineType                                    */
/*==============================================================*/
create index IX_EIG_ExamineType on ExaminationItemGrade (
ExamineType ASC
)
go

/*==============================================================*/
/* Index: IX_EIG_HospitalCode                                   */
/*==============================================================*/
create index IX_EIG_HospitalCode on ExaminationItemGrade (
HospitalCode ASC
)
go

/*==============================================================*/
/* Index: IX_EIG_Level                                          */
/*==============================================================*/
create index IX_EIG_Level on ExaminationItemGrade (
Level ASC
)
go

/*==============================================================*/
/* Index: IX_ELG_TaskId                                         */
/*==============================================================*/
create index IX_ELG_TaskId on ExaminationLowerGrade (
TaskId ASC
)
go

/*==============================================================*/
/* Index: IX_ELG_MemberGuid                                     */
/*==============================================================*/
create index IX_ELG_MemberGuid on ExaminationLowerGrade (
MemberGuid ASC
)
go

/*==============================================================*/
/* Index: IX_ELG_Mode                                           */
/*==============================================================*/
create index IX_ELG_Mode on ExaminationLowerGrade (
Mode ASC
)
go

/*==============================================================*/
/* Index: IX_ELG_ExamIndex                                      */
/*==============================================================*/
create index IX_ELG_ExamIndex on ExaminationLowerGrade (
ExamIndex ASC
)
go

/*==============================================================*/
/* Index: IX_ELG_AccessionNumber                                */
/*==============================================================*/
create index IX_ELG_AccessionNumber on ExaminationLowerGrade (
AccessionNumber ASC
)
go

/*==============================================================*/
/* Index: IX_ELG_ExamineType                                    */
/*==============================================================*/
create index IX_ELG_ExamineType on ExaminationLowerGrade (
ExamineType ASC
)
go

/*==============================================================*/
/* Index: IX_ELG_HospitalCode                                   */
/*==============================================================*/
create index IX_ELG_HospitalCode on ExaminationLowerGrade (
HospitalCode ASC
)
go

/*==============================================================*/
/* Index: IX_ELG_ItemName                                       */
/*==============================================================*/
create index IX_ELG_ItemName on ExaminationLowerGrade (
ItemName ASC
)
go

/*==============================================================*/
/* Index: IX_ELG_QcCode                                         */
/*==============================================================*/
create index IX_ELG_QcCode on ExaminationLowerGrade (
QcCode ASC
)
go

/*==============================================================*/
/* Index: IX_GP_TaskId                                          */
/*==============================================================*/
create index IX_GP_TaskId on GradePic (
TaskId ASC
)
go

/*==============================================================*/
/* Index: IX_GP_ExamIndex                                       */
/*==============================================================*/
create index IX_GP_ExamIndex on GradePic (
ExamIndex ASC
)
go

/*==============================================================*/
/* Index: IX_GP_AccessionNumber                                 */
/*==============================================================*/
create index IX_GP_AccessionNumber on GradePic (
AccessionNumber ASC
)
go

/*==============================================================*/
/* Index: IX_GP_GradeId                                         */
/*==============================================================*/
create index IX_GP_GradeId on GradePic (
GradeId ASC
)
go

/*==============================================================*/
/* Index: IX_GP_ItemName                                        */
/*==============================================================*/
create index IX_GP_ItemName on GradePic (
ItemName ASC
)
go

/*==============================================================*/
/* Index: IX_GR_ResultId                                        */
/*==============================================================*/
create index IX_GR_ResultId on GradeResult (
ResultId ASC
)
go

/*==============================================================*/
/* Index: IX_GR_TaskId                                          */
/*==============================================================*/
create index IX_GR_TaskId on GradeResult (
TaskId ASC
)
go

/*==============================================================*/
/* Index: IX_GR_MemberGuid                                      */
/*==============================================================*/
create index IX_GR_MemberGuid on GradeResult (
MemberGuid ASC
)
go

/*==============================================================*/
/* Index: IX_GR_HospitalCode                                    */
/*==============================================================*/
create index IX_GR_HospitalCode on GradeResult (
HospitalCode ASC
)
go

/*==============================================================*/
/* Index: IX_GR_GradeTime                                       */
/*==============================================================*/
create index IX_GR_GradeTime on GradeResult (
GradeTime ASC
)
go

/*==============================================================*/
/* Index: IX_GRtC_CorrectiveId                                  */
/*==============================================================*/
create index IX_GRtC_CorrectiveId on GradeResultCorrective (
CorrectiveId ASC
)
go

/*==============================================================*/
/* Index: IX_GRtC_ResultId                                      */
/*==============================================================*/
create index IX_GRtC_ResultId on GradeResultCorrective (
ResultId ASC
)
go

/*==============================================================*/
/* Index: IX_GRtC_HospitalCode                                  */
/*==============================================================*/
create index IX_GRtC_HospitalCode on GradeResultCorrective (
HospitalCode ASC
)
go

/*==============================================================*/
/* Index: IX_GRtC_CorrectiveTime                                */
/*==============================================================*/
create index IX_GRtC_CorrectiveTime on GradeResultCorrective (
CorrectiveTime ASC
)
go

/*==============================================================*/
/* Index: IX_P_HospitalCode                                     */
/*==============================================================*/
create index IX_P_HospitalCode on Person (
HospitalCode ASC
)
go

/*==============================================================*/
/* Index: IX_QCH_StrategyId                                     */
/*==============================================================*/
create index IX_QCH_StrategyId on QualityCheckHospital (
StrategyId ASC
)
go

/*==============================================================*/
/* Index: IX_QCH_HospitalCode                                   */
/*==============================================================*/
create index IX_QCH_HospitalCode on QualityCheckHospital (
HospitalCode ASC
)
go

/*==============================================================*/
/* Index: IX_QCH_CheckTime                                      */
/*==============================================================*/
create index IX_QCH_CheckTime on QualityCheckHospital (
CheckTime ASC
)
go

/*==============================================================*/
/* Index: IX_QCM_EquipmentId                                    */
/*==============================================================*/
create index IX_QCM_EquipmentId on QualityCheckMedia (
EquipmentId ASC
)
go

/*==============================================================*/
/* Index: IX_QCM_PersonId                                       */
/*==============================================================*/
create index IX_QCM_PersonId on QualityCheckMedia (
PersonId ASC
)
go

/*==============================================================*/
/* Index: IX_QCM_Kind                                           */
/*==============================================================*/
create index IX_QCM_Kind on QualityCheckMedia (
Kind ASC
)
go

/*==============================================================*/
/* Index: IX_QCM_UploadTime                                     */
/*==============================================================*/
create index IX_QCM_UploadTime on QualityCheckMedia (
UploadTime ASC
)
go

/*==============================================================*/
/* Index: IX_QCM_HospitalCode                                   */
/*==============================================================*/
create index IX_QCM_HospitalCode on QualityCheckMedia (
HospitalCode ASC
)
go

/*==============================================================*/
/* Index: IX_QCO_StrategyId                                     */
/*==============================================================*/
create index IX_QCO_StrategyId on QualityCheckOther (
StrategyId ASC
)
go

/*==============================================================*/
/* Index: IX_QCO_HospitalLevelCode                              */
/*==============================================================*/
create index IX_QCO_HospitalLevelCode on QualityCheckOther (
HospitalLevelCode ASC
)
go

/*==============================================================*/
/* Index: IX_QCS_StrategyId                                     */
/*==============================================================*/
create index IX_QCS_StrategyId on QualityCheckStrategy (
StrategyId ASC
)
go

/*==============================================================*/
/* Index: IX_QCS_MemberGuid                                     */
/*==============================================================*/
create index IX_QCS_MemberGuid on QualityCheckStrategy (
MemberGuid ASC
)
go

/*==============================================================*/
/* Index: IX_QET_QualityCode                                    */
/*==============================================================*/
create index IX_QET_QualityCode on QualityExamineType (
QualityCode ASC
)
go

/*==============================================================*/
/* Index: IX_QGR_TaskId                                         */
/*==============================================================*/
create index IX_QGR_TaskId on QualityGradeRecord (
TaskId ASC
)
go

/*==============================================================*/
/* Index: IX_QGR_MemberGuid                                     */
/*==============================================================*/
create index IX_QGR_MemberGuid on QualityGradeRecord (
MemberGuid ASC
)
go

/*==============================================================*/
/* Index: IX_QN_TaskId                                          */
/*==============================================================*/
create index IX_QN_TaskId on QualityNotice (
TaskId ASC
)
go

/*==============================================================*/
/* Index: IX_QN_Kind                                            */
/*==============================================================*/
create index IX_QN_Kind on QualityNotice (
Kind ASC
)
go

/*==============================================================*/
/* Index: IX_QN_RCustomerGuid                                   */
/*==============================================================*/
create index IX_QN_RCustomerGuid on QualityNotice (
ReceiveCustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_QSC_QualityCode                                    */
/*==============================================================*/
create index IX_QSC_QualityCode on QualitySysConfig (
QualityCode ASC
)
go

/*==============================================================*/
/* Index: IX_QT_TaskId                                          */
/*==============================================================*/
create index IX_QT_TaskId on QualityTask (
TaskId ASC
)
go

/*==============================================================*/
/* Index: IX_QT_QCenterId                                       */
/*==============================================================*/
create index IX_QT_QCenterId on QualityTask (
QualityCenterId ASC
)
go

/*==============================================================*/
/* Index: IX_QT_Kind                                            */
/*==============================================================*/
create index IX_QT_Kind on QualityTask (
Kind ASC
)
go

/*==============================================================*/
/* Index: IX_QT_GradeKind                                       */
/*==============================================================*/
create index IX_QT_GradeKind on QualityTask (
GradeKind ASC
)
go

/*==============================================================*/
/* Index: IX_QT_Mode                                            */
/*==============================================================*/
create index IX_QT_Mode on QualityTask (
Mode ASC
)
go

/*==============================================================*/
/* Index: IX_QT_QGroupId                                        */
/*==============================================================*/
create index IX_QT_QGroupId on QualityTask (
QualityGroupId ASC
)
go

/*==============================================================*/
/* Index: IX_QT_StartDate                                       */
/*==============================================================*/
create index IX_QT_StartDate on QualityTask (
StartDate ASC
)
go

/*==============================================================*/
/* Index: IX_QT_CustomerGuid                                    */
/*==============================================================*/
create index IX_QT_CustomerGuid on QualityTask (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_QT_State                                           */
/*==============================================================*/
create index IX_QT_State on QualityTask (
State ASC
)
go

/*==============================================================*/
/* Index: IX_QT_QualityCenterId                                 */
/*==============================================================*/
create index IX_QT_QualityCenterId on QualityTemplate (
QualityCenterId ASC
)
go

/*==============================================================*/
/* Index: IX_QT_TemplateCode                                    */
/*==============================================================*/
create index IX_QT_TemplateCode on QualityTemplate (
TemplateCode ASC
)
go

/*==============================================================*/
/* Index: IX_QT_QualityCode                                     */
/*==============================================================*/
create index IX_QT_QualityCode on QualityTemplate (
QualityCode ASC
)
go

/*==============================================================*/
/* Index: IX_QT_IsDefault                                       */
/*==============================================================*/
create index IX_QT_IsDefault on QualityTemplate (
IsDefault ASC
)
go

/*==============================================================*/
/* Index: IX_QT_IsUse                                           */
/*==============================================================*/
create index IX_QT_IsUse on QualityTemplate (
IsUse ASC
)
go

/*==============================================================*/
/* Index: IX_QM_TaskId                                          */
/*==============================================================*/
create index IX_QM_TaskId on QuatityMember (
TaskId ASC
)
go

/*==============================================================*/
/* Index: IX_QM_TaskKind                                        */
/*==============================================================*/
create index IX_QM_TaskKind on QuatityMember (
TaskKind ASC
)
go

/*==============================================================*/
/* Index: IX_QM_MemberGuid                                      */
/*==============================================================*/
create index IX_QM_MemberGuid on QuatityMember (
MemberGuid ASC
)
go

/*==============================================================*/
/* Index: IX_QM_QCenterId                                       */
/*==============================================================*/
create index IX_QM_QCenterId on QuatityMember (
QualityCenterId ASC
)
go

/*==============================================================*/
/* Index: IX_TE_ExtractTaskId                                   */
/*==============================================================*/
create index IX_TE_ExtractTaskId on TaskExamination (
ExtractTaskId ASC
)
go

/*==============================================================*/
/* Index: IX_TE_TaskId                                          */
/*==============================================================*/
create index IX_TE_TaskId on TaskExamination (
TaskId ASC
)
go

/*==============================================================*/
/* Index: IX_TE_ExamineType                                     */
/*==============================================================*/
create index IX_TE_ExamineType on TaskExamination (
ExamineType ASC
)
go

/*==============================================================*/
/* Index: IX_TE_ExamineItem                                     */
/*==============================================================*/
create index IX_TE_ExamineItem on TaskExamination (
ExamineItem ASC
)
go

/*==============================================================*/
/* Index: IX_TE_HospitalCode                                    */
/*==============================================================*/
create index IX_TE_HospitalCode on TaskExamination (
HospitalCode ASC
)
go

/*==============================================================*/
/* Index: IX_TE_PerformTime                                     */
/*==============================================================*/
create index IX_TE_PerformTime on TaskExamination (
PerformTime ASC
)
go

/*==============================================================*/
/* Index: IX_TG_TaskId                                          */
/*==============================================================*/
create index IX_TG_TaskId on TaskGroup (
TaskId ASC
)
go

/*==============================================================*/
/* Index: IX_TGE_GroupId                                        */
/*==============================================================*/
create index IX_TGE_GroupId on TaskGroupExamination (
GroupId ASC
)
go

/*==============================================================*/
/* Index: IX_TGH_GroupId                                        */
/*==============================================================*/
create index IX_TGH_GroupId on TaskGroupHospital (
GroupId ASC
)
go

/*==============================================================*/
/* Index: IX_TGM_GroupId                                        */
/*==============================================================*/
create index IX_TGM_GroupId on TaskGroupMember (
GroupId ASC
)
go

/*==============================================================*/
/* Index: IX_TR_ETaskId                                         */
/*==============================================================*/
create index IX_TR_ETaskId on TaskRecord (
ExtractTaskId ASC
)
go

/*==============================================================*/
/* Index: IX_TR_TaskId                                          */
/*==============================================================*/
create index IX_TR_TaskId on TaskRecord (
TaskId ASC
)
go

/*==============================================================*/
/* Index: IX_TR_Mode                                            */
/*==============================================================*/
create index IX_TR_Mode on TaskRecord (
Mode ASC
)
go

/*==============================================================*/
/* Index: IX_VEN_TaskId                                         */
/*==============================================================*/
create index IX_VEN_TaskId on VideoExaminationNow (
TaskId ASC
)
go

