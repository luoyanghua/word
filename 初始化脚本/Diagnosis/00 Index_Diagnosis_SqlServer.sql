/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2000                    */
/* Created on:     2018/4/19 10:17:26                           */
/*==============================================================*/


/*==============================================================*/
/* Index: IX_CDC_ServiceCenterId                                */
/*==============================================================*/
create index IX_CDC_ServiceCenterId on CloudDiagnosisConfig (
ServiceCenterId ASC
)
go

/*==============================================================*/
/* Index: IX_CDC_ConfigCode                                     */
/*==============================================================*/
create index IX_CDC_ConfigCode on CloudDiagnosisConfig (
ConfigCode ASC
)
go

/*==============================================================*/
/* Index: IX_CDEC_ExpertUID                                     */
/*==============================================================*/
create index IX_CDEC_ExpertUID on CloudDiagnosisExpertCount (
ExpertUID ASC
)
go

/*==============================================================*/
/* Index: IX_CDRL_ServiceId                                     */
/*==============================================================*/
create index IX_CDRL_ServiceId on CloudDiagnosisReviseList (
ServiceId ASC
)
go

/*==============================================================*/
/* Index: IX_CDRL_RHCode                                        */
/*==============================================================*/
create index IX_CDRL_RHCode on CloudDiagnosisReviseList (
RequestHospitalCode ASC
)
go

/*==============================================================*/
/* Index: IX_CDRL_DiagnosisKind                                 */
/*==============================================================*/
create index IX_CDRL_DiagnosisKind on CloudDiagnosisReviseList (
DiagnosisKind ASC
)
go

/*==============================================================*/
/* Index: IX_CDWF_ServiceId                                     */
/*==============================================================*/
create index IX_CDWF_ServiceId on CloudDiagnosisWorkFlow (
ServiceId ASC
)
go

/*==============================================================*/
/* Index: IX_CDWF_CUserUID                                      */
/*==============================================================*/
create index IX_CDWF_CUserUID on CloudDiagnosisWorkFlow (
CreateUserUID ASC
)
go

/*==============================================================*/
/* Index: IX_CDWF_PUserUID                                      */
/*==============================================================*/
create index IX_CDWF_PUserUID on CloudDiagnosisWorkFlow (
ProcessUserUID ASC
)
go

/*==============================================================*/
/* Index: IX_CIU_ServiceId                                      */
/*==============================================================*/
create index IX_CIU_ServiceId on CloudImagesUrl (
ServiceId ASC
)
go

/*==============================================================*/
/* Index: IX_CD_LookupKey                                       */
/*==============================================================*/
create index IX_CD_LookupKey on CriticalDictionary (
LookupKey ASC
)
go

/*==============================================================*/
/* Index: IX_CD_ServiceCenterid                                 */
/*==============================================================*/
create index IX_CD_ServiceCenterid on CriticalDictionary (
ServiceCenterid ASC
)
go

/*==============================================================*/
/* Index: IX_CD_State                                           */
/*==============================================================*/
create index IX_CD_State on CriticalDictionary (
State ASC
)
go

/*==============================================================*/
/* Index: IX_CDC_LookupKey                                      */
/*==============================================================*/
create index IX_CDC_LookupKey on CriticalDictionaryCatalog (
LookupKey ASC
)
go

/*==============================================================*/
/* Index: IX_CDC_TypeCode                                       */
/*==============================================================*/
create index IX_CDC_TypeCode on CriticalDictionaryCatalog (
TypeCode ASC
)
go

/*==============================================================*/
/* Index: IX_CVL_ServiceId                                      */
/*==============================================================*/
create index IX_CVL_ServiceId on CriticalValuesLog (
ServiceId ASC
)
go

/*==============================================================*/
/* Index: IX_CVL_ExpertUID                                      */
/*==============================================================*/
create index IX_CVL_ExpertUID on CriticalValuesLog (
ExpertUID ASC
)
go

/*==============================================================*/
/* Index: IX_CVL_NoticeUserId                                   */
/*==============================================================*/
create index IX_CVL_NoticeUserId on CriticalValuesLog (
NoticeUserId ASC
)
go

/*==============================================================*/
/* Index: IX_CVL_DealUserId                                     */
/*==============================================================*/
create index IX_CVL_DealUserId on CriticalValuesLog (
DealUserId ASC
)
go

/*==============================================================*/
/* Index: IX_CI_CustomerGuid                                    */
/*==============================================================*/
create index IX_CI_CustomerGuid on CustomerImages (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_DFee_DiagnosisKindCode                             */
/*==============================================================*/
create index IX_DFee_DiagnosisKindCode on DiagnosisFee (
DiagnosisKindCode ASC
)
go

/*==============================================================*/
/* Index: IX_DFee_ExamineType                                   */
/*==============================================================*/
create index IX_DFee_ExamineType on DiagnosisFee (
ExamineType ASC
)
go

/*==============================================================*/
/* Index: IX_DFee_ServiceCenterId                               */
/*==============================================================*/
create index IX_DFee_ServiceCenterId on DiagnosisFee (
ServiceCenterId ASC
)
go

/*==============================================================*/
/* Index: IX_DF_ServiceId                                       */
/*==============================================================*/
create index IX_DF_ServiceId on DiagnosisFilm (
ServiceId ASC
)
go

/*==============================================================*/
/* Index: IX_DF_IsPrint                                         */
/*==============================================================*/
create index IX_DF_IsPrint on DiagnosisFilm (
IsPrint ASC
)
go

/*==============================================================*/
/* Index: IX_DG_ServiceId                                       */
/*==============================================================*/
create index IX_DG_ServiceId on DiagnosisGrade (
ServiceId ASC
)
go

/*==============================================================*/
/* Index: IX_DG_Modality                                        */
/*==============================================================*/
create index IX_DG_Modality on DiagnosisGrade (
Modality ASC
)
go

/*==============================================================*/
/* Index: IX_DG_ExamineDate                                     */
/*==============================================================*/
create index IX_DG_ExamineDate on DiagnosisGrade (
ExamineDate ASC
)
go

/*==============================================================*/
/* Index: IX_DG_ReportCustomerGuid                              */
/*==============================================================*/
create index IX_DG_ReportCustomerGuid on DiagnosisGrade (
ReportCustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_DG_RequestCustomerGuid                             */
/*==============================================================*/
create index IX_DG_RequestCustomerGuid on DiagnosisGrade (
RequestCustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_DG_RequestHospitalCode                             */
/*==============================================================*/
create index IX_DG_RequestHospitalCode on DiagnosisGrade (
RequestHospitalCode ASC
)
go

/*==============================================================*/
/* Index: IX_DG_ServiceCenterId                                 */
/*==============================================================*/
create index IX_DG_ServiceCenterId on DiagnosisGrade (
ServiceCenterId ASC
)
go

/*==============================================================*/
/* Index: IX_DG_Level                                           */
/*==============================================================*/
create index IX_DG_Level on DiagnosisGrade (
Level ASC
)
go

/*==============================================================*/
/* Index: IX_DG_GradeDate                                       */
/*==============================================================*/
create index IX_DG_GradeDate on DiagnosisGrade (
GradeDate ASC
)
go

/*==============================================================*/
/* Index: IX_DImage_ServiceId                                   */
/*==============================================================*/
create index IX_DImage_ServiceId on DiagnosisImage (
ServiceId ASC
)
go

/*==============================================================*/
/* Index: IX_DMS_StatisticsId                                   */
/*==============================================================*/
create index IX_DMS_StatisticsId on DiagnosisMonthStatistics (
StatisticsId ASC
)
go

/*==============================================================*/
/* Index: IX_DRP_ServiceId                                      */
/*==============================================================*/
create index IX_DRP_ServiceId on DiagnosisReportPrint (
ServiceId ASC
)
go

/*==============================================================*/
/* Index: IX_DRP_PrintOperateUID                                */
/*==============================================================*/
create index IX_DRP_PrintOperateUID on DiagnosisReportPrint (
PrintOperateUID ASC
)
go

/*==============================================================*/
/* Index: IX_DTOL_ServiceId                                     */
/*==============================================================*/
create index IX_DTOL_ServiceId on DiagnosisTimeOutLog (
ServiceId ASC
)
go

/*==============================================================*/
/* Index: IX_DTOL_ExpertUID                                     */
/*==============================================================*/
create index IX_DTOL_ExpertUID on DiagnosisTimeOutLog (
ExpertUID ASC
)
go

/*==============================================================*/
/* Index: IX_DTOT_ExpertUID                                     */
/*==============================================================*/
create index IX_DTOT_ExpertUID on DiagnosisTimeOutTask (
ExpertUID ASC
)
go

/*==============================================================*/
/* Index: IX_DTOT_ServiceId                                     */
/*==============================================================*/
create index IX_DTOT_ServiceId on DiagnosisTimeOutTask (
ServiceId ASC
)
go

/*==============================================================*/
/* Index: IX_DTOT_TaskState                                     */
/*==============================================================*/
create index IX_DTOT_TaskState on DiagnosisTimeOutTask (
TaskState ASC
)
go

/*==============================================================*/
/* Index: IX_DTOT_CreateTime                                    */
/*==============================================================*/
create index IX_DTOT_CreateTime on DiagnosisTimeOutTask (
CreateTime ASC
)
go

/*==============================================================*/
/* Index: IX_ER_ServiceId                                       */
/*==============================================================*/
create index IX_ER_ServiceId on EcgRequest (
ServiceId ASC
)
go

/*==============================================================*/
/* Index: IX_ER_GPatientId                                      */
/*==============================================================*/
create index IX_ER_GPatientId on EcgRequest (
GPatientId ASC
)
go

/*==============================================================*/
/* Index: IX_ER_PatientId                                       */
/*==============================================================*/
create index IX_ER_PatientId on EcgRequest (
PatientId ASC
)
go

/*==============================================================*/
/* Index: IX_ER_StayInsu                                        */
/*==============================================================*/
create index IX_ER_StayInsu on EcgRequest (
StayInsu ASC
)
go

/*==============================================================*/
/* Index: IX_ER_RequestHospitalCode                             */
/*==============================================================*/
create index IX_ER_RequestHospitalCode on EcgRequest (
RequestHospitalCode ASC
)
go

/*==============================================================*/
/* Index: IX_ER_CustomerGuid                                    */
/*==============================================================*/
create index IX_ER_CustomerGuid on EcgRequest (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_ER_RequestDate                                     */
/*==============================================================*/
create index IX_ER_RequestDate on EcgRequest (
RequestDate ASC
)
go

/*==============================================================*/
/* Index: IX_ER_ServiceCenterId                                 */
/*==============================================================*/
create index IX_ER_ServiceCenterId on EcgRequest (
ServiceCenterId ASC
)
go

/*==============================================================*/
/* Index: IX_ER_ServiceState                                    */
/*==============================================================*/
create index IX_ER_ServiceState on EcgRequest (
ServiceState ASC
)
go

/*==============================================================*/
/* Index: IX_ER_IsOccupy                                        */
/*==============================================================*/
create index IX_ER_IsOccupy on EcgRequest (
IsOccupy ASC
)
go

/*==============================================================*/
/* Index: IX_ER_IsPrint                                         */
/*==============================================================*/
create index IX_ER_IsPrint on EcgRequest (
IsPrint ASC
)
go

/*==============================================================*/
/* Index: IX_ER_AccessionNumber                                 */
/*==============================================================*/
create index IX_ER_AccessionNumber on EcgRequest (
AccessionNumber ASC
)
go

/*==============================================================*/
/* Index: IX_ER_MedRecNo                                        */
/*==============================================================*/
create index IX_ER_MedRecNo on EcgRequest (
MedRecNo ASC
)
go

/*==============================================================*/
/* Index: IX_ER_ScanState                                       */
/*==============================================================*/
create index IX_ER_ScanState on EcgRequest (
ScanState ASC
)
go

/*==============================================================*/
/* Index: IX_ER_IsToConsult                                     */
/*==============================================================*/
create index IX_ER_IsToConsult on EcgRequest (
IsToConsult ASC
)
go

/*==============================================================*/
/* Index: IX_ER_AssignExpert                                    */
/*==============================================================*/
create index IX_ER_AssignExpert on EcgRequest (
AssignExpert ASC
)
go

/*==============================================================*/
/* Index: IX_ERR_ServiceId                                      */
/*==============================================================*/
create index IX_ERR_ServiceId on EcgRequestReply (
ServiceId ASC
)
go

/*==============================================================*/
/* Index: IX_ERR_WCustomerGuid                                  */
/*==============================================================*/
create index IX_ERR_WCustomerGuid on EcgRequestReply (
WriteCustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_ERR_WriteTime                                      */
/*==============================================================*/
create index IX_ERR_WriteTime on EcgRequestReply (
WriteTime ASC
)
go

/*==============================================================*/
/* Index: IX_ERR_ACustomerGuid                                  */
/*==============================================================*/
create index IX_ERR_ACustomerGuid on EcgRequestReply (
AuditCustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_ERR_AuditTime                                      */
/*==============================================================*/
create index IX_ERR_AuditTime on EcgRequestReply (
AuditTime ASC
)
go

/*==============================================================*/
/* Index: IX_ERR_RCustomerGuid                                  */
/*==============================================================*/
create index IX_ERR_RCustomerGuid on EcgRequestReply (
ReviseCustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_ERR_ReviseTime                                     */
/*==============================================================*/
create index IX_ERR_ReviseTime on EcgRequestReply (
ReviseTime ASC
)
go

/*==============================================================*/
/* Index: IX_ERR_IsUrgencyReport                                */
/*==============================================================*/
create index IX_ERR_IsUrgencyReport on EcgRequestReply (
IsUrgencyReport ASC
)
go

/*==============================================================*/
/* Index: IX_ECR_CustomerGuid                                   */
/*==============================================================*/
create index IX_ECR_CustomerGuid on ExpertCloudRight (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_FR_ServiceId                                       */
/*==============================================================*/
create index IX_FR_ServiceId on FundusRequest (
ServiceId ASC
)
go

/*==============================================================*/
/* Index: IX_FR_GPatientId                                      */
/*==============================================================*/
create index IX_FR_GPatientId on FundusRequest (
GPatientId ASC
)
go

/*==============================================================*/
/* Index: IX_FR_PatientId                                       */
/*==============================================================*/
create index IX_FR_PatientId on FundusRequest (
PatientId ASC
)
go

/*==============================================================*/
/* Index: IX_FR_StayInsu                                        */
/*==============================================================*/
create index IX_FR_StayInsu on FundusRequest (
StayInsu ASC
)
go

/*==============================================================*/
/* Index: IX_FR_RequestHospitalCode                             */
/*==============================================================*/
create index IX_FR_RequestHospitalCode on FundusRequest (
RequestHospitalCode ASC
)
go

/*==============================================================*/
/* Index: IX_FR_CustomerGuid                                    */
/*==============================================================*/
create index IX_FR_CustomerGuid on FundusRequest (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_FR_RequestDate                                     */
/*==============================================================*/
create index IX_FR_RequestDate on FundusRequest (
RequestDate ASC
)
go

/*==============================================================*/
/* Index: IX_FR_ServiceCenterId                                 */
/*==============================================================*/
create index IX_FR_ServiceCenterId on FundusRequest (
ServiceCenterId ASC
)
go

/*==============================================================*/
/* Index: IX_FR_ServiceState                                    */
/*==============================================================*/
create index IX_FR_ServiceState on FundusRequest (
ServiceState ASC
)
go

/*==============================================================*/
/* Index: IX_FR_IsOccupy                                        */
/*==============================================================*/
create index IX_FR_IsOccupy on FundusRequest (
IsOccupy ASC
)
go

/*==============================================================*/
/* Index: IX_FR_IsPrint                                         */
/*==============================================================*/
create index IX_FR_IsPrint on FundusRequest (
IsPrint ASC
)
go

/*==============================================================*/
/* Index: IX_FR_AccessionNumber                                 */
/*==============================================================*/
create index IX_FR_AccessionNumber on FundusRequest (
AccessionNumber ASC
)
go

/*==============================================================*/
/* Index: IX_FR_MedRecNo                                        */
/*==============================================================*/
create index IX_FR_MedRecNo on FundusRequest (
MedRecNo ASC
)
go

/*==============================================================*/
/* Index: IX_FR_IsToConsult                                     */
/*==============================================================*/
create index IX_FR_IsToConsult on FundusRequest (
IsToConsult ASC
)
go

/*==============================================================*/
/* Index: IX_FRR_ServiceId                                      */
/*==============================================================*/
create index IX_FRR_ServiceId on FundusRequestReply (
ServiceId ASC
)
go

/*==============================================================*/
/* Index: IX_FRR_WCustomerGuid                                  */
/*==============================================================*/
create index IX_FRR_WCustomerGuid on FundusRequestReply (
WriteCustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_FRR_WriteTime                                      */
/*==============================================================*/
create index IX_FRR_WriteTime on FundusRequestReply (
WriteTime ASC
)
go

/*==============================================================*/
/* Index: IX_FRR_ACustomerGuid                                  */
/*==============================================================*/
create index IX_FRR_ACustomerGuid on FundusRequestReply (
AuditCustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_FRR_AuditTime                                      */
/*==============================================================*/
create index IX_FRR_AuditTime on FundusRequestReply (
AuditTime ASC
)
go

/*==============================================================*/
/* Index: IX_FRR_RCustomerGuid                                  */
/*==============================================================*/
create index IX_FRR_RCustomerGuid on FundusRequestReply (
ReviseCustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_FRR_ReviseTime                                     */
/*==============================================================*/
create index IX_FRR_ReviseTime on FundusRequestReply (
ReviseTime ASC
)
go

/*==============================================================*/
/* Index: IX_FRR_IsUrgencyReport                                */
/*==============================================================*/
create index IX_FRR_IsUrgencyReport on FundusRequestReply (
IsUrgencyReport ASC
)
go

/*==============================================================*/
/* Index: IX_GT_Modality                                        */
/*==============================================================*/
create index IX_GT_Modality on GradeTemplate (
Modality ASC
)
go

/*==============================================================*/
/* Index: IX_GT_ServiceCenterId                                 */
/*==============================================================*/
create index IX_GT_ServiceCenterId on GradeTemplate (
ServiceCenterId ASC
)
go

/*==============================================================*/
/* Index: IX_HEST_StatisticsId                                  */
/*==============================================================*/
create index IX_HEST_StatisticsId on HospitalExpertStatisticsTotal (
StatisticsId ASC
)
go

/*==============================================================*/
/* Index: IX_IDL_GPatientId                                     */
/*==============================================================*/
create index IX_IDL_GPatientId on ImageDiagnosisList (
GPatientId ASC
)
go

/*==============================================================*/
/* Index: IX_IDL_HealthCardNo                                   */
/*==============================================================*/
create index IX_IDL_HealthCardNo on ImageDiagnosisList (
HealthCardNo ASC
)
go

/*==============================================================*/
/* Index: IX_IDL_PatientName                                    */
/*==============================================================*/
create index IX_IDL_PatientName on ImageDiagnosisList (
PatientName ASC
)
go

/*==============================================================*/
/* Index: IX_IDL_IdNumber                                       */
/*==============================================================*/
create index IX_IDL_IdNumber on ImageDiagnosisList (
IdNumber ASC
)
go

/*==============================================================*/
/* Index: IX_IDL_MedNo                                          */
/*==============================================================*/
create index IX_IDL_MedNo on ImageDiagnosisList (
MedNo ASC
)
go

/*==============================================================*/
/* Index: IX_IDL_ServiceId                                      */
/*==============================================================*/
create index IX_IDL_ServiceId on ImageDiagnosisList (
ServiceId ASC
)
go

/*==============================================================*/
/* Index: IX_IDL_RegisterDate                                   */
/*==============================================================*/
create index IX_IDL_RegisterDate on ImageDiagnosisList (
RegisterDate ASC
)
go

/*==============================================================*/
/* Index: IX_IDL_ServiceCenterId                                */
/*==============================================================*/
create index IX_IDL_ServiceCenterId on ImageDiagnosisList (
ServiceCenterId ASC
)
go

/*==============================================================*/
/* Index: IX_IDL_RequestDate                                    */
/*==============================================================*/
create index IX_IDL_RequestDate on ImageDiagnosisList (
RequestDate ASC
)
go

/*==============================================================*/
/* Index: IX_IDL_ServiceState                                   */
/*==============================================================*/
create index IX_IDL_ServiceState on ImageDiagnosisList (
ServiceState ASC
)
go

/*==============================================================*/
/* Index: IX_IDL_ExamineType                                    */
/*==============================================================*/
create index IX_IDL_ExamineType on ImageDiagnosisList (
ExamineType ASC
)
go

/*==============================================================*/
/* Index: IX_IDL_StayInsu                                       */
/*==============================================================*/
create index IX_IDL_StayInsu on ImageDiagnosisList (
StayInsu ASC
)
go

/*==============================================================*/
/* Index: IX_IDL_OccupyUID                                      */
/*==============================================================*/
create index IX_IDL_OccupyUID on ImageDiagnosisList (
OccupyUID ASC
)
go

/*==============================================================*/
/* Index: IX_IDL_IsOccupy                                       */
/*==============================================================*/
create index IX_IDL_IsOccupy on ImageDiagnosisList (
IsOccupy ASC
)
go

/*==============================================================*/
/* Index: IX_IDL_AssignExpert                                   */
/*==============================================================*/
create index IX_IDL_AssignExpert on ImageDiagnosisList (
AssignExpertName ASC
)
go

/*==============================================================*/
/* Index: IX_IDL_RequestHospitalCode                            */
/*==============================================================*/
create index IX_IDL_RequestHospitalCode on ImageDiagnosisList (
RequestHospitalCode ASC
)
go

/*==============================================================*/
/* Index: IX_IDL_CustomerName                                   */
/*==============================================================*/
create index IX_IDL_CustomerName on ImageDiagnosisList (
CustomerName ASC
)
go

/*==============================================================*/
/* Index: IX_IDL_MedRecNo                                       */
/*==============================================================*/
create index IX_IDL_MedRecNo on ImageDiagnosisList (
MedRecNo ASC
)
go

/*==============================================================*/
/* Index: IX_IDL_AccessionNumber                                */
/*==============================================================*/
create index IX_IDL_AccessionNumber on ImageDiagnosisList (
AccessionNumber ASC
)
go

/*==============================================================*/
/* Index: IX_IDL_PatientId                                      */
/*==============================================================*/
create index IX_IDL_PatientId on ImageDiagnosisList (
PatientId ASC
)
go

/*==============================================================*/
/* Index: IX_IDL_WriteTime                                      */
/*==============================================================*/
create index IX_IDL_WriteTime on ImageDiagnosisList (
WriteTime ASC
)
go

/*==============================================================*/
/* Index: IX_IDL_WriteCustomerName                              */
/*==============================================================*/
create index IX_IDL_WriteCustomerName on ImageDiagnosisList (
WriteCustomerName ASC
)
go

/*==============================================================*/
/* Index: IX_IDL_AuditTime                                      */
/*==============================================================*/
create index IX_IDL_AuditTime on ImageDiagnosisList (
AuditTime ASC
)
go

/*==============================================================*/
/* Index: IX_IDL_AuditCustomerName                              */
/*==============================================================*/
create index IX_IDL_AuditCustomerName on ImageDiagnosisList (
AuditCustomerName ASC
)
go

/*==============================================================*/
/* Index: IX_IDL_ReviseTime                                     */
/*==============================================================*/
create index IX_IDL_ReviseTime on ImageDiagnosisList (
ReviseTime ASC
)
go

/*==============================================================*/
/* Index: IX_IDL_ReviseCustomerName                             */
/*==============================================================*/
create index IX_IDL_ReviseCustomerName on ImageDiagnosisList (
ReviseCustomerName ASC
)
go

/*==============================================================*/
/* Index: IX_IDL_UnionIndex1                                    */
/*==============================================================*/
create index IX_IDL_UnionIndex1 on ImageDiagnosisList (
Priority ASC,
StayInsu ASC
)
go

/*==============================================================*/
/* Index: IX_IDL_UnionIndex2                                    */
/*==============================================================*/
create index IX_IDL_UnionIndex2 on ImageDiagnosisList (
AgeUnit ASC,
Age ASC
)
go

/*==============================================================*/
/* Index: IX_IDL_UnionIndex3                                    */
/*==============================================================*/
create index IX_IDL_UnionIndex3 on ImageDiagnosisList (
IsOccupy ASC,
ServiceState ASC
)
go

/*==============================================================*/
/* Index: IX_IDL_UnionIndex4                                    */
/*==============================================================*/
create index IX_IDL_UnionIndex4 on ImageDiagnosisList (
IsOccupy ASC,
Priority ASC,
RequestDate ASC,
Id ASC
)
go

/*==============================================================*/
/* Index: IX_IO_ServiceId                                       */
/*==============================================================*/
create index IX_IO_ServiceId on ImageOrder (
ServiceId ASC
)
go

/*==============================================================*/
/* Index: IX_IO_IdNumber                                        */
/*==============================================================*/
create index IX_IO_IdNumber on ImageOrder (
IdNumber ASC
)
go

/*==============================================================*/
/* Index: IX_IO_MedNo                                           */
/*==============================================================*/
create index IX_IO_MedNo on ImageOrder (
MedNo ASC
)
go

/*==============================================================*/
/* Index: IX_IO_HealthCardNo                                    */
/*==============================================================*/
create index IX_IO_HealthCardNo on ImageOrder (
HealthCardNo ASC
)
go

/*==============================================================*/
/* Index: IX_IO_PatientName                                     */
/*==============================================================*/
create index IX_IO_PatientName on ImageOrder (
PatientName ASC
)
go

/*==============================================================*/
/* Index: IX_IO_PhoneCode                                       */
/*==============================================================*/
create index IX_IO_PhoneCode on ImageOrder (
PhoneCode ASC
)
go

/*==============================================================*/
/* Index: IX_IO_PatientId                                       */
/*==============================================================*/
create index IX_IO_PatientId on ImageOrder (
PatientId ASC
)
go

/*==============================================================*/
/* Index: IX_IO_AccessionNumber                                 */
/*==============================================================*/
create index IX_IO_AccessionNumber on ImageOrder (
AccessionNumber ASC
)
go

/*==============================================================*/
/* Index: IX_IO_MedRecNo                                        */
/*==============================================================*/
create index IX_IO_MedRecNo on ImageOrder (
MedRecNo ASC
)
go

/*==============================================================*/
/* Index: IX_IO_ExamineType                                     */
/*==============================================================*/
create index IX_IO_ExamineType on ImageOrder (
ExamineType ASC
)
go

/*==============================================================*/
/* Index: IX_IO_StayInsu                                        */
/*==============================================================*/
create index IX_IO_StayInsu on ImageOrder (
StayInsu ASC
)
go

/*==============================================================*/
/* Index: IX_IO_RequestHospitalCode                             */
/*==============================================================*/
create index IX_IO_RequestHospitalCode on ImageOrder (
RequestHospitalCode ASC
)
go

/*==============================================================*/
/* Index: IX_IO_CustomerGuid                                    */
/*==============================================================*/
create index IX_IO_CustomerGuid on ImageOrder (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_IO_RequestDate                                     */
/*==============================================================*/
create index IX_IO_RequestDate on ImageOrder (
RequestDate ASC
)
go

/*==============================================================*/
/* Index: IX_IO_ServiceCenterId                                 */
/*==============================================================*/
create index IX_IO_ServiceCenterId on ImageOrder (
ServiceCenterId ASC
)
go

/*==============================================================*/
/* Index: IX_IO_ServiceState                                    */
/*==============================================================*/
create index IX_IO_ServiceState on ImageOrder (
ServiceState ASC
)
go

/*==============================================================*/
/* Index: IX_IR_ServiceId                                       */
/*==============================================================*/
create index IX_IR_ServiceId on ImageRequest (
ServiceId ASC
)
go

/*==============================================================*/
/* Index: IX_IR_GPatientId                                      */
/*==============================================================*/
create index IX_IR_GPatientId on ImageRequest (
GPatientId ASC
)
go

/*==============================================================*/
/* Index: IX_IR_PatientId                                       */
/*==============================================================*/
create index IX_IR_PatientId on ImageRequest (
PatientId ASC
)
go

/*==============================================================*/
/* Index: IX_IR_AccessionNumber                                 */
/*==============================================================*/
create index IX_IR_AccessionNumber on ImageRequest (
AccessionNumber ASC
)
go

/*==============================================================*/
/* Index: IX_IR_MedRecNo                                        */
/*==============================================================*/
create index IX_IR_MedRecNo on ImageRequest (
MedRecNo ASC
)
go

/*==============================================================*/
/* Index: IX_IR_ExamineType                                     */
/*==============================================================*/
create index IX_IR_ExamineType on ImageRequest (
ExamineType ASC
)
go

/*==============================================================*/
/* Index: IX_IR_StayInsu                                        */
/*==============================================================*/
create index IX_IR_StayInsu on ImageRequest (
StayInsu ASC
)
go

/*==============================================================*/
/* Index: IX_IR_RequestHospitalCode                             */
/*==============================================================*/
create index IX_IR_RequestHospitalCode on ImageRequest (
RequestHospitalCode ASC
)
go

/*==============================================================*/
/* Index: IX_IR_CustomerGuid                                    */
/*==============================================================*/
create index IX_IR_CustomerGuid on ImageRequest (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_IR_RequestDate                                     */
/*==============================================================*/
create index IX_IR_RequestDate on ImageRequest (
RequestDate ASC
)
go

/*==============================================================*/
/* Index: IX_IR_ServiceCenterId                                 */
/*==============================================================*/
create index IX_IR_ServiceCenterId on ImageRequest (
ServiceCenterId ASC
)
go

/*==============================================================*/
/* Index: IX_IR_ServiceState                                    */
/*==============================================================*/
create index IX_IR_ServiceState on ImageRequest (
ServiceState ASC
)
go

/*==============================================================*/
/* Index: IX_IR_IsBuffer                                        */
/*==============================================================*/
create index IX_IR_IsBuffer on ImageRequest (
IsBuffer ASC
)
go

/*==============================================================*/
/* Index: IX_IR_IsDownload                                      */
/*==============================================================*/
create index IX_IR_IsDownload on ImageRequest (
IsDownload ASC
)
go

/*==============================================================*/
/* Index: IX_IR_IsPrint                                         */
/*==============================================================*/
create index IX_IR_IsPrint on ImageRequest (
IsPrint ASC
)
go

/*==============================================================*/
/* Index: IX_IR_IsOccupy                                        */
/*==============================================================*/
create index IX_IR_IsOccupy on ImageRequest (
IsOccupy ASC
)
go

/*==============================================================*/
/* Index: IX_IR_IsToConsult                                     */
/*==============================================================*/
create index IX_IR_IsToConsult on ImageRequest (
IsToConsult ASC
)
go

/*==============================================================*/
/* Index: IX_IRR_ServiceId                                      */
/*==============================================================*/
create index IX_IRR_ServiceId on ImageRequestReply (
ServiceId ASC
)
go

/*==============================================================*/
/* Index: IX_IRR_WCustomerGuid                                  */
/*==============================================================*/
create index IX_IRR_WCustomerGuid on ImageRequestReply (
WriteCustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_IRR_WriteTime                                      */
/*==============================================================*/
create index IX_IRR_WriteTime on ImageRequestReply (
WriteTime ASC
)
go

/*==============================================================*/
/* Index: IX_IRR_ACustomerGuid                                  */
/*==============================================================*/
create index IX_IRR_ACustomerGuid on ImageRequestReply (
AuditCustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_IRR_AuditTime                                      */
/*==============================================================*/
create index IX_IRR_AuditTime on ImageRequestReply (
AuditTime ASC
)
go

/*==============================================================*/
/* Index: IX_IRR_RCustomerGuid                                  */
/*==============================================================*/
create index IX_IRR_RCustomerGuid on ImageRequestReply (
ReviseCustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_IRR_ReviseTime                                     */
/*==============================================================*/
create index IX_IRR_ReviseTime on ImageRequestReply (
ReviseTime ASC
)
go

/*==============================================================*/
/* Index: IX_IRR_IsMasculine                                    */
/*==============================================================*/
create index IX_IRR_IsMasculine on ImageRequestReply (
IsMasculine ASC
)
go

/*==============================================================*/
/* Index: IX_IRR_IsUrgencyReport                                */
/*==============================================================*/
create index IX_IRR_IsUrgencyReport on ImageRequestReply (
IsUrgencyReport ASC
)
go

/*==============================================================*/
/* Index: IX_OP_ServiceId                                       */
/*==============================================================*/
create index IX_OP_ServiceId on OperateProcess (
ServiceId ASC
)
go

/*==============================================================*/
/* Index: IX_OP_OperateTime                                     */
/*==============================================================*/
create index IX_OP_OperateTime on OperateProcess (
OperateTime ASC
)
go

/*==============================================================*/
/* Index: IX_OP_ExpertUID                                       */
/*==============================================================*/
create index IX_OP_ExpertUID on OperateProcess (
ExpertUID ASC
)
go

/*==============================================================*/
/* Index: IX_P_GPatientId                                       */
/*==============================================================*/
create index IX_P_GPatientId on Patient (
GPatientId ASC
)
go

/*==============================================================*/
/* Index: IX_HealthCardNo                                       */
/*==============================================================*/
create index IX_HealthCardNo on Patient (
HealthCardNo ASC
)
go

/*==============================================================*/
/* Index: IX_PatientName                                        */
/*==============================================================*/
create index IX_PatientName on Patient (
PatientName ASC
)
go

/*==============================================================*/
/* Index: IX_IdNumber                                           */
/*==============================================================*/
create index IX_IdNumber on Patient (
IdNumber ASC
)
go

/*==============================================================*/
/* Index: IX_MedNo                                              */
/*==============================================================*/
create index IX_MedNo on Patient (
MedNo ASC
)
go

/*==============================================================*/
/* Index: IX_P_PhoneCode                                        */
/*==============================================================*/
create index IX_P_PhoneCode on Patient (
PhoneCode ASC
)
go

/*==============================================================*/
/* Index: IX_PS_SheduleDate                                     */
/*==============================================================*/
create index IX_PS_SheduleDate on PostSchedule (
SheduleDate ASC
)
go

/*==============================================================*/
/* Index: IX_PS_PositionId                                      */
/*==============================================================*/
create index IX_PS_PositionId on PostSchedule (
PositionId ASC
)
go

/*==============================================================*/
/* Index: IX_PS_BeginTime                                       */
/*==============================================================*/
create index IX_PS_BeginTime on PostSchedule (
BeginTime ASC
)
go

/*==============================================================*/
/* Index: IX_PS_EndTime                                         */
/*==============================================================*/
create index IX_PS_EndTime on PostSchedule (
EndTime ASC
)
go

/*==============================================================*/
/* Index: IX_PS_ServiceCenterId                                 */
/*==============================================================*/
create index IX_PS_ServiceCenterId on PostSchedule (
ServiceCenterId ASC
)
go

/*==============================================================*/
/* Index: IX_PS_OCode                                           */
/*==============================================================*/
create index IX_PS_OCode on PrinterSetting (
OrganizationCode ASC
)
go

/*==============================================================*/
/* Index: IX_PS_PrinterStatu                                    */
/*==============================================================*/
create index IX_PS_PrinterStatu on PrinterSetting (
PrinterStatu ASC
)
go

/*==============================================================*/
/* Index: IX_PS_OperateUID                                      */
/*==============================================================*/
create index IX_PS_OperateUID on PrinterSetting (
OperateUID ASC
)
go

/*==============================================================*/
/* Index: IX_QP_InstitutionGuid                                 */
/*==============================================================*/
create index IX_QP_InstitutionGuid on QueryProgramme (
InstitutionGuid ASC
)
go

/*==============================================================*/
/* Index: IX_WP_ServiceCenterId                                 */
/*==============================================================*/
create index IX_WP_ServiceCenterId on WorkPosition (
ServiceCenterId ASC
)
go

