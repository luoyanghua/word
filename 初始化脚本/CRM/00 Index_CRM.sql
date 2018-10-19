/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2018/4/20 14:23:09                           */
/*==============================================================*/


/*==============================================================*/
/* Index: IX_AControl_ClientId                                  */
/*==============================================================*/
create index IX_AControl_ClientId on AccessControl
(
   ClientId
);

/*==============================================================*/
/* Index: IX_AControl_ClientSecret                              */
/*==============================================================*/
create index IX_AControl_ClientSecret on AccessControl
(
   ClientSecret
);

/*==============================================================*/
/* Index: IX_CET_ServiceCenterId                                */
/*==============================================================*/
create index IX_CET_ServiceCenterId on CenterExamineType
(
   ServiceCenterId
);

/*==============================================================*/
/* Index: IX_CSR_ServiceCenterId                                */
/*==============================================================*/
create index IX_CSR_ServiceCenterId on CenterSignRecord
(
   ServiceCenterId
);

/*==============================================================*/
/* Index: IX_CHMap_InstitutionGuid                              */
/*==============================================================*/
create index IX_CHMap_InstitutionGuid on Center_Hospital_Mapping
(
   InstitutionGuid
);

/*==============================================================*/
/* Index: IX_CHMap_ServiceCenterId                              */
/*==============================================================*/
create index IX_CHMap_ServiceCenterId on Center_Hospital_Mapping
(
   ServiceCenterId
);

/*==============================================================*/
/* Index: IX_CAS_CloudId                                        */
/*==============================================================*/
create index IX_CAS_CloudId on CloudAPIServer
(
   CloudId
);

/*==============================================================*/
/* Index: IX_Customer_CGuid                                     */
/*==============================================================*/
create unique index IX_Customer_CGuid on Customer
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_Customer_UserId                                    */
/*==============================================================*/
create unique index IX_Customer_UserId on Customer
(
   UserId
);

/*==============================================================*/
/* Index: IX_Customer_CustomerName                              */
/*==============================================================*/
create index IX_Customer_CustomerName on Customer
(
   CustomerName
);

/*==============================================================*/
/* Index: IX_Customer_Email                                     */
/*==============================================================*/
create index IX_Customer_Email on Customer
(
   Email
);

/*==============================================================*/
/* Index: IX_Customer_Phone                                     */
/*==============================================================*/
create unique index IX_Customer_Phone on Customer
(
   Phone
);

/*==============================================================*/
/* Index: IX_Customer_State                                     */
/*==============================================================*/
create index IX_Customer_State on Customer
(
   State
);

/*==============================================================*/
/* Index: IX_Customer_CreatedOnUtc                              */
/*==============================================================*/
create index IX_Customer_CreatedOnUtc on Customer
(
   CreatedOnUtc
);

/*==============================================================*/
/* Index: IX_Customer_IsSync                                    */
/*==============================================================*/
create index IX_Customer_IsSync on Customer
(
   IsSync
);

/*==============================================================*/
/* Index: IX_CCG_CustomerGuid                                   */
/*==============================================================*/
create index IX_CCG_CustomerGuid on CustomerCircleGroup
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_CCGM_GroupId                                       */
/*==============================================================*/
create index IX_CCGM_GroupId on CustomerCircleGroupMember
(
   GroupId
);

/*==============================================================*/
/* Index: IX_CCR_ReqCustomerGuid                                */
/*==============================================================*/
create index IX_CCR_ReqCustomerGuid on CustomerCircleRequest
(
   RequestCustomerGuid
);

/*==============================================================*/
/* Index: IX_CCR_ResCustomerGuid                                */
/*==============================================================*/
create index IX_CCR_ResCustomerGuid on CustomerCircleRequest
(
   ResponseCustomerGuid
);

/*==============================================================*/
/* Index: IX_CConfig_CustomerGuid                               */
/*==============================================================*/
create index IX_CConfig_CustomerGuid on CustomerConfig
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_CConfig_ServiceCenterId                            */
/*==============================================================*/
create index IX_CConfig_ServiceCenterId on CustomerConfig
(
   ServiceCenterId
);

/*==============================================================*/
/* Index: IX_CConfig_InstitutionGuid                            */
/*==============================================================*/
create index IX_CConfig_InstitutionGuid on CustomerConfig
(
   InstitutionGuid
);

/*==============================================================*/
/* Index: IX_CConfig__CItemName                                 */
/*==============================================================*/
create index IX_CConfig__CItemName on CustomerConfig
(
   ConfigItemName
);

/*==============================================================*/
/* Index: IX_CS_ShareGuid                                       */
/*==============================================================*/
create index IX_CS_ShareGuid on CustomerShare
(
   ShareGuid
);

/*==============================================================*/
/* Index: IX_CS_CustomerGuid                                    */
/*==============================================================*/
create index IX_CS_CustomerGuid on CustomerShare
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_CS_InstitutionGuid                                 */
/*==============================================================*/
create index IX_CS_InstitutionGuid on CustomerShare
(
   InstitutionGuid
);

/*==============================================================*/
/* Index: IX_DETotal_CustomerGuid                               */
/*==============================================================*/
create index IX_DETotal_CustomerGuid on DoctorEvaluationTotal
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_DKWord_CustomerGuid                                */
/*==============================================================*/
create index IX_DKWord_CustomerGuid on DoctorKeyWord
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_DKWord_KeyWord                                     */
/*==============================================================*/
create index IX_DKWord_KeyWord on DoctorKeyWord
(
   KeyWord
);

/*==============================================================*/
/* Index: IX_DoctorMember_CGuid                                 */
/*==============================================================*/
create index IX_DoctorMember_CGuid on DoctorMember
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_DoctorMember_TKCode                                */
/*==============================================================*/
create index IX_DoctorMember_TKCode on DoctorMember
(
   TitleKindCode
);

/*==============================================================*/
/* Index: IX_DoctorMember_TCode                                 */
/*==============================================================*/
create index IX_DoctorMember_TCode on DoctorMember
(
   TitleCode
);

/*==============================================================*/
/* Index: IX_DoctorMember_OfficeId                              */
/*==============================================================*/
create index IX_DoctorMember_OfficeId on DoctorMember
(
   OfficeId
);

/*==============================================================*/
/* Index: IX_DoctorMember_HCode                                 */
/*==============================================================*/
create index IX_DoctorMember_HCode on DoctorMember
(
   HospitalCode
);

/*==============================================================*/
/* Index: IX_DoctorMember_IsExpert                              */
/*==============================================================*/
create index IX_DoctorMember_IsExpert on DoctorMember
(
   IsExpert
);

/*==============================================================*/
/* Index: IX_DoctorMember_IsPlat                                */
/*==============================================================*/
create index IX_DoctorMember_IsPlat on DoctorMember
(
   IsPlat
);

/*==============================================================*/
/* Index: IX_DMSD_CustomerGuid                                  */
/*==============================================================*/
create index IX_DMSD_CustomerGuid on DoctorMemberSubDefine
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_DO_CustomerGuid                                    */
/*==============================================================*/
create index IX_DO_CustomerGuid on DoctorOffice
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_DQCenter_CustomerGuid                              */
/*==============================================================*/
create index IX_DQCenter_CustomerGuid on DoctorQualityCenter
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_DQCenter_QualityCenterId                           */
/*==============================================================*/
create index IX_DQCenter_QualityCenterId on DoctorQualityCenter
(
   QualityCenterId
);

/*==============================================================*/
/* Index: IX_DQCenter_HospitalCode                              */
/*==============================================================*/
create index IX_DQCenter_HospitalCode on DoctorQualityCenter
(
   HospitalCode
);

/*==============================================================*/
/* Index: IX_DService_CustomerGuid                              */
/*==============================================================*/
create index IX_DService_CustomerGuid on DoctorService
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_DService_SCenterId                                 */
/*==============================================================*/
create index IX_DService_SCenterId on DoctorService
(
   ServiceCenterId
);

/*==============================================================*/
/* Index: IX_DSCenter_CustomerGuid                              */
/*==============================================================*/
create index IX_DSCenter_CustomerGuid on DoctorServiceCenter
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_DSCenter_ServiceCenterId                           */
/*==============================================================*/
create index IX_DSCenter_ServiceCenterId on DoctorServiceCenter
(
   ServiceCenterId
);

/*==============================================================*/
/* Index: IX_DSR_CustomerGuid                                   */
/*==============================================================*/
create index IX_DSR_CustomerGuid on DoctorStarRate
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_DTotal_CustomerGuid                                */
/*==============================================================*/
create index IX_DTotal_CustomerGuid on DoctorTotal
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_DTotal_SCenterId                                   */
/*==============================================================*/
create index IX_DTotal_SCenterId on DoctorTotal
(
   ServiceCenterId
);

/*==============================================================*/
/* Index: IX_FL_CustomerGuid                                    */
/*==============================================================*/
create index IX_FL_CustomerGuid on FrozenList
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_FL_InstitutionGuid                                 */
/*==============================================================*/
create index IX_FL_InstitutionGuid on FrozenList
(
   InstitutionGuid
);

/*==============================================================*/
/* Index: IX_FL_ServiceCenterId                                 */
/*==============================================================*/
create index IX_FL_ServiceCenterId on FrozenList
(
   ServiceCenterId
);

/*==============================================================*/
/* Index: IX_FL_Kind                                            */
/*==============================================================*/
create index IX_FL_Kind on FrozenList
(
   Kind
);

/*==============================================================*/
/* Index: IX_HCSR_InstitutionGuid                               */
/*==============================================================*/
create index IX_HCSR_InstitutionGuid on HospitalCenterSignRecord
(
   InstitutionGuid
);

/*==============================================================*/
/* Index: IX_HCSR_ServiceCenterId                               */
/*==============================================================*/
create index IX_HCSR_ServiceCenterId on HospitalCenterSignRecord
(
   ServiceCenterId
);

/*==============================================================*/
/* Index: IX_HG_InstitutionGuid                                 */
/*==============================================================*/
create index IX_HG_InstitutionGuid on HospitalGroup
(
   InstitutionGuid
);

/*==============================================================*/
/* Index: IX_Institution_IGuid                                  */
/*==============================================================*/
create index IX_Institution_IGuid on Institution
(
   InstitutionGuid
);

/*==============================================================*/
/* Index: IX_Institution_Kind                                   */
/*==============================================================*/
create index IX_Institution_Kind on Institution
(
   Kind
);

/*==============================================================*/
/* Index: IX_Institution_ProID                                  */
/*==============================================================*/
create index IX_Institution_ProID on Institution
(
   ProID
);

/*==============================================================*/
/* Index: IX_Institution_CityID                                 */
/*==============================================================*/
create index IX_Institution_CityID on Institution
(
   CityID
);

/*==============================================================*/
/* Index: IX_Institution_CountyId                               */
/*==============================================================*/
create index IX_Institution_CountyId on Institution
(
   CountyId
);

/*==============================================================*/
/* Index: IX_Institution_RegDate                                */
/*==============================================================*/
create index IX_Institution_RegDate on Institution
(
   RegDate
);

/*==============================================================*/
/* Index: IX_Institution_State                                  */
/*==============================================================*/
create index IX_Institution_State on Institution
(
   State
);

/*==============================================================*/
/* Index: IX_IA_InstitutionGuid                                 */
/*==============================================================*/
create index IX_IA_InstitutionGuid on InstitutionApply
(
   InstitutionGuid
);

/*==============================================================*/
/* Index: IX_IA_Telphone                                        */
/*==============================================================*/
create index IX_IA_Telphone on InstitutionApply
(
   Telphone
);

/*==============================================================*/
/* Index: IX_IDA_GrantInstitutionGuid                           */
/*==============================================================*/
create index IX_IDA_GrantInstitutionGuid on InstitutionDataAccess
(
   GrantInstitutionGuid
);

/*==============================================================*/
/* Index: IX_IDA_GrantInstitutionlCode                          */
/*==============================================================*/
create index IX_IDA_GrantInstitutionlCode on InstitutionDataAccess
(
   GrantInstitutionlCode
);

/*==============================================================*/
/* Index: IX_IDA_AccessInstitutionGuid                          */
/*==============================================================*/
create index IX_IDA_AccessInstitutionGuid on InstitutionDataAccess
(
   AccessInstitutionGuid
);

/*==============================================================*/
/* Index: IX_IDA_State                                          */
/*==============================================================*/
create index IX_IDA_State on InstitutionDataAccess
(
   State
);

/*==============================================================*/
/* Index: IX_IDS_InstitutionGuid                                */
/*==============================================================*/
create index IX_IDS_InstitutionGuid on InstitutionDiskSpace
(
   InstitutionGuid
);

/*==============================================================*/
/* Index: IX_IManager_CustomerGuid                              */
/*==============================================================*/
create index IX_IManager_CustomerGuid on InstitutionManager
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_IManager_InstitutionGuid                           */
/*==============================================================*/
create index IX_IManager_InstitutionGuid on InstitutionManager
(
   InstitutionGuid
);

/*==============================================================*/
/* Index: IX_IMap_MInstitutionGuid                              */
/*==============================================================*/
create index IX_IMap_MInstitutionGuid on InstitutionMapping
(
   MInstitutionGuid
);

/*==============================================================*/
/* Index: IX_IMap_CInstitutionGuid                              */
/*==============================================================*/
create index IX_IMap_CInstitutionGuid on InstitutionMapping
(
   CInstitutionGuid
);

/*==============================================================*/
/* Index: IX_IOpen_InstitutionGuid                              */
/*==============================================================*/
create index IX_IOpen_InstitutionGuid on InstitutionOpen
(
   InstitutionGuid
);

/*==============================================================*/
/* Index: IX_IPP_InstitutionGuid                                */
/*==============================================================*/
create index IX_IPP_InstitutionGuid on InstitutionProPic
(
   InstitutionGuid
);

/*==============================================================*/
/* Index: IX_IPP_AttributeValue                                 */
/*==============================================================*/
create index IX_IPP_AttributeValue on InstitutionProPic
(
   AttributeValue
);

/*==============================================================*/
/* Index: IX_ISR_InstitutionGuid                                */
/*==============================================================*/
create index IX_ISR_InstitutionGuid on InstitutionStarRate
(
   InstitutionGuid
);

/*==============================================================*/
/* Index: IX_IVT_InstitutionGuid                                */
/*==============================================================*/
create index IX_IVT_InstitutionGuid on InstitutionVideoTime
(
   InstitutionGuid
);

/*==============================================================*/
/* Index: IX_ICM_InstitutionGuid                                */
/*==============================================================*/
create index IX_ICM_InstitutionGuid on Institution_Cloud_Mapping
(
   InstitutionGuid
);

/*==============================================================*/
/* Index: IX_ICM_CloudId                                        */
/*==============================================================*/
create index IX_ICM_CloudId on Institution_Cloud_Mapping
(
   CloudId
);

/*==============================================================*/
/* Index: IX_Leader_CustomerGuid                                */
/*==============================================================*/
create index IX_Leader_CustomerGuid on Leader
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_Leader_InstitutionGuid                             */
/*==============================================================*/
create index IX_Leader_InstitutionGuid on Leader
(
   InstitutionGuid
);

/*==============================================================*/
/* Index: IX_LA_CustomerGuid                                    */
/*==============================================================*/
create index IX_LA_CustomerGuid on LicenseAgreement
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_LA_LicenseId                                       */
/*==============================================================*/
create index IX_LA_LicenseId on LicenseAgreement
(
   LicenseId
);

/*==============================================================*/
/* Index: IX_MDTG_ServiceCenterId                               */
/*==============================================================*/
create index IX_MDTG_ServiceCenterId on MDTGroup
(
   ServiceCenterId
);

/*==============================================================*/
/* Index: IX_MDTG_CustomerGuid                                  */
/*==============================================================*/
create index IX_MDTG_CustomerGuid on MDTGroup
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_MDTGD_MDTGroupId                                   */
/*==============================================================*/
create index IX_MDTGD_MDTGroupId on MDTGroupDoctor
(
   MDTGroupId
);

/*==============================================================*/
/* Index: IX_MDTGD_CustomerGuid                                 */
/*==============================================================*/
create index IX_MDTGD_CustomerGuid on MDTGroupDoctor
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_MDTGD_ServiceCenterId                              */
/*==============================================================*/
create index IX_MDTGD_ServiceCenterId on MDTGroupDoctor
(
   ServiceCenterId
);

/*==============================================================*/
/* Index: IX_MS_CustomerGuid                                    */
/*==============================================================*/
create index IX_MS_CustomerGuid on MedicalStaff
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_MS_HospitalCode                                    */
/*==============================================================*/
create index IX_MS_HospitalCode on MedicalStaff
(
   HospitalCode
);

/*==============================================================*/
/* Index: IX_MCS_InstitutionGuid                                */
/*==============================================================*/
create index IX_MCS_InstitutionGuid on MemberCenterService
(
   InstitutionGuid
);

/*==============================================================*/
/* Index: IX_MCS_ServiceCenterId                                */
/*==============================================================*/
create index IX_MCS_ServiceCenterId on MemberCenterService
(
   ServiceCenterId
);

/*==============================================================*/
/* Index: IX_MHospital_IGuid                                    */
/*==============================================================*/
create index IX_MHospital_IGuid on MemberHospital
(
   InstitutionGuid
);

/*==============================================================*/
/* Index: IX_MHospital_HGGuid                                   */
/*==============================================================*/
create index IX_MHospital_HGGuid on MemberHospital
(
   HospitalGroupGuid
);

/*==============================================================*/
/* Index: IX_MM_CustomerGuid                                    */
/*==============================================================*/
create index IX_MM_CustomerGuid on MonitorManager
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_MCa_CustomerGuid                                   */
/*==============================================================*/
create index IX_MCa_CustomerGuid on MyCatalog
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_MC_CustomerGuid                                    */
/*==============================================================*/
create index IX_MC_CustomerGuid on MyCollection
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_Mco_CollectionId                                   */
/*==============================================================*/
create index IX_Mco_CollectionId on MyCollection
(
   CollectionId
);

/*==============================================================*/
/* Index: IX_MC_CollectionKind                                  */
/*==============================================================*/
create index IX_MC_CollectionKind on MyCollection
(
   CollectionKind
);

/*==============================================================*/
/* Index: IX_MCo_MyCatalogId                                    */
/*==============================================================*/
create index IX_MCo_MyCatalogId on MyCollection
(
   MyCatalogId
);

/*==============================================================*/
/* Index: IX_MCo_PatientName                                    */
/*==============================================================*/
create index IX_MCo_PatientName on MyCollection
(
   PatientName
);

/*==============================================================*/
/* Index: IX_MCo_ICDCode                                        */
/*==============================================================*/
create index IX_MCo_ICDCode on MyCollection
(
   ICDCode
);

/*==============================================================*/
/* Index: IX_MCo_AcrCode                                        */
/*==============================================================*/
create index IX_MCo_AcrCode on MyCollection
(
   AcrCode
);

/*==============================================================*/
/* Index: IX_MCr_CustomerGuid                                   */
/*==============================================================*/
create index IX_MCr_CustomerGuid on MyCredit
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_MCC_CustomerGuid                                   */
/*==============================================================*/
create index IX_MCC_CustomerGuid on MyCustomerCircle
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_MFM_CustomerGuid                                   */
/*==============================================================*/
create index IX_MFM_CustomerGuid on MyFamilyMember
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_MFM_MyCustomerGuid                                 */
/*==============================================================*/
create index IX_MFM_MyCustomerGuid on MyFamilyMember
(
   MyCustomerGuid
);

/*==============================================================*/
/* Index: IX_MyFD_CustomerGuid                                  */
/*==============================================================*/
create index IX_MyFD_CustomerGuid on MyFocusDoctor
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_MyFE_CustomerGuid                                  */
/*==============================================================*/
create index IX_MyFE_CustomerGuid on MyFocusExpert
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_MyFP_CustomerGuid                                  */
/*==============================================================*/
create index IX_MyFP_CustomerGuid on MyFocusPatient
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_MyFTC_CustomerGuid                                 */
/*==============================================================*/
create index IX_MyFTC_CustomerGuid on MyFocusTeachCenter
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_MHC_CustomerGuid                                   */
/*==============================================================*/
create index IX_MHC_CustomerGuid on MyHealthCard
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_MSD_CustomerGuid                                   */
/*==============================================================*/
create index IX_MSD_CustomerGuid on MyServiceDate
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_MSDS_MySDateId                                     */
/*==============================================================*/
create index IX_MSDS_MySDateId on MyServiceDateShedule
(
   MyServiceDateId
);

/*==============================================================*/
/* Index: IX_MSTP_MySDateId                                     */
/*==============================================================*/
create index IX_MSTP_MySDateId on MyServiceTimePart
(
   MyServiceDateId
);

/*==============================================================*/
/* Index: IX_PDS_CustomerGuid                                   */
/*==============================================================*/
create index IX_PDS_CustomerGuid on PatientDiskSpace
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_PVPT_CustomerGuid                                  */
/*==============================================================*/
create index IX_PVPT_CustomerGuid on PatientVideoPhoneTime
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_PSR_InstitutionGuid                                */
/*==============================================================*/
create index IX_PSR_InstitutionGuid on PlatSignRecord
(
   InstitutionGuid
);

/*==============================================================*/
/* Index: IX_PML_CustomerGuid                                   */
/*==============================================================*/
create index IX_PML_CustomerGuid on PublicMemberLevel
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_QC_InstitutionGuid                                 */
/*==============================================================*/
create index IX_QC_InstitutionGuid on QualityCenter
(
   InstitutionGuid
);

/*==============================================================*/
/* Index: IX_QCH_QualityCenterId                                */
/*==============================================================*/
create index IX_QCH_QualityCenterId on QualityCenterHospital
(
   QualityCenterId
);

/*==============================================================*/
/* Index: IX_QCH_QualityGroupId                                 */
/*==============================================================*/
create index IX_QCH_QualityGroupId on QualityCenterHospital
(
   QualityGroupId
);

/*==============================================================*/
/* Index: IX_QDH_CustomerGuid                                   */
/*==============================================================*/
create index IX_QDH_CustomerGuid on QualityDoctorHospital
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_QG_QualityCenterId                                 */
/*==============================================================*/
create index IX_QG_QualityCenterId on QualityGroup
(
   QualityCenterId
);

/*==============================================================*/
/* Index: IX_QGD_QualityCenterId                                */
/*==============================================================*/
create index IX_QGD_QualityCenterId on QualityGroupDoctor
(
   QualityCenterId
);

/*==============================================================*/
/* Index: IX_QGD_QualityGroupId                                 */
/*==============================================================*/
create index IX_QGD_QualityGroupId on QualityGroupDoctor
(
   QualityGroupId
);

/*==============================================================*/
/* Index: IX_QGD_CustomerGuid                                   */
/*==============================================================*/
create index IX_QGD_CustomerGuid on QualityGroupDoctor
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_RCM_CustomerRole_Id                                */
/*==============================================================*/
create index IX_RCM_CustomerRole_Id on Role_Category_Mapping
(
   CustomerRole_Id
);

/*==============================================================*/
/* Index: IX_RCM_Category                                       */
/*==============================================================*/
create index IX_RCM_Category on Role_Category_Mapping
(
   Category
);

/*==============================================================*/
/* Index: IX_SCenter_IGuid                                      */
/*==============================================================*/
create index IX_SCenter_IGuid on ServiceCenter
(
   InstitutionGuid
);

/*==============================================================*/
/* Index: IX_SCenter_Kind                                       */
/*==============================================================*/
create index IX_SCenter_Kind on ServiceCenter
(
   Kind
);

/*==============================================================*/
/* Index: IX_SCI_CustomerGuid                                   */
/*==============================================================*/
create index IX_SCI_CustomerGuid on ServiceCenterInvitation
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_SCI_ICustomerGuid                                  */
/*==============================================================*/
create index IX_SCI_ICustomerGuid on ServiceCenterInvitation
(
   InvitationCustomerGuid
);

/*==============================================================*/
/* Index: IX_SCManager_CustomerGuid                             */
/*==============================================================*/
create index IX_SCManager_CustomerGuid on ServiceCenterManager
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_SCManager_ServiceCenterId                          */
/*==============================================================*/
create index IX_SCManager_ServiceCenterId on ServiceCenterManager
(
   ServiceCenterId
);

/*==============================================================*/
/* Index: IX_SCO_ServiceCenterId                                */
/*==============================================================*/
create index IX_SCO_ServiceCenterId on ServiceCenterOffice
(
   ServiceCenterId
);

/*==============================================================*/
/* Index: IX_SCP_ServiceCenterId                                */
/*==============================================================*/
create index IX_SCP_ServiceCenterId on ServiceCenterPic
(
   ServiceCenterId
);

/*==============================================================*/
/* Index: IX_SCS_ServiceCenterId                                */
/*==============================================================*/
create index IX_SCS_ServiceCenterId on ServiceCenterSetup
(
   ServiceCenterId
);

/*==============================================================*/
/* Index: IX_SCT_InstitutionGuid                                */
/*==============================================================*/
create index IX_SCT_InstitutionGuid on ServiceCenterTotal
(
   InstitutionGuid
);

/*==============================================================*/
/* Index: IX_SCT_ServiceCenterId                                */
/*==============================================================*/
create index IX_SCT_ServiceCenterId on ServiceCenterTotal
(
   ServiceCenterId
);

/*==============================================================*/
/* Index: IX_SD_InstitutionGuid                                 */
/*==============================================================*/
create index IX_SD_InstitutionGuid on ServiceDNS
(
   InstitutionGuid
);

/*==============================================================*/
/* Index: IX_SOpen_ServiceCenterId                              */
/*==============================================================*/
create index IX_SOpen_ServiceCenterId on ServiceOpen
(
   ServiceCenterId
);

/*==============================================================*/
/* Index: IX_ST_ShareGuid                                       */
/*==============================================================*/
create index IX_ST_ShareGuid on ShareTarget
(
   ShareGuid
);

/*==============================================================*/
/* Index: IX_ST_CustomerGuid                                    */
/*==============================================================*/
create index IX_ST_CustomerGuid on ShareTarget
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_SSDS_InstitutionGuid                               */
/*==============================================================*/
create index IX_SSDS_InstitutionGuid on StoreShareDiskSpace
(
   InstitutionGuid
);

/*==============================================================*/
/* Index: IX_Subbe_SubscribeGuid                                */
/*==============================================================*/
create index IX_Subbe_SubscribeGuid on Subscribe
(
   SubscribeGuid
);

/*==============================================================*/
/* Index: IX_Subbe_SubscribeContent                             */
/*==============================================================*/
create index IX_Subbe_SubscribeContent on Subscribe
(
   SubscribeContent
);

/*==============================================================*/
/* Index: IX_Subbe_SubscribeCycle                               */
/*==============================================================*/
create index IX_Subbe_SubscribeCycle on Subscribe
(
   SubscribeCycle
);

/*==============================================================*/
/* Index: IX_Subbe_InstitutionGuid                              */
/*==============================================================*/
create index IX_Subbe_InstitutionGuid on Subscribe
(
   InstitutionGuid
);

/*==============================================================*/
/* Index: IX_Subbe_CustomerGuid                                 */
/*==============================================================*/
create index IX_Subbe_CustomerGuid on Subscribe
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_Subbe_State                                        */
/*==============================================================*/
create index IX_Subbe_State on Subscribe
(
   State
);

/*==============================================================*/
/* Index: IX_TCManager_CustomerGuid                             */
/*==============================================================*/
create index IX_TCManager_CustomerGuid on TeachCenterManager
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_TCManager_TeachCenterId                            */
/*==============================================================*/
create index IX_TCManager_TeachCenterId on TeachCenterManager
(
   TeachCenterId
);

/*==============================================================*/
/* Index: IX_TMaster_CustomerGuid                               */
/*==============================================================*/
create index IX_TMaster_CustomerGuid on TeachMaster
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_TMaster_InstitutionGuid                            */
/*==============================================================*/
create index IX_TMaster_InstitutionGuid on TeachMaster
(
   InstitutionGuid
);

/*==============================================================*/
/* Index: IX_UQS_CustomerGuid                                   */
/*==============================================================*/
create index IX_UQS_CustomerGuid on UserQuerySet
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_MemberDoctorService_InstitutionGuid                */
/*==============================================================*/
create index IX_MemberDoctorService_InstitutionGuid on MemberDoctorService
(
   InstitutionGuid
);

/*==============================================================*/
/* Index: IX_MemberDoctorService_CustomerGuid                   */
/*==============================================================*/
create index IX_MemberDoctorService_CustomerGuid on MemberDoctorService
(
   CustomerGuid
);

