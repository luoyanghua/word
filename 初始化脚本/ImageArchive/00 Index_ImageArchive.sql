/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2018/4/13 14:05:20                           */
/*==============================================================*/


/*==============================================================*/
/* Index: IX_CSSM_Discountcode                                  */
/*==============================================================*/
create index IX_CSSM_Discountcode on CloudStorageServiceMst
(
   Discountcode
);

/*==============================================================*/
/* Index: IX_DSS_DataSource                                     */
/*==============================================================*/
create index IX_DSS_DataSource on DataSourceSetup
(
   DataSource
);

/*==============================================================*/
/* Index: IX_DSS_ExamineType                                    */
/*==============================================================*/
create index IX_DSS_ExamineType on DataSourceSetup
(
   ExamineType
);

/*==============================================================*/
/* Index: IX_DSSM_InstitutionlCode                              */
/*==============================================================*/
create index IX_DSSM_InstitutionlCode on DataStorageStrategyMst
(
   InstitutionlCode
);

/*==============================================================*/
/* Index: IX_DicomStudy_FileUID                                 */
/*==============================================================*/
create index IX_DicomStudy_FileUID on DicomStudy
(
   FileUID
);

/*==============================================================*/
/* Index: IX_Document_BusinessID                                */
/*==============================================================*/
create index IX_Document_BusinessID on Document
(
   BusinessID
);


/*==============================================================*/
/* Index: IX_Document_FlieSHA                                   */
/*==============================================================*/
create index IX_Document_FlieSHA on Document
(
   FileSHA
);

/*==============================================================*/
/* Index: IX_Document_FileCreateTime                            */
/*==============================================================*/
create index IX_Document_FileCreateTime on Document
(
   FileCreateTime
);

/*==============================================================*/
/* Index: IX_Document_UploadTime                                */
/*==============================================================*/
create index IX_Document_UploadTime on Document
(
   UploadTime
);

/*==============================================================*/
/* Index: IX_Document_CreateOrganizationID                      */
/*==============================================================*/
create index IX_Document_CreateOrganizationID on Document
(
   CreateOrganizationID
);

/*==============================================================*/
/* Index: IX_DS_CreateTime                                      */
/*==============================================================*/
create index IX_DS_CreateTime on DocumentInService
(
   CreateTime
);

/*==============================================================*/
/* Index: IX_DS_DeleteFlag                                      */
/*==============================================================*/
create index IX_DS_DeleteFlag on DocumentInService
(
   DeleteFlag
);



/*==============================================================*/
/* Index: IX_ECD_flag                                   */
/*==============================================================*/
create index IX_ECD_flag on examcheckdata(HospitalCode,ExamineType,DataSource);



/*==============================================================*/
/* Index: IX_ECD_PerformTime                                    */
/*==============================================================*/
create index IX_ECD_PerformTime on ExamCheckData
(
   PerformTime
);


/*==============================================================*/
/* Index: IX_ECD_CollectionTime                                 */
/*==============================================================*/
create index IX_ECD_CollectionTime on ExamCheckData
(
   CollectionTime
);



/*==============================================================*/
/* Index: IX_EW_ObservationUID                                  */
/*==============================================================*/
create index IX_EW_ObservationUID on ExamWorkflow
(
   ObservationUID
);

/*==============================================================*/
/* Index: IX_EW_WorkflowName                                    */
/*==============================================================*/
create index IX_EW_WorkflowName on ExamWorkflow
(
   WorkflowName
);

/*==============================================================*/
/* Index: IX_HR_HospitalCode                                    */
/*==============================================================*/
create index IX_HR_HospitalCode on HospitalRegion
(
   HospitalCode
);

/*==============================================================*/
/* Index: IX_ICACP_ProductCode                                  */
/*==============================================================*/
create index IX_ICACP_ProductCode on ICACloudProduct
(
   ProductCode
);


/*==============================================================*/
/* Index: IX_IT_InitiateUser                                 */
/*==============================================================*/
create index IX_IT_InitiateUser on IntegrationTask
(
   InitiateUser
);


/*==============================================================*/
/* Index: IX_IT_BusinessKeyUID                                  */
/*==============================================================*/
create index IX_IT_BusinessKeyUID on IntegrationTask
(
   BusinessKeyUID
);

/*==============================================================*/
/* Index: IX_IT_BusinessKey                                     */
/*==============================================================*/
create index IX_IT_BusinessKey on IntegrationTask
(
   BusinessKey
);

/*==============================================================*/
/* Index: IX_IT_OrganizationID                                  */
/*==============================================================*/
create index IX_IT_OrganizationID on IntegrationTask
(
   OrganizationID
);

/*==============================================================*/
/* Index: IX_IT_PerformTime                                     */
/*==============================================================*/
create index IX_IT_PerformTime on IntegrationTask
(
   PerformTime
);

/*==============================================================*/
/* Index: IX_JSV_ServiceUID                                     */
/*==============================================================*/
create index IX_JSV_ServiceUID on JobServerVersion
(
   ServiceUID
);

/*==============================================================*/
/* Index: IX_JTMst_ServiceUID                                   */
/*==============================================================*/
create index IX_JTMst_ServiceUID on JobTriggerMst
(
   ServiceUID
);

/*==============================================================*/
/* Index: IX_LCDO_CreateDate                                    */
/*==============================================================*/
create index IX_LCDO_CreateDate on LogClinicDataOperation
(
   CreateDate
);

/*==============================================================*/
/* Index: IX_LE_ExamIndex                                       */
/*==============================================================*/
create index IX_LE_ExamIndex on LogError
(
   ExamIndex
);


/*==============================================================*/
/* Index: IX_LE_WrongTime                                       */
/*==============================================================*/
create index IX_LE_WrongTime on LogError
(
   WrongTime
);

/*==============================================================*/
/* Index: IX_MediaMst_MediaUID                                  */
/*==============================================================*/
create index IX_MediaMst_MediaUID on MediaMst
(
   MediaUID
);



/*==============================================================*/
/* Index: IX_ORE_PID_PIDAA                                      */
/*==============================================================*/
create index IX_ORE_PID_PIDAA on ObservationRequest
(
   PatientID,
   PIDAssigningAuthority
);

/*==============================================================*/
/* Index: IX_ORE_DeptID                                      */
/*==============================================================*/
create index IX_ORE_DeptID  on ObservationRequest
(
RequestDeptID,
CollectionDept,
ObservationDeptID
);

/*==============================================================*/
/* Index: IX_ORE_PMasterID                                      */
/*==============================================================*/
create index IX_ORE_PMasterID on ObservationRequest
(
   PatientMasterID
);

/*==============================================================*/
/* Index: IX_ORE_VisitUID                                       */
/*==============================================================*/
create index IX_ORE_VisitUID on ObservationRequest
(
   VisitUID
);


/*==============================================================*/
/* Index: IX_ORE_SPD                                            */
/*==============================================================*/
create index IX_ORE_SPD  on ObservationRequest (
ServiceSectID,PatientClass,DataSource
)

/*==============================================================*/
/* Index: IX_ORE_OrganizationID                                 */
/*==============================================================*/
create index IX_ORE_OrganizationID on ObservationRequest
(
   OrganizationID
);


/*==============================================================*/
/* Index: IX_ORE_AccessionNumber                                */
/*==============================================================*/
create index IX_ORE_AccessionNumber on ObservationRequest
(
   AccessionNumber
);


/*==============================================================*/
/* Index: IX_ORE_FOrderNO_FAA                                   */
/*==============================================================*/
create index IX_ORE_FOrderNO_FAA on ObservationRequest
(
   FillerOrderNO,
   FillerAssigningAuthority
);

/*==============================================================*/
/* Index: IX_ORE_AuditDate                                  */
/*==============================================================*/
create index IX_ORE_AuditDate on ObservationRequest
(
AuditDate
);


/*==============================================================*/
/* Index: IX_ORE_ArchiveDate                                        */
/*==============================================================*/
create index IX_ORE_ArchiveDate on ObservationRequest
(
   ArchiveDate
);

/*==============================================================*/
/* Index: IX_ORE_ClinicInfoType                                 */
/*==============================================================*/
create index IX_ORE_ClinicInfoType on ObservationRequest
(
   ClinicInfoType
);

/*==============================================================*/
/* Index: IX_ORE_PreliminaryDate                                 */
/*==============================================================*/
create index IX_ORE_PreliminaryDate on ObservationRequest
(
   PreliminaryDate
);

/*==============================================================*/
/* Index: IX_ORE_LastUpdateDate                                 */
/*==============================================================*/
create index IX_ORE_LastUpdateDate on ObservationRequest
(
   LastUpdateDate
);

/*==============================================================*/
/* Index: IX_ORE_ObservationDate                                */
/*==============================================================*/
create index IX_ORE_ObservationDate on ObservationRequest
(
   ObservationDate
);


/*==============================================================*/
/* Index: IX_ORE_PlacerOrderNO                                  */
/*==============================================================*/
create IX_ORE_PlacerOrderNO  on ObservationRequest
(
   PlacerOrderNO
);






/*==============================================================*/
/* Index: IX_ORS_ObservationID                                  */
/*==============================================================*/
create index IX_ORS_ObservationID on ObservationResult
(
   ObservationID
);

/*==============================================================*/
/* Index: IX_ORS_ObservationText                                */
/*==============================================================*/
create index IX_ORS_ObservationText on ObservationResult
(
   ObservationText
);

/*==============================================================*/
/* Index: IX_ORS_DeleteFlag                                     */
/*==============================================================*/
create index IX_ORS_DeleteFlag on ObservationResult
(
   DeleteFlag
);

/*==============================================================*/
/* Index: IX_OS_ObservationUID                                  */
/*==============================================================*/
create index IX_OS_ObservationUID on ObservationSchedule
(
   ObservationUID
);



/*==============================================================*/
/* Index: IX_OS_SResourceUID                                    */
/*==============================================================*/
create index IX_OS_SResourceUID on ObservationSchedule
(
   ScheduleResourceUID
);

/*==============================================================*/
/* Index: IX_OS_SStartDate                                      */
/*==============================================================*/
create index IX_OS_SStartDate on ObservationSchedule
(
   ScheduleStartDate
);

/*==============================================================*/
/* Index: IX_PI_PID_PIDAA                                       */
/*==============================================================*/
create index IX_PI_PID_PIDAA on PatientIndex
(
   PatientID,
   PIDAssigningAuthority
);

/*==============================================================*/
/* Index: IX_PI_PMasterID                                       */
/*==============================================================*/
create index IX_PI_PMasterID on PatientIndex
(
   PatientMasterID
);

/*==============================================================*/
/* Index: IX_PI_Name                                            */
/*==============================================================*/
create index IX_PI_Name on PatientIndex
(
   Name
);

/*==============================================================*/
/* Index: IX_PI_IDCardNO                                        */
/*==============================================================*/
create index IX_PI_IDCardNO on PatientIndex
(
   IDCardNO
);

/*==============================================================*/
/* Index: IX_PI_HealthCardNO                                    */
/*==============================================================*/
create index IX_PI_HealthCardNO on PatientIndex
(
   HealthCardNO
);

/*==============================================================*/
/* Index: IX_PI_InsuranceID                                     */
/*==============================================================*/
create index IX_PI_InsuranceID on PatientIndex
(
   InsuranceID
);

/*==============================================================*/
/* Index: IX_PI_Status                                          */
/*==============================================================*/
create index IX_PI_Status on PatientIndex
(
   Status
);

/*==============================================================*/
/* Index: IX_PI_CreateOID                                       */
/*==============================================================*/
create index IX_PI_CreateOID on PatientIndex
(
   CreateOrgnizationID
);

/*==============================================================*/
/* Index: IX_SCM_MediaUID                                       */
/*==============================================================*/
create index IX_SCM_MediaUID on ServiceConfigMst
(
   MediaUID
);

/*==============================================================*/
/* Index: IX_SCM_ServiceUID                                     */
/*==============================================================*/
create index IX_SCM_ServiceUID on ServiceConfigMst
(
   ServiceUID
);

/*==============================================================*/
/* Index: IX_SCM_ServiceType                                    */
/*==============================================================*/
create index IX_SCM_ServiceType on ServiceConfigMst
(
   ServiceType
);

/*==============================================================*/
/* Index: IX_SCM_OrganizationID                                 */
/*==============================================================*/
create index IX_SCM_OrganizationID on ServiceConfigMst
(
   OrganizationID
);

/*==============================================================*/
/* Index: IX_SCM_CurrentFlag                                    */
/*==============================================================*/
create index IX_SCM_CurrentFlag on ServiceConfigMst
(
   CurrentFlag
);

/*==============================================================*/
/* Index: IX_SUA_AccessId                                       */
/*==============================================================*/
create index IX_SUA_AccessId on ShortUrlAccess
(
   AccessId
);

/*==============================================================*/
/* Index: IX_SUAL_AccessUID                                     */
/*==============================================================*/
create index IX_SUAL_AccessUID on ShortUrlAccessLog
(
   AccessUID
);

/*==============================================================*/
/* Index: IX_SUAL_AccessIP                                      */
/*==============================================================*/
create index IX_SUAL_AccessIP on ShortUrlAccessLog
(
   AccessIP
);


/*==============================================================*/
/* Index: IX_Visit_PID_PIDAA                                    */
/*==============================================================*/
create index IX_Visit_PID_PIDAA on Visit
(
   PatientID,
   PIDAssigningAuthority
);

/*==============================================================*/
/* Index: IX_Visit_PMasterID                                    */
/*==============================================================*/
create index IX_Visit_PMasterID on Visit
(
   PatientMasterID
);



/*==============================================================*/
/* Index: IX_Visit_CardNO                                       */
/*==============================================================*/
create index IX_Visit_CardNO on Visit
(
   CardNO
);



