/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2017/12/26 15:51:05                          */
/*==============================================================*/


/*==============================================================*/
/* Index: IX_AAsk_ServiceId                                     */
/*==============================================================*/
create index IX_AAsk_ServiceId on ApplyAsk
(
   ServiceId
);

/*==============================================================*/
/* Index: IX_AAsk_OrderNo                                       */
/*==============================================================*/
create index IX_AAsk_OrderNo on ApplyAsk
(
   OrderNo
);

/*==============================================================*/
/* Index: IX_AAsk_IdNumber                                      */
/*==============================================================*/
create index IX_AAsk_IdNumber on ApplyAsk
(
   IdNumber
);

/*==============================================================*/
/* Index: IX_AAsk_PatientName                                   */
/*==============================================================*/
create index IX_AAsk_PatientName on ApplyAsk
(
   PatientName
);

/*==============================================================*/
/* Index: IX_AAsk_AskKind                                       */
/*==============================================================*/
create index IX_AAsk_AskKind on ApplyAsk
(
   AskKind
);

/*==============================================================*/
/* Index: IX_AAsk_AskMode                                       */
/*==============================================================*/
create index IX_AAsk_AskMode on ApplyAsk
(
   AskMode
);

/*==============================================================*/
/* Index: IX_AAsk_CustomerGuid                                  */
/*==============================================================*/
create index IX_AAsk_CustomerGuid on ApplyAsk
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_AAsk_RequestPhone                                  */
/*==============================================================*/
create index IX_AAsk_RequestPhone on ApplyAsk
(
   RequestPhone
);

/*==============================================================*/
/* Index: IX_AAsk_RequestDate                                   */
/*==============================================================*/
create index IX_AAsk_RequestDate on ApplyAsk
(
   RequestDate
);

/*==============================================================*/
/* Index: IX_AAsk_PayTime                                       */
/*==============================================================*/
create index IX_AAsk_PayTime on ApplyAsk
(
   PayTime
);

/*==============================================================*/
/* Index: IX_AAsk_ServiceState                                  */
/*==============================================================*/
create index IX_AAsk_ServiceState on ApplyAsk
(
   ServiceState
);

/*==============================================================*/
/* Index: IX_AAsk_EvaluationState                               */
/*==============================================================*/
create index IX_AAsk_EvaluationState on ApplyAsk
(
   EvaluationState
);

/*==============================================================*/
/* Index: IX_AAsk_IsSuperService                                */
/*==============================================================*/
create index IX_AAsk_IsSuperService on ApplyAsk
(
   IsSuperService
);

/*==============================================================*/
/* Index: IX_AAsk_IsCustomerSign                                */
/*==============================================================*/
create index IX_AAsk_IsCustomerSign on ApplyAsk
(
   IsCustomerSign
);

/*==============================================================*/
/* Index: IX_AAsk_RollExpertGuid                                */
/*==============================================================*/
create index IX_AAsk_RollExpertGuid on ApplyAsk
(
   RollExpertGuid
);

/*==============================================================*/
/* Index: IX_AAT_ServiceId                                      */
/*==============================================================*/
create index IX_AAT_ServiceId on ApplyAskTimes
(
   ServiceId
);

/*==============================================================*/
/* Index: IX_AIR_ServiceId                                      */
/*==============================================================*/
create index IX_AIR_ServiceId on ApplyImageReview
(
   ServiceId
);

/*==============================================================*/
/* Index: IX_AIR_OrderNo                                        */
/*==============================================================*/
create index IX_AIR_OrderNo on ApplyImageReview
(
   OrderNo
);

/*==============================================================*/
/* Index: IX_AIR_PatientName                                    */
/*==============================================================*/
create index IX_AIR_PatientName on ApplyImageReview
(
   PatientName
);

/*==============================================================*/
/* Index: IX_AIR_IdNumber                                       */
/*==============================================================*/
create index IX_AIR_IdNumber on ApplyImageReview
(
   IdNumber
);

/*==============================================================*/
/* Index: IX_AIR_ReviewMode                                     */
/*==============================================================*/
create index IX_AIR_ReviewMode on ApplyImageReview
(
   ReviewMode
);

/*==============================================================*/
/* Index: IX_AIR_CustomerGuid                                   */
/*==============================================================*/
create index IX_AIR_CustomerGuid on ApplyImageReview
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_AIR_RequestPhone                                   */
/*==============================================================*/
create index IX_AIR_RequestPhone on ApplyImageReview
(
   RequestPhone
);

/*==============================================================*/
/* Index: IX_AIR_RequestDate                                    */
/*==============================================================*/
create index IX_AIR_RequestDate on ApplyImageReview
(
   RequestDate
);

/*==============================================================*/
/* Index: IX_AIR_PayTime                                        */
/*==============================================================*/
create index IX_AIR_PayTime on ApplyImageReview
(
   PayTime
);

/*==============================================================*/
/* Index: IX_AIR_ServiceState                                   */
/*==============================================================*/
create index IX_AIR_ServiceState on ApplyImageReview
(
   ServiceState
);

/*==============================================================*/
/* Index: IX_AIR_EvaluationState                                */
/*==============================================================*/
create index IX_AIR_EvaluationState on ApplyImageReview
(
   EvaluationState
);

/*==============================================================*/
/* Index: IX_AIR_IsSuperService                                 */
/*==============================================================*/
create index IX_AIR_IsSuperService on ApplyImageReview
(
   IsSuperService
);

/*==============================================================*/
/* Index: IX_AIR_IsCustomerSign                                 */
/*==============================================================*/
create index IX_AIR_IsCustomerSign on ApplyImageReview
(
   IsCustomerSign
);

/*==============================================================*/
/* Index: IX_AIR_RollExpertGuid                                 */
/*==============================================================*/
create index IX_AIR_RollExpertGuid on ApplyImageReview
(
   RollExpertGuid
);

/*==============================================================*/
/* Index: IX_AIR_IsSync                                         */
/*==============================================================*/
create index IX_AIR_IsSync on ApplyImageReview
(
   IsSync
);

/*==============================================================*/
/* Index: IX_ACF_CustomerGuid                                   */
/*==============================================================*/
create index IX_ACF_CustomerGuid on AskCallFee
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_ACF_AskMode                                        */
/*==============================================================*/
create index IX_ACF_AskMode on AskCallFee
(
   AskMode
);

/*==============================================================*/
/* Index: IX_AskFee_AskMode                                     */
/*==============================================================*/
create index IX_AskFee_AskMode on AskFee
(
   AskMode
);

/*==============================================================*/
/* Index: IX_AskFee_ExpertTitleCode                             */
/*==============================================================*/
create index IX_AskFee_ExpertTitleCode on AskFee
(
   ExpertTitleCode
);

/*==============================================================*/
/* Index: IX_AskKW_ServiceId                                    */
/*==============================================================*/
create index IX_AskKW_ServiceId on AskKeyWord
(
   ServiceId
);

/*==============================================================*/
/* Index: IX_AskP_ServiceId                                     */
/*==============================================================*/
create index IX_AskP_ServiceId on AskProcess
(
   ServiceId
);

/*==============================================================*/
/* Index: IX_AskP_Event                                         */
/*==============================================================*/
create index IX_AskP_Event on AskProcess
(
   Event
);

/*==============================================================*/
/* Index: IX_AskP_OCustomerGuid                                 */
/*==============================================================*/
create index IX_AskP_OCustomerGuid on AskProcess
(
   OperateCustomerGuid
);

/*==============================================================*/
/* Index: IX_AskR_ServiceId                                     */
/*==============================================================*/
create index IX_AskR_ServiceId on AskReply
(
   ServiceId
);

/*==============================================================*/
/* Index: IX_AskR_CustomerGuid                                  */
/*==============================================================*/
create index IX_AskR_CustomerGuid on AskReply
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_AskR_Kind                                          */
/*==============================================================*/
create index IX_AskR_Kind on AskReply
(
   Kind
);

/*==============================================================*/
/* Index: IX_AskR_State                                         */
/*==============================================================*/
create index IX_AskR_State on AskReply
(
   State
);

/*==============================================================*/
/* Index: IX_AskR_ServiceCenterId                               */
/*==============================================================*/
create index IX_AskR_ServiceCenterId on AskReply
(
   ServiceCenterId
);

/*==============================================================*/
/* Index: IX_AskR_AskMode                                       */
/*==============================================================*/
create index IX_AskR_AskMode on AskReply
(
   AskMode
);

/*==============================================================*/
/* Index: IX_AskR_IsSettled                                     */
/*==============================================================*/
create index IX_AskR_IsSettled on AskReply
(
   IsSettled
);

/*==============================================================*/
/* Index: IX_AS_SheduleDate                                     */
/*==============================================================*/
create index IX_AS_SheduleDate on AskShedule
(
   SheduleDate
);

/*==============================================================*/
/* Index: IX_AS_SubjectId                                       */
/*==============================================================*/
create index IX_AS_SubjectId on AskShedule
(
   SubjectId
);

/*==============================================================*/
/* Index: IX_AS_ECustomerGuid                                   */
/*==============================================================*/
create index IX_AS_ECustomerGuid on AskShedule
(
   ExpertCustomerGuid
);

/*==============================================================*/
/* Index: IX_AS_BeginTime                                       */
/*==============================================================*/
create index IX_AS_BeginTime on AskShedule
(
   SheduleBeginTime
);

/*==============================================================*/
/* Index: IX_AS_EndTime                                         */
/*==============================================================*/
create index IX_AS_EndTime on AskShedule
(
   SheduleEndTime
);

/*==============================================================*/
/* Index: IX_AS_ServiceId                                       */
/*==============================================================*/
create index IX_AS_ServiceId on AskShedule
(
   ServiceId
);

/*==============================================================*/
/* Index: IX_AS_CustomerGuid                                    */
/*==============================================================*/
create index IX_AS_CustomerGuid on AskShedule
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_CDR_ServiceId                                      */
/*==============================================================*/
create index IX_CDR_ServiceId on CarryDataRecord
(
   ServiceId
);

/*==============================================================*/
/* Index: IX_DEva_ServiceId                                     */
/*==============================================================*/
create index IX_DEva_ServiceId on DoctorEvaluation
(
   ServiceId
);

/*==============================================================*/
/* Index: IX_DEva_Kind                                          */
/*==============================================================*/
create index IX_DEva_Kind on DoctorEvaluation
(
   Kind
);

/*==============================================================*/
/* Index: IX_DEva_PCustomerGuid                                 */
/*==============================================================*/
create index IX_DEva_PCustomerGuid on DoctorEvaluation
(
   PatientCustomerGuid
);

/*==============================================================*/
/* Index: IX_DEva_CustomerGuid                                  */
/*==============================================================*/
create index IX_DEva_CustomerGuid on DoctorEvaluation
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_DEva_EvaluationDate                                */
/*==============================================================*/
create index IX_DEva_EvaluationDate on DoctorEvaluation
(
   EvaluationDate
);

/*==============================================================*/
/* Index: IX_DSL_DoctorCustomerGuid                             */
/*==============================================================*/
create index IX_DSL_DoctorCustomerGuid on DoctorServiceLevel
(
   DoctorCustomerGuid
);

/*==============================================================*/
/* Index: IX_EKW_ServiceId                                      */
/*==============================================================*/
create index IX_EKW_ServiceId on EvaluationKeyWord
(
   ServiceId
);

/*==============================================================*/
/* Index: IX_EKW_Kind                                           */
/*==============================================================*/
create index IX_EKW_Kind on EvaluationKeyWord
(
   Kind
);

/*==============================================================*/
/* Index: IX_EKW_DCGuid                                         */
/*==============================================================*/
create index IX_EKW_DCGuid on EvaluationKeyWord
(
   DoctorCustomerGuid
);

/*==============================================================*/
/* Index: IX_EShedule_WeekDay                                   */
/*==============================================================*/
create index IX_EShedule_WeekDay on ExpertShedule
(
   WeekDay
);

/*==============================================================*/
/* Index: IX_EShedule_PartCode                                  */
/*==============================================================*/
create index IX_EShedule_PartCode on ExpertShedule
(
   PartCode
);

/*==============================================================*/
/* Index: IX_EShedule_SubjectId                                 */
/*==============================================================*/
create index IX_EShedule_SubjectId on ExpertShedule
(
   SubjectId
);

/*==============================================================*/
/* Index: IX_EShedule_CustomerGuid                              */
/*==============================================================*/
create index IX_EShedule_CustomerGuid on ExpertShedule
(
   ExpertCustomerGuid
);

/*==============================================================*/
/* Index: IX_EShedule_ServiceCenterId                           */
/*==============================================================*/
create index IX_EShedule_ServiceCenterId on ExpertShedule
(
   ServiceCenterId
);

/*==============================================================*/
/* Index: IX_IRCF_CustomerGuid                                  */
/*==============================================================*/
create index IX_IRCF_CustomerGuid on ImageReviewCallFee
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_IRCF_ExamineType                                   */
/*==============================================================*/
create index IX_IRCF_ExamineType on ImageReviewCallFee
(
   ExamineType
);

/*==============================================================*/
/* Index: IX_IRC_ServiceId                                      */
/*==============================================================*/
create index IX_IRC_ServiceId on ImageReviewCheck
(
   ServiceId
);

/*==============================================================*/
/* Index: IX_IRC_AccessionNumber                                */
/*==============================================================*/
create index IX_IRC_AccessionNumber on ImageReviewCheck
(
   AccessionNumber
);

/*==============================================================*/
/* Index: IX_IRC_ExamineType                                    */
/*==============================================================*/
create index IX_IRC_ExamineType on ImageReviewCheck
(
   ExamineType
);

/*==============================================================*/
/* Index: IX_IRC_PerformTime                                    */
/*==============================================================*/
create index IX_IRC_PerformTime on ImageReviewCheck
(
   PerformTime
);

/*==============================================================*/
/* Index: IX_IRC_IsMasculine                                    */
/*==============================================================*/
create index IX_IRC_IsMasculine on ImageReviewCheck
(
   IsMasculine
);

/*==============================================================*/
/* Index: IX_IRC_HospitalId                                     */
/*==============================================================*/
create index IX_IRC_HospitalId on ImageReviewCheck
(
   HospitalId
);

/*==============================================================*/
/* Index: IX_IRC_IsMain                                         */
/*==============================================================*/
create index IX_IRC_IsMain on ImageReviewCheck
(
   IsMain
);

/*==============================================================*/
/* Index: IX_IRC_State                                          */
/*==============================================================*/
create index IX_IRC_State on ImageReviewCheck
(
   State
);

/*==============================================================*/
/* Index: IX_IRF_ExpertTitleCode                                */
/*==============================================================*/
create index IX_IRF_ExpertTitleCode on ImageReviewFee
(
   ExpertTitleCode
);

/*==============================================================*/
/* Index: IX_IRF_ExamineType                                    */
/*==============================================================*/
create index IX_IRF_ExamineType on ImageReviewFee
(
   ExamineType
);

/*==============================================================*/
/* Index: IX_IRP_ServiceId                                      */
/*==============================================================*/
create index IX_IRP_ServiceId on ImageReviewProcess
(
   ServiceId
);

/*==============================================================*/
/* Index: IX_IRP_Event                                          */
/*==============================================================*/
create index IX_IRP_Event on ImageReviewProcess
(
   Event
);

/*==============================================================*/
/* Index: IX_IRP_OCustomerGuid                                  */
/*==============================================================*/
create index IX_IRP_OCustomerGuid on ImageReviewProcess
(
   OperateCustomerGuid
);

/*==============================================================*/
/* Index: IX_IRP_EventTime                                      */
/*==============================================================*/
create index IX_IRP_EventTime on ImageReviewProcess
(
   EventTime
);

/*==============================================================*/
/* Index: IX_IRR_ServiceId                                      */
/*==============================================================*/
create index IX_IRR_ServiceId on ImageReviewReply
(
   ServiceId
);

/*==============================================================*/
/* Index: IX_IRR_CustomerGuid                                   */
/*==============================================================*/
create index IX_IRR_CustomerGuid on ImageReviewReply
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_IRR_Kind                                           */
/*==============================================================*/
create index IX_IRR_Kind on ImageReviewReply
(
   Kind
);

/*==============================================================*/
/* Index: IX_IRR_State                                          */
/*==============================================================*/
create index IX_IRR_State on ImageReviewReply
(
   State
);

/*==============================================================*/
/* Index: IX_IRR_ServiceCenterId                                */
/*==============================================================*/
create index IX_IRR_ServiceCenterId on ImageReviewReply
(
   ServiceCenterId
);

/*==============================================================*/
/* Index: IX_IRR_IsSettled                                      */
/*==============================================================*/
create index IX_IRR_IsSettled on ImageReviewReply
(
   IsSettled
);

/*==============================================================*/
/* Index: IX_IRS_SheduleDate                                    */
/*==============================================================*/
create index IX_IRS_SheduleDate on ImageReviewShedule
(
   SheduleDate
);

/*==============================================================*/
/* Index: IX_IRS_SubjectId                                      */
/*==============================================================*/
create index IX_IRS_SubjectId on ImageReviewShedule
(
   SubjectId
);

/*==============================================================*/
/* Index: IX_IRS_ECustomerGuid                                  */
/*==============================================================*/
create index IX_IRS_ECustomerGuid on ImageReviewShedule
(
   ExpertCustomerGuid
);

/*==============================================================*/
/* Index: IX_IRS_BeginTime                                      */
/*==============================================================*/
create index IX_IRS_BeginTime on ImageReviewShedule
(
   SheduleBeginTime
);

/*==============================================================*/
/* Index: IX_IRS_EndTime                                        */
/*==============================================================*/
create index IX_IRS_EndTime on ImageReviewShedule
(
   SheduleEndTime
);

/*==============================================================*/
/* Index: IX_IRS_ServiceId                                      */
/*==============================================================*/
create index IX_IRS_ServiceId on ImageReviewShedule
(
   ServiceId
);

/*==============================================================*/
/* Index: IX_IRS_CustomerGuid                                   */
/*==============================================================*/
create index IX_IRS_CustomerGuid on ImageReviewShedule
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_NClinic_ServiceId                                  */
/*==============================================================*/
create index IX_NClinic_ServiceId on NetClinic
(
   ServiceId
);

/*==============================================================*/
/* Index: IX_NClinic_CustomerGuid                               */
/*==============================================================*/
create index IX_NClinic_CustomerGuid on NetClinic
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_NClinic_RequestDate                                */
/*==============================================================*/
create index IX_NClinic_RequestDate on NetClinic
(
   RequestDate
);

/*==============================================================*/
/* Index: IX_NClinic_OrderNo                                    */
/*==============================================================*/
create index IX_NClinic_OrderNo on NetClinic
(
   OrderNo
);

/*==============================================================*/
/* Index: IX_NClinic_ExpertCustomerGuid                         */
/*==============================================================*/
create index IX_NClinic_ExpertCustomerGuid on NetClinic
(
   ExpertCustomerGuid
);

/*==============================================================*/
/* Index: IX_NClinic_ServiceCenterId                            */
/*==============================================================*/
create index IX_NClinic_ServiceCenterId on NetClinic
(
   ServiceCenterId
);

/*==============================================================*/
/* Index: IX_NClinic_ServiceState                               */
/*==============================================================*/
create index IX_NClinic_ServiceState on NetClinic
(
   ServiceState
);

/*==============================================================*/
/* Index: IX_NCKW_ServiceId                                     */
/*==============================================================*/
create index IX_NCKW_ServiceId on NetClinicKeyWord
(
   ServiceId
);

/*==============================================================*/
/* Index: IX_NCP_ServiceId                                      */
/*==============================================================*/
create index IX_NCP_ServiceId on NetClinicProcess
(
   ServiceId
);

/*==============================================================*/
/* Index: IX_NCP_Event                                          */
/*==============================================================*/
create index IX_NCP_Event on NetClinicProcess
(
   Event
);

/*==============================================================*/
/* Index: IX_NCP_OCustomerGuid                                  */
/*==============================================================*/
create index IX_NCP_OCustomerGuid on NetClinicProcess
(
   OperateCustomerGuid
);

/*==============================================================*/
/* Index: IX_NCP_EventTime                                      */
/*==============================================================*/
create index IX_NCP_EventTime on NetClinicProcess
(
   EventTime
);

/*==============================================================*/
/* Index: IX_PE_ServiceId                                       */
/*==============================================================*/
create index IX_PE_ServiceId on PatientEvaluation
(
   ServiceId
);

/*==============================================================*/
/* Index: IX_PE_Kind                                            */
/*==============================================================*/
create index IX_PE_Kind on PatientEvaluation
(
   Kind
);

/*==============================================================*/
/* Index: IX_PE_DCustomerGuid                                   */
/*==============================================================*/
create index IX_PE_DCustomerGuid on PatientEvaluation
(
   DoctorCustomerGuid
);

/*==============================================================*/
/* Index: IX_PE_CustomerGuid                                    */
/*==============================================================*/
create index IX_PE_CustomerGuid on PatientEvaluation
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_PE_EvaluationDate                                  */
/*==============================================================*/
create index IX_PE_EvaluationDate on PatientEvaluation
(
   EvaluationDate
);

/*==============================================================*/
/* Index: IX_PHM_BusinessId                                     */
/*==============================================================*/
create index IX_PHM_BusinessId on PublicHealthMedia
(
   BusinessId
);

/*==============================================================*/
/* Index: IX_PHM_BusinessKind                                   */
/*==============================================================*/
create index IX_PHM_BusinessKind on PublicHealthMedia
(
   BusinessKind
);

/*==============================================================*/
/* Index: IX_PHM_Scene                                          */
/*==============================================================*/
create index IX_PHM_Scene on PublicHealthMedia
(
   Scene
);

/*==============================================================*/
/* Index: IX_RKW_ServiceId                                      */
/*==============================================================*/
create index IX_RKW_ServiceId on ReviewKeyWord
(
   ServiceId
);

/*==============================================================*/
/* Index: IX_SSubject_CenterId                                  */
/*==============================================================*/
create index IX_SSubject_CenterId on SheduleSubject
(
   ServiceCenterId
);

/*==============================================================*/
/* Index: IX_SSO_SubjectId                                      */
/*==============================================================*/
create index IX_SSO_SubjectId on SheduleSubjectOffice
(
   SubjectId
);

/*==============================================================*/
/* Index: IX_SExpert_SubjectId                                  */
/*==============================================================*/
create index IX_SExpert_SubjectId on SubjectExpert
(
   SubjectId
);

/*==============================================================*/
/* Index: IX_SExpert_CustomerGuid                               */
/*==============================================================*/
create index IX_SExpert_CustomerGuid on SubjectExpert
(
   ExpertCustomerGuid
);

/*==============================================================*/
/* Index: IX_WR_ServiceId                                       */
/*==============================================================*/
create index IX_WR_ServiceId on WordRecord
(
   ServiceId
);

/*==============================================================*/
/* Index: IX_WR_ServiceKind                                     */
/*==============================================================*/
create index IX_WR_ServiceKind on WordRecord
(
   ServiceKind
);

/*==============================================================*/
/* Index: IX_WR_Type                                            */
/*==============================================================*/
create index IX_WR_Type on WordRecord
(
   Type
);

/*==============================================================*/
/* Index: IX_WR_Kind                                            */
/*==============================================================*/
create index IX_WR_Kind on WordRecord
(
   Kind
);

/*==============================================================*/
/* Index: IX_WR_IsRead                                          */
/*==============================================================*/
create index IX_WR_IsRead on WordRecord
(
   IsRead
);

