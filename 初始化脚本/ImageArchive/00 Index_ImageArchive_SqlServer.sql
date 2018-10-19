/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2000                    */
/* Created on:     2018/4/13 13:54:43                           */
/*==============================================================*/


/*==============================================================*/
/* Index: IX_CSSM_Discountcode                                  */
/*==============================================================*/
create index IX_CSSM_Discountcode on CloudStorageServiceMst (
Discountcode ASC
)
go

/*==============================================================*/
/* Index: IX_DSS_DataSource                                     */
/*==============================================================*/
create index IX_DSS_DataSource on DataSourceSetup (
DataSource ASC
)
go

/*==============================================================*/
/* Index: IX_DSS_ExamineType                                    */
/*==============================================================*/
create index IX_DSS_ExamineType on DataSourceSetup (
ExamineType ASC
)
go

/*==============================================================*/
/* Index: IX_DSSM_InstitutionlCode                              */
/*==============================================================*/
create index IX_DSSM_InstitutionlCode on DataStorageStrategyMst (
InstitutionlCode ASC
)
go

/*==============================================================*/
/* Index: IX_DicomStudy_FileUID                                 */
/*==============================================================*/
create index IX_DicomStudy_FileUID on DicomStudy (
FileUID ASC
)
go

/*==============================================================*/
/* Index: IX_Document_BusinessID                                */
/*==============================================================*/
create index IX_Document_BusinessID on Document (
BusinessID ASC
)
go

/*==============================================================*/
/* Index: IX_Document_FlieSHA                                   */
/*==============================================================*/
create index IX_Document_FlieSHA on Document (
FileSHA ASC
)
go

/*==============================================================*/
/* Index: IX_Document_UploadTime                                */
/*==============================================================*/
create index IX_Document_UploadTime on Document (
UploadTime ASC
)
go

/*==============================================================*/
/* Index: IX_DS_CreateTime                                      */
/*==============================================================*/
create index IX_DS_CreateTime on DocumentInService (
CreateTime ASC
)
go

/*==============================================================*/
/* Index: IX_DS_DeleteFlag                                      */
/*==============================================================*/
create index IX_DS_DeleteFlag on DocumentInService (
DeleteFlag ASC
)
go

/*==============================================================*/
/* Index: IX_ECD_PerformTime                                    */
/*==============================================================*/
create index IX_ECD_PerformTime on ExamCheckData (
PerformTime ASC
)
go


/*==============================================================*/
/* Index: IX_EW_ObservationUID                                  */
/*==============================================================*/
create index IX_EW_ObservationUID on ExamWorkflow (
ObservationUID ASC
)
go

/*==============================================================*/
/* Index: IX_EW_WorkflowName                                    */
/*==============================================================*/
create index IX_EW_WorkflowName on ExamWorkflow (
WorkflowName ASC
)
go

/*==============================================================*/
/* Index: IX_HR_HospitalCode                                    */
/*==============================================================*/
create index IX_HR_HospitalCode on HospitalRegion (
HospitalCode ASC
)
go

/*==============================================================*/
/* Index: IX_ICACP_ProductCode                                  */
/*==============================================================*/
create index IX_ICACP_ProductCode on ICACloudProduct (
ProductCode ASC
)
go

/*==============================================================*/
/* Index: IX_IT_IntegrationType                                 */
/*==============================================================*/
create index IX_IT_IntegrationType on IntegrationTask (
InteractionType ASC
)
go

/*==============================================================*/
/* Index: IX_IT_TaskStatus                                      */
/*==============================================================*/
create index IX_IT_TaskStatus on IntegrationTask (
TaskStatus ASC
)
go

/*==============================================================*/
/* Index: IX_IT_BusinessKeyUID                                  */
/*==============================================================*/
create index IX_IT_BusinessKeyUID on IntegrationTask (
BusinessKeyUID ASC
)
go

/*==============================================================*/
/* Index: IX_IT_BusinessKey                                     */
/*==============================================================*/
create index IX_IT_BusinessKey on IntegrationTask (
BusinessKey ASC
)
go

/*==============================================================*/
/* Index: IX_IT_OrganizationID                                  */
/*==============================================================*/
create index IX_IT_OrganizationID on IntegrationTask (
OrganizationID ASC
)
go

/*==============================================================*/
/* Index: IX_IT_PerformTime                                     */
/*==============================================================*/
create index IX_IT_PerformTime on IntegrationTask (
PerformTime ASC
)
go

/*==============================================================*/
/* Index: IX_JSV_ServiceUID                                     */
/*==============================================================*/
create index IX_JSV_ServiceUID on JobServerVersion (
ServiceUID ASC
)
go

/*==============================================================*/
/* Index: IX_JTMst_ServiceUID                                   */
/*==============================================================*/
create index IX_JTMst_ServiceUID on JobTriggerMst (
ServiceUID ASC
)
go


/*==============================================================*/
/* Index: IX_LCDO_CreateDate                                    */
/*==============================================================*/
create index IX_LCDO_CreateDate on LogClinicDataOperation (
CreateDate ASC
)
go


/*==============================================================*/
/* Index: IX_LE_ExamIndex                                       */
/*==============================================================*/
create index IX_LE_ExamIndex on LogError (
ExamIndex ASC
)
go


/*==============================================================*/
/* Index: IX_LE_WrongTime                                       */
/*==============================================================*/
create index IX_LE_WrongTime on LogError (
WrongTime ASC
)
go


/*==============================================================*/
/* Index: IX_MediaMst_MediaUID                                  */
/*==============================================================*/
create index IX_MediaMst_MediaUID on MediaMst (
MediaUID ASC
)
go


/*==============================================================*/
/* Index: IX_ORE_PID_PIDAA                                      */
/*==============================================================*/
create index IX_ORE_PID_PIDAA on ObservationRequest (
PatientID ASC,
PIDAssigningAuthority ASC
)
go

/*==============================================================*/
/* Index: IX_ORE_PMasterID                                      */
/*==============================================================*/
create index IX_ORE_PMasterID on ObservationRequest (
PatientMasterID ASC
)
go

/*==============================================================*/
/* Index: IX_ORE_VisitUID                                       */
/*==============================================================*/
create index IX_ORE_VisitUID on ObservationRequest (
VisitUID ASC
)
go

/*==============================================================*/
/* Index: IX_ORE_PatientClass                                   */
/*==============================================================*/
create index IX_ORE_PatientClass on ObservationRequest (
PatientClass ASC
)
go

/*==============================================================*/
/* Index: IX_ORE_OrganizationID                                 */
/*==============================================================*/
create index IX_ORE_OrganizationID on ObservationRequest (
OrganizationID ASC
)
go

/*==============================================================*/
/* Index: IX_ORE_ServiceSectID                                  */
/*==============================================================*/
create index IX_ORE_ServiceSectID on ObservationRequest (
ServiceSectID ASC
)
go

/*==============================================================*/
/* Index: IX_ORE_AccessionNumber                                */
/*==============================================================*/
create index IX_ORE_AccessionNumber on ObservationRequest (
AccessionNumber ASC
)
go

/*==============================================================*/
/* Index: IX_ORE_PlacerOrderNO                                  */
/*==============================================================*/
create index IX_ORE_PlacerOrderNO on ObservationRequest (
PlacerOrderNO ASC
)
go

/*==============================================================*/
/* Index: IX_ORE_FOrderNO_FAA                                   */
/*==============================================================*/
create index IX_ORE_FOrderNO_FAA on ObservationRequest (
FillerOrderNO ASC,
FillerAssigningAuthority ASC
)
go

/*==============================================================*/
/* Index: IX_ORE_RegTime                                        */
/*==============================================================*/
create index IX_ORE_RegTime on ObservationRequest (
RegTime ASC
)
go

/*==============================================================*/
/* Index: IX_ORE_ClinicInfoType                                 */
/*==============================================================*/
create index IX_ORE_ClinicInfoType on ObservationRequest (
ClinicInfoType ASC
)
go

/*==============================================================*/
/* Index: IX_ORE_LastUpdateDate                                 */
/*==============================================================*/
create index IX_ORE_LastUpdateDate on ObservationRequest (
LastUpdateDate ASC
)
go

/*==============================================================*/
/* Index: IX_ORE_DeleteFlag                                     */
/*==============================================================*/
create index IX_ORE_DeleteFlag on ObservationRequest (
DeleteFlag ASC
)
go

/*==============================================================*/
/* Index: IX_ORE_ProcedureName                                  */
/*==============================================================*/
create index IX_ORE_ProcedureName on ObservationRequest (
ProcedureName ASC
)
go

/*==============================================================*/
/* Index: IX_ORE_ServiceText                                    */
/*==============================================================*/
create index IX_ORE_ServiceText on ObservationRequest (
ServiceText ASC
)
go

/*==============================================================*/
/* Index: IX_ORE_UserID                                         */
/*==============================================================*/
create index IX_ORE_UserID on ObservationRequest (
ProviderID ASC,
TechnicianID ASC,
ResultAssistantID ASC,
ResultPrincipalID ASC,
ResultReviseID ASC
)
go

/*==============================================================*/
/* Index: IX_ORE_DeptID                                         */
/*==============================================================*/
create index IX_ORE_DeptID on ObservationRequest (
RequestDeptID ASC,
CollectionDept ASC,
ObservationDeptID ASC
)
go

/*==============================================================*/
/* Index: IX_ORE_ObservationDate                                */
/*==============================================================*/
create index IX_ORE_ObservationDate on ObservationRequest (
ObservationDate ASC
)
go

/*==============================================================*/
/* Index: IX_ORE_PreliminaryDate                                */
/*==============================================================*/
create index IX_ORE_PreliminaryDate on ObservationRequest (
PreliminaryDate ASC
)
go

/*==============================================================*/
/* Index: IX_ORE_DataSource                                     */
/*==============================================================*/
create index IX_ORE_DataSource on ObservationRequest (
DataSource ASC
)
go

/*==============================================================*/
/* Index: IX_ORS_ObservationUID                                 */
/*==============================================================*/
create index IX_ORS_ObservationUID on ObservationResult (
ObservationUID ASC
)
go

/*==============================================================*/
/* Index: IX_ORS_ObservationID                                  */
/*==============================================================*/
create index IX_ORS_ObservationID on ObservationResult (
ObservationID ASC
)
go

/*==============================================================*/
/* Index: IX_ORS_ObservationText                                */
/*==============================================================*/
create index IX_ORS_ObservationText on ObservationResult (
ObservationText ASC
)
go

/*==============================================================*/
/* Index: IX_ORS_DeleteFlag                                     */
/*==============================================================*/
create index IX_ORS_DeleteFlag on ObservationResult (
DeleteFlag ASC
)
go

/*==============================================================*/
/* Index: IX_OS_ObservationUID                                  */
/*==============================================================*/
create index IX_OS_ObservationUID on ObservationSchedule (
ObservationUID ASC
)
go

/*==============================================================*/
/* Index: IX_OS_SResourceUID                                    */
/*==============================================================*/
create index IX_OS_SResourceUID on ObservationSchedule (
ScheduleResourceUID ASC
)
go

/*==============================================================*/
/* Index: IX_OS_SStartDate                                      */
/*==============================================================*/
create index IX_OS_SStartDate on ObservationSchedule (
ScheduleStartDate ASC
)
go

/*==============================================================*/
/* Index: IX_PI_PID_PIDAA                                       */
/*==============================================================*/
create index IX_PI_PID_PIDAA on PatientIndex (
PatientID ASC,
PIDAssigningAuthority ASC
)
go

/*==============================================================*/
/* Index: IX_PI_PMasterID                                       */
/*==============================================================*/
create index IX_PI_PMasterID on PatientIndex (
PatientMasterID ASC
)
go

/*==============================================================*/
/* Index: IX_PI_Name                                            */
/*==============================================================*/
create index IX_PI_Name on PatientIndex (
Name ASC
)
go

/*==============================================================*/
/* Index: IX_PI_IDCardNO                                        */
/*==============================================================*/
create index IX_PI_IDCardNO on PatientIndex (
IDCardNO ASC
)
go

/*==============================================================*/
/* Index: IX_PI_HealthCardNO                                    */
/*==============================================================*/
create index IX_PI_HealthCardNO on PatientIndex (
HealthCardNO ASC
)
go

/*==============================================================*/
/* Index: IX_PI_InsuranceID                                     */
/*==============================================================*/
create index IX_PI_InsuranceID on PatientIndex (
InsuranceID ASC
)
go

/*==============================================================*/
/* Index: IX_PI_Status                                          */
/*==============================================================*/
create index IX_PI_Status on PatientIndex (
Status ASC
)
go

/*==============================================================*/
/* Index: IX_PI_CreateOID                                       */
/*==============================================================*/
create index IX_PI_CreateOID on PatientIndex (
CreateOrgnizationID ASC
)
go

/*==============================================================*/
/* Index: IX_SCM_MediaUID                                       */
/*==============================================================*/
create index IX_SCM_MediaUID on ServiceConfigMst (
MediaUID ASC
)
go

/*==============================================================*/
/* Index: IX_SCM_ServiceUID                                     */
/*==============================================================*/
create index IX_SCM_ServiceUID on ServiceConfigMst (
ServiceUID ASC
)
go

/*==============================================================*/
/* Index: IX_SCM_ServiceType                                    */
/*==============================================================*/
create index IX_SCM_ServiceType on ServiceConfigMst (
ServiceType ASC
)
go

/*==============================================================*/
/* Index: IX_SCM_OrganizationID                                 */
/*==============================================================*/
create index IX_SCM_OrganizationID on ServiceConfigMst (
OrganizationID ASC
)
go

/*==============================================================*/
/* Index: IX_SCM_CurrentFlag                                    */
/*==============================================================*/
create index IX_SCM_CurrentFlag on ServiceConfigMst (
CurrentFlag ASC
)
go

/*==============================================================*/
/* Index: IX_SUA_AccessId                                       */
/*==============================================================*/
create index IX_SUA_AccessId on ShortUrlAccess (
AccessId ASC
)
go

/*==============================================================*/
/* Index: IX_SUAL_AccessUID                                     */
/*==============================================================*/
create index IX_SUAL_AccessUID on ShortUrlAccessLog (
AccessUID ASC
)
go

/*==============================================================*/
/* Index: IX_SUAL_AccessIP                                      */
/*==============================================================*/
create index IX_SUAL_AccessIP on ShortUrlAccessLog (
AccessIP ASC
)
go

/*==============================================================*/
/* Index: IX_Visit_PID_PIDAA                                    */
/*==============================================================*/
create index IX_Visit_PID_PIDAA on Visit (
PatientID ASC,
PIDAssigningAuthority ASC
)
go

/*==============================================================*/
/* Index: IX_Visit_PMasterID                                    */
/*==============================================================*/
create index IX_Visit_PMasterID on Visit (
PatientMasterID ASC
)
go

/*==============================================================*/
/* Index: IX_Visit_MedRecNO                                     */
/*==============================================================*/
create index IX_Visit_MedRecNO on Visit (
MedRecNO ASC
)
go


/*==============================================================*/
/* Index: IX_Visit_Bed                                          */
/*==============================================================*/
create index IX_Visit_Bed on Visit (
Bed ASC
)
go

/*==============================================================*/
/* Index: IX_Visit_InPatientNO                                  */
/*==============================================================*/
create index IX_Visit_InPatientNO on Visit (
InPatientNO ASC
)
go

/*==============================================================*/
/* Index: IX_Visit_OutPatientNO                                 */
/*==============================================================*/
create index IX_Visit_OutPatientNO on Visit (
OutPatientNO ASC
)
go

/*==============================================================*/
/* Index: IX_Visit_CardNO                                       */
/*==============================================================*/
create index IX_Visit_CardNO on Visit (
CardNO ASC
)
go

