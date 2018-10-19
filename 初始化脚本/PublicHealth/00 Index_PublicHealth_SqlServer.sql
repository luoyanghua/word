/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2000                    */
/* Created on:     2017/12/26 15:48:21                          */
/*==============================================================*/


/*==============================================================*/
/* Index: IX_AAsk_ServiceId                                     */
/*==============================================================*/
create index IX_AAsk_ServiceId on ApplyAsk (
ServiceId ASC
)
go

/*==============================================================*/
/* Index: IX_AAsk_OrderNo                                       */
/*==============================================================*/
create index IX_AAsk_OrderNo on ApplyAsk (
OrderNo ASC
)
go

/*==============================================================*/
/* Index: IX_AAsk_IdNumber                                      */
/*==============================================================*/
create index IX_AAsk_IdNumber on ApplyAsk (
IdNumber ASC
)
go

/*==============================================================*/
/* Index: IX_AAsk_PatientName                                   */
/*==============================================================*/
create index IX_AAsk_PatientName on ApplyAsk (
PatientName ASC
)
go

/*==============================================================*/
/* Index: IX_AAsk_AskKind                                       */
/*==============================================================*/
create index IX_AAsk_AskKind on ApplyAsk (
AskKind ASC
)
go

/*==============================================================*/
/* Index: IX_AAsk_AskMode                                       */
/*==============================================================*/
create index IX_AAsk_AskMode on ApplyAsk (
AskMode ASC
)
go

/*==============================================================*/
/* Index: IX_AAsk_CustomerGuid                                  */
/*==============================================================*/
create index IX_AAsk_CustomerGuid on ApplyAsk (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_AAsk_RequestPhone                                  */
/*==============================================================*/
create index IX_AAsk_RequestPhone on ApplyAsk (
RequestPhone ASC
)
go

/*==============================================================*/
/* Index: IX_AAsk_RequestDate                                   */
/*==============================================================*/
create index IX_AAsk_RequestDate on ApplyAsk (
RequestDate ASC
)
go

/*==============================================================*/
/* Index: IX_AAsk_PayTime                                       */
/*==============================================================*/
create index IX_AAsk_PayTime on ApplyAsk (
PayTime ASC
)
go

/*==============================================================*/
/* Index: IX_AAsk_ServiceState                                  */
/*==============================================================*/
create index IX_AAsk_ServiceState on ApplyAsk (
ServiceState ASC
)
go

/*==============================================================*/
/* Index: IX_AAsk_EvaluationState                               */
/*==============================================================*/
create index IX_AAsk_EvaluationState on ApplyAsk (
EvaluationState ASC
)
go

/*==============================================================*/
/* Index: IX_AAsk_IsSuperService                                */
/*==============================================================*/
create index IX_AAsk_IsSuperService on ApplyAsk (
IsSuperService ASC
)
go

/*==============================================================*/
/* Index: IX_AAsk_IsCustomerSign                                */
/*==============================================================*/
create index IX_AAsk_IsCustomerSign on ApplyAsk (
IsCustomerSign ASC
)
go

/*==============================================================*/
/* Index: IX_AAsk_RollExpertGuid                                */
/*==============================================================*/
create index IX_AAsk_RollExpertGuid on ApplyAsk (
RollExpertGuid ASC
)
go

/*==============================================================*/
/* Index: IX_AAT_ServiceId                                      */
/*==============================================================*/
create index IX_AAT_ServiceId on ApplyAskTimes (
ServiceId ASC
)
go

/*==============================================================*/
/* Index: IX_AIR_ServiceId                                      */
/*==============================================================*/
create index IX_AIR_ServiceId on ApplyImageReview (
ServiceId ASC
)
go

/*==============================================================*/
/* Index: IX_AIR_OrderNo                                        */
/*==============================================================*/
create index IX_AIR_OrderNo on ApplyImageReview (
OrderNo ASC
)
go

/*==============================================================*/
/* Index: IX_AIR_PatientName                                    */
/*==============================================================*/
create index IX_AIR_PatientName on ApplyImageReview (
PatientName ASC
)
go

/*==============================================================*/
/* Index: IX_AIR_IdNumber                                       */
/*==============================================================*/
create index IX_AIR_IdNumber on ApplyImageReview (
IdNumber ASC
)
go

/*==============================================================*/
/* Index: IX_AIR_ReviewMode                                     */
/*==============================================================*/
create index IX_AIR_ReviewMode on ApplyImageReview (
ReviewMode ASC
)
go

/*==============================================================*/
/* Index: IX_AIR_CustomerGuid                                   */
/*==============================================================*/
create index IX_AIR_CustomerGuid on ApplyImageReview (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_AIR_RequestPhone                                   */
/*==============================================================*/
create index IX_AIR_RequestPhone on ApplyImageReview (
RequestPhone ASC
)
go

/*==============================================================*/
/* Index: IX_AIR_RequestDate                                    */
/*==============================================================*/
create index IX_AIR_RequestDate on ApplyImageReview (
RequestDate ASC
)
go

/*==============================================================*/
/* Index: IX_AIR_PayTime                                        */
/*==============================================================*/
create index IX_AIR_PayTime on ApplyImageReview (
PayTime ASC
)
go

/*==============================================================*/
/* Index: IX_AIR_ServiceState                                   */
/*==============================================================*/
create index IX_AIR_ServiceState on ApplyImageReview (
ServiceState ASC
)
go

/*==============================================================*/
/* Index: IX_AIR_EvaluationState                                */
/*==============================================================*/
create index IX_AIR_EvaluationState on ApplyImageReview (
EvaluationState ASC
)
go

/*==============================================================*/
/* Index: IX_AIR_IsSuperService                                 */
/*==============================================================*/
create index IX_AIR_IsSuperService on ApplyImageReview (
IsSuperService ASC
)
go

/*==============================================================*/
/* Index: IX_AIR_IsCustomerSign                                 */
/*==============================================================*/
create index IX_AIR_IsCustomerSign on ApplyImageReview (
IsCustomerSign ASC
)
go

/*==============================================================*/
/* Index: IX_AIR_RollExpertGuid                                 */
/*==============================================================*/
create index IX_AIR_RollExpertGuid on ApplyImageReview (
RollExpertGuid ASC
)
go

/*==============================================================*/
/* Index: IX_AIR_IsSync                                         */
/*==============================================================*/
create index IX_AIR_IsSync on ApplyImageReview (
IsSync ASC
)
go

/*==============================================================*/
/* Index: IX_ACF_CustomerGuid                                   */
/*==============================================================*/
create index IX_ACF_CustomerGuid on AskCallFee (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_ACF_AskMode                                        */
/*==============================================================*/
create index IX_ACF_AskMode on AskCallFee (
AskMode ASC
)
go

/*==============================================================*/
/* Index: IX_AskFee_AskMode                                     */
/*==============================================================*/
create index IX_AskFee_AskMode on AskFee (
AskMode ASC
)
go

/*==============================================================*/
/* Index: IX_AskFee_ExpertTitleCode                             */
/*==============================================================*/
create index IX_AskFee_ExpertTitleCode on AskFee (
ExpertTitleCode ASC
)
go

/*==============================================================*/
/* Index: IX_AskKW_ServiceId                                    */
/*==============================================================*/
create index IX_AskKW_ServiceId on AskKeyWord (
ServiceId ASC
)
go

/*==============================================================*/
/* Index: IX_AskP_ServiceId                                     */
/*==============================================================*/
create index IX_AskP_ServiceId on AskProcess (
ServiceId ASC
)
go

/*==============================================================*/
/* Index: IX_AskP_Event                                         */
/*==============================================================*/
create index IX_AskP_Event on AskProcess (
Event ASC
)
go

/*==============================================================*/
/* Index: IX_AskP_OCustomerGuid                                 */
/*==============================================================*/
create index IX_AskP_OCustomerGuid on AskProcess (
OperateCustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_AskR_ServiceId                                     */
/*==============================================================*/
create index IX_AskR_ServiceId on AskReply (
ServiceId ASC
)
go

/*==============================================================*/
/* Index: IX_AskR_CustomerGuid                                  */
/*==============================================================*/
create index IX_AskR_CustomerGuid on AskReply (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_AskR_Kind                                          */
/*==============================================================*/
create index IX_AskR_Kind on AskReply (
Kind ASC
)
go

/*==============================================================*/
/* Index: IX_AskR_State                                         */
/*==============================================================*/
create index IX_AskR_State on AskReply (
State ASC
)
go

/*==============================================================*/
/* Index: IX_AskR_ServiceCenterId                               */
/*==============================================================*/
create index IX_AskR_ServiceCenterId on AskReply (
ServiceCenterId ASC
)
go

/*==============================================================*/
/* Index: IX_AskR_AskMode                                       */
/*==============================================================*/
create index IX_AskR_AskMode on AskReply (
AskMode ASC
)
go

/*==============================================================*/
/* Index: IX_AskR_IsSettled                                     */
/*==============================================================*/
create index IX_AskR_IsSettled on AskReply (
IsSettled ASC
)
go

/*==============================================================*/
/* Index: IX_AS_SheduleDate                                     */
/*==============================================================*/
create index IX_AS_SheduleDate on AskShedule (
SheduleDate ASC
)
go

/*==============================================================*/
/* Index: IX_AS_SubjectId                                       */
/*==============================================================*/
create index IX_AS_SubjectId on AskShedule (
SubjectId ASC
)
go

/*==============================================================*/
/* Index: IX_AS_ECustomerGuid                                   */
/*==============================================================*/
create index IX_AS_ECustomerGuid on AskShedule (
ExpertCustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_AS_BeginTime                                       */
/*==============================================================*/
create index IX_AS_BeginTime on AskShedule (
SheduleBeginTime ASC
)
go

/*==============================================================*/
/* Index: IX_AS_EndTime                                         */
/*==============================================================*/
create index IX_AS_EndTime on AskShedule (
SheduleEndTime ASC
)
go

/*==============================================================*/
/* Index: IX_AS_ServiceId                                       */
/*==============================================================*/
create index IX_AS_ServiceId on AskShedule (
ServiceId ASC
)
go

/*==============================================================*/
/* Index: IX_AS_CustomerGuid                                    */
/*==============================================================*/
create index IX_AS_CustomerGuid on AskShedule (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_CDR_ServiceId                                      */
/*==============================================================*/
create index IX_CDR_ServiceId on CarryDataRecord (
ServiceId ASC
)
go

/*==============================================================*/
/* Index: IX_DEva_ServiceId                                     */
/*==============================================================*/
create index IX_DEva_ServiceId on DoctorEvaluation (
ServiceId ASC
)
go

/*==============================================================*/
/* Index: IX_DEva_Kind                                          */
/*==============================================================*/
create index IX_DEva_Kind on DoctorEvaluation (
Kind ASC
)
go

/*==============================================================*/
/* Index: IX_DEva_PCustomerGuid                                 */
/*==============================================================*/
create index IX_DEva_PCustomerGuid on DoctorEvaluation (
PatientCustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_DEva_CustomerGuid                                  */
/*==============================================================*/
create index IX_DEva_CustomerGuid on DoctorEvaluation (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_DEva_EvaluationDate                                */
/*==============================================================*/
create index IX_DEva_EvaluationDate on DoctorEvaluation (
EvaluationDate ASC
)
go

/*==============================================================*/
/* Index: IX_DSL_DoctorCustomerGuid                             */
/*==============================================================*/
create index IX_DSL_DoctorCustomerGuid on DoctorServiceLevel (
DoctorCustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_EKW_ServiceId                                      */
/*==============================================================*/
create index IX_EKW_ServiceId on EvaluationKeyWord (
ServiceId ASC
)
go

/*==============================================================*/
/* Index: IX_EKW_Kind                                           */
/*==============================================================*/
create index IX_EKW_Kind on EvaluationKeyWord (
Kind ASC
)
go

/*==============================================================*/
/* Index: IX_EKW_DCGuid                                         */
/*==============================================================*/
create index IX_EKW_DCGuid on EvaluationKeyWord (
DoctorCustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_EShedule_WeekDay                                   */
/*==============================================================*/
create index IX_EShedule_WeekDay on ExpertShedule (
WeekDay ASC
)
go

/*==============================================================*/
/* Index: IX_EShedule_PartCode                                  */
/*==============================================================*/
create index IX_EShedule_PartCode on ExpertShedule (
PartCode ASC
)
go

/*==============================================================*/
/* Index: IX_EShedule_SubjectId                                 */
/*==============================================================*/
create index IX_EShedule_SubjectId on ExpertShedule (
SubjectId ASC
)
go

/*==============================================================*/
/* Index: IX_EShedule_CustomerGuid                              */
/*==============================================================*/
create index IX_EShedule_CustomerGuid on ExpertShedule (
ExpertCustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_EShedule_ServiceCenterId                           */
/*==============================================================*/
create index IX_EShedule_ServiceCenterId on ExpertShedule (
ServiceCenterId ASC
)
go

/*==============================================================*/
/* Index: IX_IRCF_CustomerGuid                                  */
/*==============================================================*/
create index IX_IRCF_CustomerGuid on ImageReviewCallFee (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_IRCF_ExamineType                                   */
/*==============================================================*/
create index IX_IRCF_ExamineType on ImageReviewCallFee (
ExamineType ASC
)
go

/*==============================================================*/
/* Index: IX_IRC_ServiceId                                      */
/*==============================================================*/
create index IX_IRC_ServiceId on ImageReviewCheck (
ServiceId ASC
)
go

/*==============================================================*/
/* Index: IX_IRC_AccessionNumber                                */
/*==============================================================*/
create index IX_IRC_AccessionNumber on ImageReviewCheck (
AccessionNumber ASC
)
go

/*==============================================================*/
/* Index: IX_IRC_ExamineType                                    */
/*==============================================================*/
create index IX_IRC_ExamineType on ImageReviewCheck (
ExamineType ASC
)
go

/*==============================================================*/
/* Index: IX_IRC_PerformTime                                    */
/*==============================================================*/
create index IX_IRC_PerformTime on ImageReviewCheck (
PerformTime ASC
)
go

/*==============================================================*/
/* Index: IX_IRC_IsMasculine                                    */
/*==============================================================*/
create index IX_IRC_IsMasculine on ImageReviewCheck (
IsMasculine ASC
)
go

/*==============================================================*/
/* Index: IX_IRC_HospitalId                                     */
/*==============================================================*/
create index IX_IRC_HospitalId on ImageReviewCheck (
HospitalId ASC
)
go

/*==============================================================*/
/* Index: IX_IRC_IsMain                                         */
/*==============================================================*/
create index IX_IRC_IsMain on ImageReviewCheck (
IsMain ASC
)
go

/*==============================================================*/
/* Index: IX_IRC_State                                          */
/*==============================================================*/
create index IX_IRC_State on ImageReviewCheck (
State ASC
)
go

/*==============================================================*/
/* Index: IX_IRF_ExpertTitleCode                                */
/*==============================================================*/
create index IX_IRF_ExpertTitleCode on ImageReviewFee (
ExpertTitleCode ASC
)
go

/*==============================================================*/
/* Index: IX_IRF_ExamineType                                    */
/*==============================================================*/
create index IX_IRF_ExamineType on ImageReviewFee (
ExamineType ASC
)
go

/*==============================================================*/
/* Index: IX_IRP_ServiceId                                      */
/*==============================================================*/
create index IX_IRP_ServiceId on ImageReviewProcess (
ServiceId ASC
)
go

/*==============================================================*/
/* Index: IX_IRP_Event                                          */
/*==============================================================*/
create index IX_IRP_Event on ImageReviewProcess (
Event ASC
)
go

/*==============================================================*/
/* Index: IX_IRP_OCustomerGuid                                  */
/*==============================================================*/
create index IX_IRP_OCustomerGuid on ImageReviewProcess (
OperateCustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_IRP_EventTime                                      */
/*==============================================================*/
create index IX_IRP_EventTime on ImageReviewProcess (
EventTime ASC
)
go

/*==============================================================*/
/* Index: IX_IRR_ServiceId                                      */
/*==============================================================*/
create index IX_IRR_ServiceId on ImageReviewReply (
ServiceId ASC
)
go

/*==============================================================*/
/* Index: IX_IRR_CustomerGuid                                   */
/*==============================================================*/
create index IX_IRR_CustomerGuid on ImageReviewReply (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_IRR_Kind                                           */
/*==============================================================*/
create index IX_IRR_Kind on ImageReviewReply (
Kind ASC
)
go

/*==============================================================*/
/* Index: IX_IRR_State                                          */
/*==============================================================*/
create index IX_IRR_State on ImageReviewReply (
State ASC
)
go

/*==============================================================*/
/* Index: IX_IRR_ServiceCenterId                                */
/*==============================================================*/
create index IX_IRR_ServiceCenterId on ImageReviewReply (
ServiceCenterId ASC
)
go

/*==============================================================*/
/* Index: IX_IRR_IsSettled                                      */
/*==============================================================*/
create index IX_IRR_IsSettled on ImageReviewReply (
IsSettled ASC
)
go

/*==============================================================*/
/* Index: IX_IRS_SheduleDate                                    */
/*==============================================================*/
create index IX_IRS_SheduleDate on ImageReviewShedule (
SheduleDate ASC
)
go

/*==============================================================*/
/* Index: IX_IRS_SubjectId                                      */
/*==============================================================*/
create index IX_IRS_SubjectId on ImageReviewShedule (
SubjectId ASC
)
go

/*==============================================================*/
/* Index: IX_IRS_ECustomerGuid                                  */
/*==============================================================*/
create index IX_IRS_ECustomerGuid on ImageReviewShedule (
ExpertCustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_IRS_BeginTime                                      */
/*==============================================================*/
create index IX_IRS_BeginTime on ImageReviewShedule (
SheduleBeginTime ASC
)
go

/*==============================================================*/
/* Index: IX_IRS_EndTime                                        */
/*==============================================================*/
create index IX_IRS_EndTime on ImageReviewShedule (
SheduleEndTime ASC
)
go

/*==============================================================*/
/* Index: IX_IRS_ServiceId                                      */
/*==============================================================*/
create index IX_IRS_ServiceId on ImageReviewShedule (
ServiceId ASC
)
go

/*==============================================================*/
/* Index: IX_IRS_CustomerGuid                                   */
/*==============================================================*/
create index IX_IRS_CustomerGuid on ImageReviewShedule (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_NClinic_ServiceId                                  */
/*==============================================================*/
create index IX_NClinic_ServiceId on NetClinic (
ServiceId ASC
)
go

/*==============================================================*/
/* Index: IX_NClinic_CustomerGuid                               */
/*==============================================================*/
create index IX_NClinic_CustomerGuid on NetClinic (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_NClinic_RequestDate                                */
/*==============================================================*/
create index IX_NClinic_RequestDate on NetClinic (
RequestDate ASC
)
go

/*==============================================================*/
/* Index: IX_NClinic_OrderNo                                    */
/*==============================================================*/
create index IX_NClinic_OrderNo on NetClinic (
OrderNo ASC
)
go

/*==============================================================*/
/* Index: IX_NClinic_ExpertCustomerGuid                         */
/*==============================================================*/
create index IX_NClinic_ExpertCustomerGuid on NetClinic (
ExpertCustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_NClinic_ServiceCenterId                            */
/*==============================================================*/
create index IX_NClinic_ServiceCenterId on NetClinic (
ServiceCenterId ASC
)
go

/*==============================================================*/
/* Index: IX_NClinic_ServiceState                               */
/*==============================================================*/
create index IX_NClinic_ServiceState on NetClinic (
ServiceState ASC
)
go

/*==============================================================*/
/* Index: IX_NCKW_ServiceId                                     */
/*==============================================================*/
create index IX_NCKW_ServiceId on NetClinicKeyWord (
ServiceId ASC
)
go

/*==============================================================*/
/* Index: IX_NCP_ServiceId                                      */
/*==============================================================*/
create index IX_NCP_ServiceId on NetClinicProcess (
ServiceId ASC
)
go

/*==============================================================*/
/* Index: IX_NCP_Event                                          */
/*==============================================================*/
create index IX_NCP_Event on NetClinicProcess (
Event ASC
)
go

/*==============================================================*/
/* Index: IX_NCP_OCustomerGuid                                  */
/*==============================================================*/
create index IX_NCP_OCustomerGuid on NetClinicProcess (
OperateCustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_NCP_EventTime                                      */
/*==============================================================*/
create index IX_NCP_EventTime on NetClinicProcess (
EventTime ASC
)
go

/*==============================================================*/
/* Index: IX_PE_ServiceId                                       */
/*==============================================================*/
create index IX_PE_ServiceId on PatientEvaluation (
ServiceId ASC
)
go

/*==============================================================*/
/* Index: IX_PE_Kind                                            */
/*==============================================================*/
create index IX_PE_Kind on PatientEvaluation (
Kind ASC
)
go

/*==============================================================*/
/* Index: IX_PE_DCustomerGuid                                   */
/*==============================================================*/
create index IX_PE_DCustomerGuid on PatientEvaluation (
DoctorCustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_PE_CustomerGuid                                    */
/*==============================================================*/
create index IX_PE_CustomerGuid on PatientEvaluation (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_PE_EvaluationDate                                  */
/*==============================================================*/
create index IX_PE_EvaluationDate on PatientEvaluation (
EvaluationDate ASC
)
go

/*==============================================================*/
/* Index: IX_PHM_BusinessId                                     */
/*==============================================================*/
create index IX_PHM_BusinessId on PublicHealthMedia (
BusinessId ASC
)
go

/*==============================================================*/
/* Index: IX_PHM_BusinessKind                                   */
/*==============================================================*/
create index IX_PHM_BusinessKind on PublicHealthMedia (
BusinessKind ASC
)
go

/*==============================================================*/
/* Index: IX_PHM_Scene                                          */
/*==============================================================*/
create index IX_PHM_Scene on PublicHealthMedia (
Scene ASC
)
go

/*==============================================================*/
/* Index: IX_RKW_ServiceId                                      */
/*==============================================================*/
create index IX_RKW_ServiceId on ReviewKeyWord (
ServiceId ASC
)
go

/*==============================================================*/
/* Index: IX_SSubject_CenterId                                  */
/*==============================================================*/
create index IX_SSubject_CenterId on SheduleSubject (
ServiceCenterId ASC
)
go

/*==============================================================*/
/* Index: IX_SSO_SubjectId                                      */
/*==============================================================*/
create index IX_SSO_SubjectId on SheduleSubjectOffice (
SubjectId ASC
)
go

/*==============================================================*/
/* Index: IX_SExpert_SubjectId                                  */
/*==============================================================*/
create index IX_SExpert_SubjectId on SubjectExpert (
SubjectId ASC
)
go

/*==============================================================*/
/* Index: IX_SExpert_CustomerGuid                               */
/*==============================================================*/
create index IX_SExpert_CustomerGuid on SubjectExpert (
ExpertCustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_WR_ServiceId                                       */
/*==============================================================*/
create index IX_WR_ServiceId on WordRecord (
ServiceId ASC
)
go

/*==============================================================*/
/* Index: IX_WR_ServiceKind                                     */
/*==============================================================*/
create index IX_WR_ServiceKind on WordRecord (
ServiceKind ASC
)
go

/*==============================================================*/
/* Index: IX_WR_Type                                            */
/*==============================================================*/
create index IX_WR_Type on WordRecord (
Type ASC
)
go

/*==============================================================*/
/* Index: IX_WR_Kind                                            */
/*==============================================================*/
create index IX_WR_Kind on WordRecord (
Kind ASC
)
go

/*==============================================================*/
/* Index: IX_WR_IsRead                                          */
/*==============================================================*/
create index IX_WR_IsRead on WordRecord (
IsRead ASC
)
go

