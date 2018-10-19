/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2018/4/19 11:45:15                           */
/*==============================================================*/


/*==============================================================*/
/* Index: IX_CDC_ServiceCenterId                                */
/*==============================================================*/
create index IX_CDC_ServiceCenterId on CloudDiagnosisConfig
(
   ServiceCenterId
);

/*==============================================================*/
/* Index: IX_CDC_ConfigCode                                     */
/*==============================================================*/
create index IX_CDC_ConfigCode on CloudDiagnosisConfig
(
   ConfigCode
);

/*==============================================================*/
/* Index: IX_CDEC_ExpertUID                                     */
/*==============================================================*/
create index IX_CDEC_ExpertUID on CloudDiagnosisExpertCount
(
   ExpertUID
);

/*==============================================================*/
/* Index: IX_CDRL_ServiceId                                     */
/*==============================================================*/
create index IX_CDRL_ServiceId on CloudDiagnosisReviseList
(
   ServiceId
);

/*==============================================================*/
/* Index: IX_CDRL_RHCode                                        */
/*==============================================================*/
create index IX_CDRL_RHCode on CloudDiagnosisReviseList
(
   RequestHospitalCode
);

/*==============================================================*/
/* Index: IX_CDRL_DiagnosisKind                                 */
/*==============================================================*/
create index IX_CDRL_DiagnosisKind on CloudDiagnosisReviseList
(
   DiagnosisKind
);

/*==============================================================*/
/* Index: IX_CDWF_ServiceId                                     */
/*==============================================================*/
create index IX_CDWF_ServiceId on CloudDiagnosisWorkFlow
(
   ServiceId
);

/*==============================================================*/
/* Index: IX_CDWF_CUserUID                                      */
/*==============================================================*/
create index IX_CDWF_CUserUID on CloudDiagnosisWorkFlow
(
   CreateUserUID
);

/*==============================================================*/
/* Index: IX_CDWF_PUserUID                                      */
/*==============================================================*/
create index IX_CDWF_PUserUID on CloudDiagnosisWorkFlow
(
   ProcessUserUID
);

/*==============================================================*/
/* Index: IX_CIU_ServiceId                                      */
/*==============================================================*/
create index IX_CIU_ServiceId on CloudImagesUrl
(
   ServiceId
);

/*==============================================================*/
/* Index: IX_CD_LookupKey                                       */
/*==============================================================*/
create index IX_CD_LookupKey on CriticalDictionary
(
   LookupKey
);

/*==============================================================*/
/* Index: IX_CD_ServiceCenterid                                 */
/*==============================================================*/
create index IX_CD_ServiceCenterid on CriticalDictionary
(
   ServiceCenterid
);

/*==============================================================*/
/* Index: IX_CD_State                                           */
/*==============================================================*/
create index IX_CD_State on CriticalDictionary
(
   State
);

/*==============================================================*/
/* Index: IX_CDC_LookupKey                                      */
/*==============================================================*/
create index IX_CDC_LookupKey on CriticalDictionaryCatalog
(
   LookupKey
);

/*==============================================================*/
/* Index: IX_CDC_TypeCode                                       */
/*==============================================================*/
create index IX_CDC_TypeCode on CriticalDictionaryCatalog
(
   TypeCode
);

/*==============================================================*/
/* Index: IX_CVL_ServiceId                                      */
/*==============================================================*/
create index IX_CVL_ServiceId on CriticalValuesLog
(
   ServiceId
);

/*==============================================================*/
/* Index: IX_CVL_ExpertUID                                      */
/*==============================================================*/
create index IX_CVL_ExpertUID on CriticalValuesLog
(
   ExpertUID
);

/*==============================================================*/
/* Index: IX_CVL_NoticeUserId                                   */
/*==============================================================*/
create index IX_CVL_NoticeUserId on CriticalValuesLog
(
   NoticeUserId
);

/*==============================================================*/
/* Index: IX_CVL_DealUserId                                     */
/*==============================================================*/
create index IX_CVL_DealUserId on CriticalValuesLog
(
   DealUserId
);

/*==============================================================*/
/* Index: IX_CI_CustomerGuid                                    */
/*==============================================================*/
create index IX_CI_CustomerGuid on CustomerImages
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_DFee_DiagnosisKindCode                             */
/*==============================================================*/
create index IX_DFee_DiagnosisKindCode on DiagnosisFee
(
   DiagnosisKindCode
);

/*==============================================================*/
/* Index: IX_DFee_ExamineType                                   */
/*==============================================================*/
create index IX_DFee_ExamineType on DiagnosisFee
(
   ExamineType
);

/*==============================================================*/
/* Index: IX_DFee_ServiceCenterId                               */
/*==============================================================*/
create index IX_DFee_ServiceCenterId on DiagnosisFee
(
   ServiceCenterId
);

/*==============================================================*/
/* Index: IX_DF_ServiceId                                       */
/*==============================================================*/
create index IX_DF_ServiceId on DiagnosisFilm
(
   ServiceId
);

/*==============================================================*/
/* Index: IX_DF_IsPrint                                         */
/*==============================================================*/
create index IX_DF_IsPrint on DiagnosisFilm
(
   IsPrint
);

/*==============================================================*/
/* Index: IX_DG_ServiceId                                       */
/*==============================================================*/
create index IX_DG_ServiceId on DiagnosisGrade
(
   ServiceId
);

/*==============================================================*/
/* Index: IX_DG_Modality                                        */
/*==============================================================*/
create index IX_DG_Modality on DiagnosisGrade
(
   Modality
);

/*==============================================================*/
/* Index: IX_DG_ExamineDate                                     */
/*==============================================================*/
create index IX_DG_ExamineDate on DiagnosisGrade
(
   ExamineDate
);

/*==============================================================*/
/* Index: IX_DG_ReportCustomerGuid                              */
/*==============================================================*/
create index IX_DG_ReportCustomerGuid on DiagnosisGrade
(
   ReportCustomerGuid
);

/*==============================================================*/
/* Index: IX_DG_RequestCustomerGuid                             */
/*==============================================================*/
create index IX_DG_RequestCustomerGuid on DiagnosisGrade
(
   RequestCustomerGuid
);

/*==============================================================*/
/* Index: IX_DG_RequestHospitalCode                             */
/*==============================================================*/
create index IX_DG_RequestHospitalCode on DiagnosisGrade
(
   RequestHospitalCode
);

/*==============================================================*/
/* Index: IX_DG_ServiceCenterId                                 */
/*==============================================================*/
create index IX_DG_ServiceCenterId on DiagnosisGrade
(
   ServiceCenterId
);

/*==============================================================*/
/* Index: IX_DG_Level                                           */
/*==============================================================*/
create index IX_DG_Level on DiagnosisGrade
(
   Level
);

/*==============================================================*/
/* Index: IX_DG_GradeDate                                       */
/*==============================================================*/
create index IX_DG_GradeDate on DiagnosisGrade
(
   GradeDate
);

/*==============================================================*/
/* Index: IX_DImage_ServiceId                                   */
/*==============================================================*/
create index IX_DImage_ServiceId on DiagnosisImage
(
   ServiceId
);

/*==============================================================*/
/* Index: IX_DMS_StatisticsId                                   */
/*==============================================================*/
create index IX_DMS_StatisticsId on DiagnosisMonthStatistics
(
   StatisticsId
);

/*==============================================================*/
/* Index: IX_DRP_ServiceId                                      */
/*==============================================================*/
create index IX_DRP_ServiceId on DiagnosisReportPrint
(
   ServiceId
);

/*==============================================================*/
/* Index: IX_DRP_PrintOperateUID                                */
/*==============================================================*/
create index IX_DRP_PrintOperateUID on DiagnosisReportPrint
(
   PrintOperateUID
);

/*==============================================================*/
/* Index: IX_DTOL_ServiceId                                     */
/*==============================================================*/
create index IX_DTOL_ServiceId on DiagnosisTimeOutLog
(
   ServiceId
);

/*==============================================================*/
/* Index: IX_DTOL_ExpertUID                                     */
/*==============================================================*/
create index IX_DTOL_ExpertUID on DiagnosisTimeOutLog
(
   ExpertUID
);

/*==============================================================*/
/* Index: IX_DTOT_ExpertUID                                     */
/*==============================================================*/
create index IX_DTOT_ExpertUID on DiagnosisTimeOutTask
(
   ExpertUID
);

/*==============================================================*/
/* Index: IX_DTOT_ServiceId                                     */
/*==============================================================*/
create index IX_DTOT_ServiceId on DiagnosisTimeOutTask
(
   ServiceId
);

/*==============================================================*/
/* Index: IX_DTOT_TaskState                                     */
/*==============================================================*/
create index IX_DTOT_TaskState on DiagnosisTimeOutTask
(
   TaskState
);

/*==============================================================*/
/* Index: IX_DTOT_CreateTime                                    */
/*==============================================================*/
create index IX_DTOT_CreateTime on DiagnosisTimeOutTask
(
   CreateTime
);

/*==============================================================*/
/* Index: IX_ER_ServiceId                                       */
/*==============================================================*/
create index IX_ER_ServiceId on EcgRequest
(
   ServiceId
);

/*==============================================================*/
/* Index: IX_ER_GPatientId                                      */
/*==============================================================*/
create index IX_ER_GPatientId on EcgRequest
(
   GPatientId
);

/*==============================================================*/
/* Index: IX_ER_PatientId                                       */
/*==============================================================*/
create index IX_ER_PatientId on EcgRequest
(
   PatientId
);

/*==============================================================*/
/* Index: IX_ER_StayInsu                                        */
/*==============================================================*/
create index IX_ER_StayInsu on EcgRequest
(
   StayInsu
);

/*==============================================================*/
/* Index: IX_ER_RequestHospitalCode                             */
/*==============================================================*/
create index IX_ER_RequestHospitalCode on EcgRequest
(
   RequestHospitalCode
);

/*==============================================================*/
/* Index: IX_ER_CustomerGuid                                    */
/*==============================================================*/
create index IX_ER_CustomerGuid on EcgRequest
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_ER_RequestDate                                     */
/*==============================================================*/
create index IX_ER_RequestDate on EcgRequest
(
   RequestDate
);

/*==============================================================*/
/* Index: IX_ER_ServiceCenterId                                 */
/*==============================================================*/
create index IX_ER_ServiceCenterId on EcgRequest
(
   ServiceCenterId
);

/*==============================================================*/
/* Index: IX_ER_ServiceState                                    */
/*==============================================================*/
create index IX_ER_ServiceState on EcgRequest
(
   ServiceState
);

/*==============================================================*/
/* Index: IX_ER_IsOccupy                                        */
/*==============================================================*/
create index IX_ER_IsOccupy on EcgRequest
(
   IsOccupy
);

/*==============================================================*/
/* Index: IX_ER_IsPrint                                         */
/*==============================================================*/
create index IX_ER_IsPrint on EcgRequest
(
   IsPrint
);

/*==============================================================*/
/* Index: IX_ER_AccessionNumber                                 */
/*==============================================================*/
create index IX_ER_AccessionNumber on EcgRequest
(
   AccessionNumber
);

/*==============================================================*/
/* Index: IX_ER_MedRecNo                                        */
/*==============================================================*/
create index IX_ER_MedRecNo on EcgRequest
(
   MedRecNo
);

/*==============================================================*/
/* Index: IX_ER_ScanState                                       */
/*==============================================================*/
create index IX_ER_ScanState on EcgRequest
(
   ScanState
);

/*==============================================================*/
/* Index: IX_ER_IsToConsult                                     */
/*==============================================================*/
create index IX_ER_IsToConsult on EcgRequest
(
   IsToConsult
);

/*==============================================================*/
/* Index: IX_ER_AssignExpert                                    */
/*==============================================================*/
create index IX_ER_AssignExpert on EcgRequest
(
   AssignExpert
);

/*==============================================================*/
/* Index: IX_ERR_ServiceId                                      */
/*==============================================================*/
create index IX_ERR_ServiceId on EcgRequestReply
(
   ServiceId
);

/*==============================================================*/
/* Index: IX_ERR_WCustomerGuid                                  */
/*==============================================================*/
create index IX_ERR_WCustomerGuid on EcgRequestReply
(
   WriteCustomerGuid
);

/*==============================================================*/
/* Index: IX_ERR_WriteTime                                      */
/*==============================================================*/
create index IX_ERR_WriteTime on EcgRequestReply
(
   WriteTime
);

/*==============================================================*/
/* Index: IX_ERR_ACustomerGuid                                  */
/*==============================================================*/
create index IX_ERR_ACustomerGuid on EcgRequestReply
(
   AuditCustomerGuid
);

/*==============================================================*/
/* Index: IX_ERR_AuditTime                                      */
/*==============================================================*/
create index IX_ERR_AuditTime on EcgRequestReply
(
   AuditTime
);

/*==============================================================*/
/* Index: IX_ERR_RCustomerGuid                                  */
/*==============================================================*/
create index IX_ERR_RCustomerGuid on EcgRequestReply
(
   ReviseCustomerGuid
);

/*==============================================================*/
/* Index: IX_ERR_ReviseTime                                     */
/*==============================================================*/
create index IX_ERR_ReviseTime on EcgRequestReply
(
   ReviseTime
);

/*==============================================================*/
/* Index: IX_ERR_IsUrgencyReport                                */
/*==============================================================*/
create index IX_ERR_IsUrgencyReport on EcgRequestReply
(
   IsUrgencyReport
);

/*==============================================================*/
/* Index: IX_ECR_CustomerGuid                                   */
/*==============================================================*/
create index IX_ECR_CustomerGuid on ExpertCloudRight
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_FR_ServiceId                                       */
/*==============================================================*/
create index IX_FR_ServiceId on FundusRequest
(
   ServiceId
);

/*==============================================================*/
/* Index: IX_FR_GPatientId                                      */
/*==============================================================*/
create index IX_FR_GPatientId on FundusRequest
(
   GPatientId
);

/*==============================================================*/
/* Index: IX_FR_PatientId                                       */
/*==============================================================*/
create index IX_FR_PatientId on FundusRequest
(
   PatientId
);

/*==============================================================*/
/* Index: IX_FR_StayInsu                                        */
/*==============================================================*/
create index IX_FR_StayInsu on FundusRequest
(
   StayInsu
);

/*==============================================================*/
/* Index: IX_FR_RequestHospitalCode                             */
/*==============================================================*/
create index IX_FR_RequestHospitalCode on FundusRequest
(
   RequestHospitalCode
);

/*==============================================================*/
/* Index: IX_FR_CustomerGuid                                    */
/*==============================================================*/
create index IX_FR_CustomerGuid on FundusRequest
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_FR_RequestDate                                     */
/*==============================================================*/
create index IX_FR_RequestDate on FundusRequest
(
   RequestDate
);

/*==============================================================*/
/* Index: IX_FR_ServiceCenterId                                 */
/*==============================================================*/
create index IX_FR_ServiceCenterId on FundusRequest
(
   ServiceCenterId
);

/*==============================================================*/
/* Index: IX_FR_ServiceState                                    */
/*==============================================================*/
create index IX_FR_ServiceState on FundusRequest
(
   ServiceState
);

/*==============================================================*/
/* Index: IX_FR_IsOccupy                                        */
/*==============================================================*/
create index IX_FR_IsOccupy on FundusRequest
(
   IsOccupy
);

/*==============================================================*/
/* Index: IX_FR_IsPrint                                         */
/*==============================================================*/
create index IX_FR_IsPrint on FundusRequest
(
   IsPrint
);

/*==============================================================*/
/* Index: IX_FR_AccessionNumber                                 */
/*==============================================================*/
create index IX_FR_AccessionNumber on FundusRequest
(
   AccessionNumber
);

/*==============================================================*/
/* Index: IX_FR_MedRecNo                                        */
/*==============================================================*/
create index IX_FR_MedRecNo on FundusRequest
(
   MedRecNo
);

/*==============================================================*/
/* Index: IX_FR_IsToConsult                                     */
/*==============================================================*/
create index IX_FR_IsToConsult on FundusRequest
(
   IsToConsult
);

/*==============================================================*/
/* Index: IX_FRR_ServiceId                                      */
/*==============================================================*/
create index IX_FRR_ServiceId on FundusRequestReply
(
   ServiceId
);

/*==============================================================*/
/* Index: IX_FRR_WCustomerGuid                                  */
/*==============================================================*/
create index IX_FRR_WCustomerGuid on FundusRequestReply
(
   WriteCustomerGuid
);

/*==============================================================*/
/* Index: IX_FRR_WriteTime                                      */
/*==============================================================*/
create index IX_FRR_WriteTime on FundusRequestReply
(
   WriteTime
);

/*==============================================================*/
/* Index: IX_FRR_ACustomerGuid                                  */
/*==============================================================*/
create index IX_FRR_ACustomerGuid on FundusRequestReply
(
   AuditCustomerGuid
);

/*==============================================================*/
/* Index: IX_FRR_AuditTime                                      */
/*==============================================================*/
create index IX_FRR_AuditTime on FundusRequestReply
(
   AuditTime
);

/*==============================================================*/
/* Index: IX_FRR_RCustomerGuid                                  */
/*==============================================================*/
create index IX_FRR_RCustomerGuid on FundusRequestReply
(
   ReviseCustomerGuid
);

/*==============================================================*/
/* Index: IX_FRR_ReviseTime                                     */
/*==============================================================*/
create index IX_FRR_ReviseTime on FundusRequestReply
(
   ReviseTime
);

/*==============================================================*/
/* Index: IX_FRR_IsUrgencyReport                                */
/*==============================================================*/
create index IX_FRR_IsUrgencyReport on FundusRequestReply
(
   IsUrgencyReport
);

/*==============================================================*/
/* Index: IX_GT_Modality                                        */
/*==============================================================*/
create index IX_GT_Modality on GradeTemplate
(
   Modality
);

/*==============================================================*/
/* Index: IX_GT_ServiceCenterId                                 */
/*==============================================================*/
create index IX_GT_ServiceCenterId on GradeTemplate
(
   ServiceCenterId
);

/*==============================================================*/
/* Index: IX_HEST_StatisticsId                                  */
/*==============================================================*/
create index IX_HEST_StatisticsId on HospitalExpertStatisticsTotal
(
   StatisticsId
);

/*==============================================================*/
/* Index: IX_IDL_GPatientId                                     */
/*==============================================================*/
create index IX_IDL_GPatientId on ImageDiagnosisList
(
   GPatientId
);

/*==============================================================*/
/* Index: IX_IDL_HealthCardNo                                   */
/*==============================================================*/
create index IX_IDL_HealthCardNo on ImageDiagnosisList
(
   HealthCardNo
);

/*==============================================================*/
/* Index: IX_IDL_PatientName                                    */
/*==============================================================*/
create index IX_IDL_PatientName on ImageDiagnosisList
(
   PatientName
);

/*==============================================================*/
/* Index: IX_IDL_IdNumber                                       */
/*==============================================================*/
create index IX_IDL_IdNumber on ImageDiagnosisList
(
   IdNumber
);

/*==============================================================*/
/* Index: IX_IDL_MedNo                                          */
/*==============================================================*/
create index IX_IDL_MedNo on ImageDiagnosisList
(
   MedNo
);

/*==============================================================*/
/* Index: IX_IDL_ServiceId                                      */
/*==============================================================*/
create index IX_IDL_ServiceId on ImageDiagnosisList
(
   ServiceId
);

/*==============================================================*/
/* Index: IX_IDL_RegisterDate                                   */
/*==============================================================*/
create index IX_IDL_RegisterDate on ImageDiagnosisList
(
   RegisterDate
);

/*==============================================================*/
/* Index: IX_IDL_ServiceCenterId                                */
/*==============================================================*/
create index IX_IDL_ServiceCenterId on ImageDiagnosisList
(
   ServiceCenterId
);

/*==============================================================*/
/* Index: IX_IDL_RequestDate                                    */
/*==============================================================*/
create index IX_IDL_RequestDate on ImageDiagnosisList
(
   RequestDate
);

/*==============================================================*/
/* Index: IX_IDL_ServiceState                                   */
/*==============================================================*/
create index IX_IDL_ServiceState on ImageDiagnosisList
(
   ServiceState
);

/*==============================================================*/
/* Index: IX_IDL_ExamineType                                    */
/*==============================================================*/
create index IX_IDL_ExamineType on ImageDiagnosisList
(
   ExamineType
);

/*==============================================================*/
/* Index: IX_IDL_StayInsu                                       */
/*==============================================================*/
create index IX_IDL_StayInsu on ImageDiagnosisList
(
   StayInsu
);

/*==============================================================*/
/* Index: IX_IDL_OccupyUID                                      */
/*==============================================================*/
create index IX_IDL_OccupyUID on ImageDiagnosisList
(
   OccupyUID
);

/*==============================================================*/
/* Index: IX_IDL_IsOccupy                                       */
/*==============================================================*/
create index IX_IDL_IsOccupy on ImageDiagnosisList
(
   IsOccupy
);

/*==============================================================*/
/* Index: IX_IDL_AssignExpert                                   */
/*==============================================================*/
create index IX_IDL_AssignExpert on ImageDiagnosisList
(
   AssignExpertName
);

/*==============================================================*/
/* Index: IX_IDL_RequestHospitalCode                            */
/*==============================================================*/
create index IX_IDL_RequestHospitalCode on ImageDiagnosisList
(
   RequestHospitalCode
);

/*==============================================================*/
/* Index: IX_IDL_CustomerName                                   */
/*==============================================================*/
create index IX_IDL_CustomerName on ImageDiagnosisList
(
   CustomerName
);

/*==============================================================*/
/* Index: IX_IDL_MedRecNo                                       */
/*==============================================================*/
create index IX_IDL_MedRecNo on ImageDiagnosisList
(
   MedRecNo
);

/*==============================================================*/
/* Index: IX_IDL_AccessionNumber                                */
/*==============================================================*/
create index IX_IDL_AccessionNumber on ImageDiagnosisList
(
   AccessionNumber
);

/*==============================================================*/
/* Index: IX_IDL_PatientId                                      */
/*==============================================================*/
create index IX_IDL_PatientId on ImageDiagnosisList
(
   PatientId
);

/*==============================================================*/
/* Index: IX_IDL_WriteTime                                      */
/*==============================================================*/
create index IX_IDL_WriteTime on ImageDiagnosisList
(
   WriteTime
);

/*==============================================================*/
/* Index: IX_IDL_WriteCustomerName                              */
/*==============================================================*/
create index IX_IDL_WriteCustomerName on ImageDiagnosisList
(
   WriteCustomerName
);

/*==============================================================*/
/* Index: IX_IDL_AuditTime                                      */
/*==============================================================*/
create index IX_IDL_AuditTime on ImageDiagnosisList
(
   AuditTime
);

/*==============================================================*/
/* Index: IX_IDL_AuditCustomerName                              */
/*==============================================================*/
create index IX_IDL_AuditCustomerName on ImageDiagnosisList
(
   AuditCustomerName
);

/*==============================================================*/
/* Index: IX_IDL_ReviseTime                                     */
/*==============================================================*/
create index IX_IDL_ReviseTime on ImageDiagnosisList
(
   ReviseTime
);

/*==============================================================*/
/* Index: IX_IDL_ReviseCustomerName                             */
/*==============================================================*/
create index IX_IDL_ReviseCustomerName on ImageDiagnosisList
(
   ReviseCustomerName
);

/*==============================================================*/
/* Index: IX_IDL_UnionIndex1                                    */
/*==============================================================*/
create index IX_IDL_UnionIndex1 on ImageDiagnosisList
(
   Priority,
   StayInsu
);

/*==============================================================*/
/* Index: IX_IDL_UnionIndex2                                    */
/*==============================================================*/
create index IX_IDL_UnionIndex2 on ImageDiagnosisList
(
   AgeUnit,
   Age
);

/*==============================================================*/
/* Index: IX_IDL_UnionIndex3                                    */
/*==============================================================*/
create index IX_IDL_UnionIndex3 on ImageDiagnosisList
(
   IsOccupy,
   ServiceState
);

/*==============================================================*/
/* Index: IX_IDL_UnionIndex4                                    */
/*==============================================================*/
create index IX_IDL_UnionIndex4 on ImageDiagnosisList
(
   IsOccupy,
   Priority,
   RequestDate,
   Id
);

/*==============================================================*/
/* Index: IX_IO_ServiceId                                       */
/*==============================================================*/
create index IX_IO_ServiceId on ImageOrder
(
   ServiceId
);

/*==============================================================*/
/* Index: IX_IO_IdNumber                                        */
/*==============================================================*/
create index IX_IO_IdNumber on ImageOrder
(
   IdNumber
);

/*==============================================================*/
/* Index: IX_IO_MedNo                                           */
/*==============================================================*/
create index IX_IO_MedNo on ImageOrder
(
   MedNo
);

/*==============================================================*/
/* Index: IX_IO_HealthCardNo                                    */
/*==============================================================*/
create index IX_IO_HealthCardNo on ImageOrder
(
   HealthCardNo
);

/*==============================================================*/
/* Index: IX_IO_PatientName                                     */
/*==============================================================*/
create index IX_IO_PatientName on ImageOrder
(
   PatientName
);

/*==============================================================*/
/* Index: IX_IO_PhoneCode                                       */
/*==============================================================*/
create index IX_IO_PhoneCode on ImageOrder
(
   PhoneCode
);

/*==============================================================*/
/* Index: IX_IO_PatientId                                       */
/*==============================================================*/
create index IX_IO_PatientId on ImageOrder
(
   PatientId
);

/*==============================================================*/
/* Index: IX_IO_AccessionNumber                                 */
/*==============================================================*/
create index IX_IO_AccessionNumber on ImageOrder
(
   AccessionNumber
);

/*==============================================================*/
/* Index: IX_IO_MedRecNo                                        */
/*==============================================================*/
create index IX_IO_MedRecNo on ImageOrder
(
   MedRecNo
);

/*==============================================================*/
/* Index: IX_IO_ExamineType                                     */
/*==============================================================*/
create index IX_IO_ExamineType on ImageOrder
(
   ExamineType
);

/*==============================================================*/
/* Index: IX_IO_StayInsu                                        */
/*==============================================================*/
create index IX_IO_StayInsu on ImageOrder
(
   StayInsu
);

/*==============================================================*/
/* Index: IX_IO_RequestHospitalCode                             */
/*==============================================================*/
create index IX_IO_RequestHospitalCode on ImageOrder
(
   RequestHospitalCode
);

/*==============================================================*/
/* Index: IX_IO_CustomerGuid                                    */
/*==============================================================*/
create index IX_IO_CustomerGuid on ImageOrder
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_IO_RequestDate                                     */
/*==============================================================*/
create index IX_IO_RequestDate on ImageOrder
(
   RequestDate
);

/*==============================================================*/
/* Index: IX_IO_ServiceCenterId                                 */
/*==============================================================*/
create index IX_IO_ServiceCenterId on ImageOrder
(
   ServiceCenterId
);

/*==============================================================*/
/* Index: IX_IO_ServiceState                                    */
/*==============================================================*/
create index IX_IO_ServiceState on ImageOrder
(
   ServiceState
);

/*==============================================================*/
/* Index: IX_IR_ServiceId                                       */
/*==============================================================*/
create index IX_IR_ServiceId on ImageRequest
(
   ServiceId
);

/*==============================================================*/
/* Index: IX_IR_GPatientId                                      */
/*==============================================================*/
create index IX_IR_GPatientId on ImageRequest
(
   GPatientId
);

/*==============================================================*/
/* Index: IX_IR_PatientId                                       */
/*==============================================================*/
create index IX_IR_PatientId on ImageRequest
(
   PatientId
);

/*==============================================================*/
/* Index: IX_IR_AccessionNumber                                 */
/*==============================================================*/
create index IX_IR_AccessionNumber on ImageRequest
(
   AccessionNumber
);

/*==============================================================*/
/* Index: IX_IR_MedRecNo                                        */
/*==============================================================*/
create index IX_IR_MedRecNo on ImageRequest
(
   MedRecNo
);

/*==============================================================*/
/* Index: IX_IR_ExamineType                                     */
/*==============================================================*/
create index IX_IR_ExamineType on ImageRequest
(
   ExamineType
);

/*==============================================================*/
/* Index: IX_IR_StayInsu                                        */
/*==============================================================*/
create index IX_IR_StayInsu on ImageRequest
(
   StayInsu
);

/*==============================================================*/
/* Index: IX_IR_RequestHospitalCode                             */
/*==============================================================*/
create index IX_IR_RequestHospitalCode on ImageRequest
(
   RequestHospitalCode
);

/*==============================================================*/
/* Index: IX_IR_CustomerGuid                                    */
/*==============================================================*/
create index IX_IR_CustomerGuid on ImageRequest
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_IR_RequestDate                                     */
/*==============================================================*/
create index IX_IR_RequestDate on ImageRequest
(
   RequestDate
);

/*==============================================================*/
/* Index: IX_IR_ServiceCenterId                                 */
/*==============================================================*/
create index IX_IR_ServiceCenterId on ImageRequest
(
   ServiceCenterId
);

/*==============================================================*/
/* Index: IX_IR_ServiceState                                    */
/*==============================================================*/
create index IX_IR_ServiceState on ImageRequest
(
   ServiceState
);

/*==============================================================*/
/* Index: IX_IR_IsBuffer                                        */
/*==============================================================*/
create index IX_IR_IsBuffer on ImageRequest
(
   IsBuffer
);

/*==============================================================*/
/* Index: IX_IR_IsDownload                                      */
/*==============================================================*/
create index IX_IR_IsDownload on ImageRequest
(
   IsDownload
);

/*==============================================================*/
/* Index: IX_IR_IsPrint                                         */
/*==============================================================*/
create index IX_IR_IsPrint on ImageRequest
(
   IsPrint
);

/*==============================================================*/
/* Index: IX_IR_IsOccupy                                        */
/*==============================================================*/
create index IX_IR_IsOccupy on ImageRequest
(
   IsOccupy
);

/*==============================================================*/
/* Index: IX_IR_IsToConsult                                     */
/*==============================================================*/
create index IX_IR_IsToConsult on ImageRequest
(
   IsToConsult
);

/*==============================================================*/
/* Index: IX_IRR_ServiceId                                      */
/*==============================================================*/
create index IX_IRR_ServiceId on ImageRequestReply
(
   ServiceId
);

/*==============================================================*/
/* Index: IX_IRR_WCustomerGuid                                  */
/*==============================================================*/
create index IX_IRR_WCustomerGuid on ImageRequestReply
(
   WriteCustomerGuid
);

/*==============================================================*/
/* Index: IX_IRR_WriteTime                                      */
/*==============================================================*/
create index IX_IRR_WriteTime on ImageRequestReply
(
   WriteTime
);

/*==============================================================*/
/* Index: IX_IRR_ACustomerGuid                                  */
/*==============================================================*/
create index IX_IRR_ACustomerGuid on ImageRequestReply
(
   AuditCustomerGuid
);

/*==============================================================*/
/* Index: IX_IRR_AuditTime                                      */
/*==============================================================*/
create index IX_IRR_AuditTime on ImageRequestReply
(
   AuditTime
);

/*==============================================================*/
/* Index: IX_IRR_RCustomerGuid                                  */
/*==============================================================*/
create index IX_IRR_RCustomerGuid on ImageRequestReply
(
   ReviseCustomerGuid
);

/*==============================================================*/
/* Index: IX_IRR_ReviseTime                                     */
/*==============================================================*/
create index IX_IRR_ReviseTime on ImageRequestReply
(
   ReviseTime
);

/*==============================================================*/
/* Index: IX_IRR_IsMasculine                                    */
/*==============================================================*/
create index IX_IRR_IsMasculine on ImageRequestReply
(
   IsMasculine
);

/*==============================================================*/
/* Index: IX_IRR_IsUrgencyReport                                */
/*==============================================================*/
create index IX_IRR_IsUrgencyReport on ImageRequestReply
(
   IsUrgencyReport
);

/*==============================================================*/
/* Index: IX_OP_ServiceId                                       */
/*==============================================================*/
create index IX_OP_ServiceId on OperateProcess
(
   ServiceId
);

/*==============================================================*/
/* Index: IX_OP_OperateTime                                     */
/*==============================================================*/
create index IX_OP_OperateTime on OperateProcess
(
   OperateTime
);

/*==============================================================*/
/* Index: IX_OP_ExpertUID                                       */
/*==============================================================*/
create index IX_OP_ExpertUID on OperateProcess
(
   ExpertUID
);

/*==============================================================*/
/* Index: IX_P_GPatientId                                       */
/*==============================================================*/
create index IX_P_GPatientId on Patient
(
   GPatientId
);

/*==============================================================*/
/* Index: IX_HealthCardNo                                       */
/*==============================================================*/
create index IX_HealthCardNo on Patient
(
   HealthCardNo
);

/*==============================================================*/
/* Index: IX_PatientName                                        */
/*==============================================================*/
create index IX_PatientName on Patient
(
   PatientName
);

/*==============================================================*/
/* Index: IX_PatientBirthday                                        */
/*==============================================================*/
create index IX_PatientBirthday on Patient
(
   PatientBirthday
);

/*==============================================================*/
/* Index: IX_IdNumber                                           */
/*==============================================================*/
create index IX_IdNumber on Patient
(
   IdNumber
);

/*==============================================================*/
/* Index: IX_MedNo                                              */
/*==============================================================*/
create index IX_MedNo on Patient
(
   MedNo
);

/*==============================================================*/
/* Index: IX_P_PhoneCode                                        */
/*==============================================================*/
create index IX_P_PhoneCode on Patient
(
   PhoneCode
);

/*==============================================================*/
/* Index: IX_PS_SheduleDate                                     */
/*==============================================================*/
create index IX_PS_SheduleDate on PostSchedule
(
   SheduleDate
);

/*==============================================================*/
/* Index: IX_PS_PositionId                                      */
/*==============================================================*/
create index IX_PS_PositionId on PostSchedule
(
   PositionId
);

/*==============================================================*/
/* Index: IX_PS_BeginTime                                       */
/*==============================================================*/
create index IX_PS_BeginTime on PostSchedule
(
   BeginTime
);

/*==============================================================*/
/* Index: IX_PS_EndTime                                         */
/*==============================================================*/
create index IX_PS_EndTime on PostSchedule
(
   EndTime
);

/*==============================================================*/
/* Index: IX_PS_ServiceCenterId                                 */
/*==============================================================*/
create index IX_PS_ServiceCenterId on PostSchedule
(
   ServiceCenterId
);

/*==============================================================*/
/* Index: IX_PS_OCode                                           */
/*==============================================================*/
create index IX_PS_OCode on PrinterSetting
(
   OrganizationCode
);

/*==============================================================*/
/* Index: IX_PS_PrinterStatu                                    */
/*==============================================================*/
create index IX_PS_PrinterStatu on PrinterSetting
(
   PrinterStatu
);

/*==============================================================*/
/* Index: IX_PS_OperateUID                                      */
/*==============================================================*/
create index IX_PS_OperateUID on PrinterSetting
(
   OperateUID
);

/*==============================================================*/
/* Index: IX_QP_InstitutionGuid                                 */
/*==============================================================*/
create index IX_QP_InstitutionGuid on QueryProgramme
(
   InstitutionGuid
);

/*==============================================================*/
/* Index: IX_WP_ServiceCenterId                                 */
/*==============================================================*/
create index IX_WP_ServiceCenterId on WorkPosition
(
   ServiceCenterId
);

/*==============================================================*/
/* Index: IX_OverTimeLog_DoctorCustomerGuid                     */
/*==============================================================*/
create index IX_OverTimeLog_DoctorCustomerGuid on OverTimeLog
(
   DoctorCustomerGuid
);

/*==============================================================*/
/* Index: IX_OverTimeLog_OperateTime                            */
/*==============================================================*/
create index IX_OverTimeLog_OperateTime on OverTimeLog
(
   OperateTime
);


