/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2000                    */
/* Created on:     2018/4/20 14:21:07                           */
/*==============================================================*/


/*==============================================================*/
/* Index: IX_AControl_ClientId                                  */
/*==============================================================*/
create index IX_AControl_ClientId on AccessControl (
ClientId ASC
)
go

/*==============================================================*/
/* Index: IX_AControl_ClientSecret                              */
/*==============================================================*/
create index IX_AControl_ClientSecret on AccessControl (
ClientSecret ASC
)
go

/*==============================================================*/
/* Index: IX_CET_ServiceCenterId                                */
/*==============================================================*/
create index IX_CET_ServiceCenterId on CenterExamineType (
ServiceCenterId ASC
)
go

/*==============================================================*/
/* Index: IX_CSR_ServiceCenterId                                */
/*==============================================================*/
create index IX_CSR_ServiceCenterId on CenterSignRecord (
ServiceCenterId ASC
)
go

/*==============================================================*/
/* Index: IX_CHMap_InstitutionGuid                              */
/*==============================================================*/
create index IX_CHMap_InstitutionGuid on Center_Hospital_Mapping (
InstitutionGuid ASC
)
go

/*==============================================================*/
/* Index: IX_CHMap_ServiceCenterId                              */
/*==============================================================*/
create index IX_CHMap_ServiceCenterId on Center_Hospital_Mapping (
ServiceCenterId ASC
)
go

/*==============================================================*/
/* Index: IX_CAS_CloudId                                        */
/*==============================================================*/
create index IX_CAS_CloudId on CloudAPIServer (
CloudId ASC
)
go

/*==============================================================*/
/* Index: IX_Customer_CGuid                                     */
/*==============================================================*/
create unique index IX_Customer_CGuid on Customer (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_Customer_UserId                                    */
/*==============================================================*/
create unique index IX_Customer_UserId on Customer (
UserId ASC
)
go

/*==============================================================*/
/* Index: IX_Customer_CustomerName                              */
/*==============================================================*/
create index IX_Customer_CustomerName on Customer (
CustomerName ASC
)
go

/*==============================================================*/
/* Index: IX_Customer_Email                                     */
/*==============================================================*/
create index IX_Customer_Email on Customer (
Email ASC
)
go

/*==============================================================*/
/* Index: IX_Customer_Phone                                     */
/*==============================================================*/
create unique index IX_Customer_Phone on Customer (
Phone ASC
)
go

/*==============================================================*/
/* Index: IX_Customer_State                                     */
/*==============================================================*/
create index IX_Customer_State on Customer (
State ASC
)
go

/*==============================================================*/
/* Index: IX_Customer_CreatedOnUtc                              */
/*==============================================================*/
create index IX_Customer_CreatedOnUtc on Customer (
CreatedOnUtc ASC
)
go

/*==============================================================*/
/* Index: IX_Customer_IsSync                                    */
/*==============================================================*/
create index IX_Customer_IsSync on Customer (
IsSync ASC
)
go

/*==============================================================*/
/* Index: IX_CCG_CustomerGuid                                   */
/*==============================================================*/
create index IX_CCG_CustomerGuid on CustomerCircleGroup (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_CCGM_GroupId                                       */
/*==============================================================*/
create index IX_CCGM_GroupId on CustomerCircleGroupMember (
GroupId ASC
)
go

/*==============================================================*/
/* Index: IX_CCR_ReqCustomerGuid                                */
/*==============================================================*/
create index IX_CCR_ReqCustomerGuid on CustomerCircleRequest (
RequestCustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_CCR_ResCustomerGuid                                */
/*==============================================================*/
create index IX_CCR_ResCustomerGuid on CustomerCircleRequest (
ResponseCustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_CConfig_CustomerGuid                               */
/*==============================================================*/
create index IX_CConfig_CustomerGuid on CustomerConfig (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_CConfig_ServiceCenterId                            */
/*==============================================================*/
create index IX_CConfig_ServiceCenterId on CustomerConfig (
ServiceCenterId ASC
)
go

/*==============================================================*/
/* Index: IX_CConfig_InstitutionGuid                            */
/*==============================================================*/
create index IX_CConfig_InstitutionGuid on CustomerConfig (
InstitutionGuid ASC
)
go

/*==============================================================*/
/* Index: IX_CConfig__CItemName                                 */
/*==============================================================*/
create index IX_CConfig__CItemName on CustomerConfig (
ConfigItemName ASC
)
go

/*==============================================================*/
/* Index: IX_CS_ShareGuid                                       */
/*==============================================================*/
create index IX_CS_ShareGuid on CustomerShare (
ShareGuid ASC
)
go

/*==============================================================*/
/* Index: IX_CS_CustomerGuid                                    */
/*==============================================================*/
create index IX_CS_CustomerGuid on CustomerShare (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_CS_InstitutionGuid                                 */
/*==============================================================*/
create index IX_CS_InstitutionGuid on CustomerShare (
InstitutionGuid ASC
)
go

/*==============================================================*/
/* Index: IX_DETotal_CustomerGuid                               */
/*==============================================================*/
create index IX_DETotal_CustomerGuid on DoctorEvaluationTotal (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_DKWord_CustomerGuid                                */
/*==============================================================*/
create index IX_DKWord_CustomerGuid on DoctorKeyWord (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_DKWord_KeyWord                                     */
/*==============================================================*/
create index IX_DKWord_KeyWord on DoctorKeyWord (
KeyWord ASC
)
go

/*==============================================================*/
/* Index: IX_DoctorMember_CGuid                                 */
/*==============================================================*/
create index IX_DoctorMember_CGuid on DoctorMember (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_DoctorMember_TKCode                                */
/*==============================================================*/
create index IX_DoctorMember_TKCode on DoctorMember (
TitleKindCode ASC
)
go

/*==============================================================*/
/* Index: IX_DoctorMember_TCode                                 */
/*==============================================================*/
create index IX_DoctorMember_TCode on DoctorMember (
TitleCode ASC
)
go

/*==============================================================*/
/* Index: IX_DoctorMember_OfficeId                              */
/*==============================================================*/
create index IX_DoctorMember_OfficeId on DoctorMember (
OfficeId ASC
)
go

/*==============================================================*/
/* Index: IX_DoctorMember_HCode                                 */
/*==============================================================*/
create index IX_DoctorMember_HCode on DoctorMember (
HospitalCode ASC
)
go

/*==============================================================*/
/* Index: IX_DoctorMember_IsExpert                              */
/*==============================================================*/
create index IX_DoctorMember_IsExpert on DoctorMember (
IsExpert ASC
)
go

/*==============================================================*/
/* Index: IX_DoctorMember_IsPlat                                */
/*==============================================================*/
create index IX_DoctorMember_IsPlat on DoctorMember (
IsPlat ASC
)
go

/*==============================================================*/
/* Index: IX_DMSD_CustomerGuid                                  */
/*==============================================================*/
create index IX_DMSD_CustomerGuid on DoctorMemberSubDefine (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_DO_CustomerGuid                                    */
/*==============================================================*/
create index IX_DO_CustomerGuid on DoctorOffice (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_DQCenter_CustomerGuid                              */
/*==============================================================*/
create index IX_DQCenter_CustomerGuid on DoctorQualityCenter (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_DQCenter_QualityCenterId                           */
/*==============================================================*/
create index IX_DQCenter_QualityCenterId on DoctorQualityCenter (
QualityCenterId ASC
)
go

/*==============================================================*/
/* Index: IX_DQCenter_HospitalCode                              */
/*==============================================================*/
create index IX_DQCenter_HospitalCode on DoctorQualityCenter (
HospitalCode ASC
)
go

/*==============================================================*/
/* Index: IX_DService_CustomerGuid                              */
/*==============================================================*/
create index IX_DService_CustomerGuid on DoctorService (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_DService_SCenterId                                 */
/*==============================================================*/
create index IX_DService_SCenterId on DoctorService (
ServiceCenterId ASC
)
go

/*==============================================================*/
/* Index: IX_DSCenter_CustomerGuid                              */
/*==============================================================*/
create index IX_DSCenter_CustomerGuid on DoctorServiceCenter (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_DSCenter_ServiceCenterId                           */
/*==============================================================*/
create index IX_DSCenter_ServiceCenterId on DoctorServiceCenter (
ServiceCenterId ASC
)
go

/*==============================================================*/
/* Index: IX_DSR_CustomerGuid                                   */
/*==============================================================*/
create index IX_DSR_CustomerGuid on DoctorStarRate (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_DTotal_CustomerGuid                                */
/*==============================================================*/
create index IX_DTotal_CustomerGuid on DoctorTotal (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_DTotal_SCenterId                                   */
/*==============================================================*/
create index IX_DTotal_SCenterId on DoctorTotal (
ServiceCenterId ASC
)
go

/*==============================================================*/
/* Index: IX_FL_CustomerGuid                                    */
/*==============================================================*/
create index IX_FL_CustomerGuid on FrozenList (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_FL_InstitutionGuid                                 */
/*==============================================================*/
create index IX_FL_InstitutionGuid on FrozenList (
InstitutionGuid ASC
)
go

/*==============================================================*/
/* Index: IX_FL_ServiceCenterId                                 */
/*==============================================================*/
create index IX_FL_ServiceCenterId on FrozenList (
ServiceCenterId ASC
)
go

/*==============================================================*/
/* Index: IX_FL_Kind                                            */
/*==============================================================*/
create index IX_FL_Kind on FrozenList (
Kind ASC
)
go

/*==============================================================*/
/* Index: IX_HCSR_InstitutionGuid                               */
/*==============================================================*/
create index IX_HCSR_InstitutionGuid on HospitalCenterSignRecord (
InstitutionGuid ASC
)
go

/*==============================================================*/
/* Index: IX_HCSR_ServiceCenterId                               */
/*==============================================================*/
create index IX_HCSR_ServiceCenterId on HospitalCenterSignRecord (
ServiceCenterId ASC
)
go

/*==============================================================*/
/* Index: IX_HG_InstitutionGuid                                 */
/*==============================================================*/
create index IX_HG_InstitutionGuid on HospitalGroup (
InstitutionGuid ASC
)
go

/*==============================================================*/
/* Index: IX_Institution_IGuid                                  */
/*==============================================================*/
create index IX_Institution_IGuid on Institution (
InstitutionGuid ASC
)
go

/*==============================================================*/
/* Index: IX_Institution_Kind                                   */
/*==============================================================*/
create index IX_Institution_Kind on Institution (
Kind ASC
)
go

/*==============================================================*/
/* Index: IX_Institution_ProID                                  */
/*==============================================================*/
create index IX_Institution_ProID on Institution (
ProID ASC
)
go

/*==============================================================*/
/* Index: IX_Institution_CityID                                 */
/*==============================================================*/
create index IX_Institution_CityID on Institution (
CityID ASC
)
go

/*==============================================================*/
/* Index: IX_Institution_CountyId                               */
/*==============================================================*/
create index IX_Institution_CountyId on Institution (
CountyId ASC
)
go

/*==============================================================*/
/* Index: IX_Institution_RegDate                                */
/*==============================================================*/
create index IX_Institution_RegDate on Institution (
RegDate ASC
)
go

/*==============================================================*/
/* Index: IX_Institution_State                                  */
/*==============================================================*/
create index IX_Institution_State on Institution (
State ASC
)
go

/*==============================================================*/
/* Index: IX_IA_InstitutionGuid                                 */
/*==============================================================*/
create index IX_IA_InstitutionGuid on InstitutionApply (
InstitutionGuid ASC
)
go

/*==============================================================*/
/* Index: IX_IA_Telphone                                        */
/*==============================================================*/
create index IX_IA_Telphone on InstitutionApply (
Telphone ASC
)
go

/*==============================================================*/
/* Index: IX_IDA_GrantInstitutionGuid                           */
/*==============================================================*/
create index IX_IDA_GrantInstitutionGuid on InstitutionDataAccess (
GrantInstitutionGuid ASC
)
go

/*==============================================================*/
/* Index: IX_IDA_GrantInstitutionlCode                          */
/*==============================================================*/
create index IX_IDA_GrantInstitutionlCode on InstitutionDataAccess (
GrantInstitutionlCode ASC
)
go

/*==============================================================*/
/* Index: IX_IDA_AccessInstitutionGuid                          */
/*==============================================================*/
create index IX_IDA_AccessInstitutionGuid on InstitutionDataAccess (
AccessInstitutionGuid ASC
)
go

/*==============================================================*/
/* Index: IX_IDA_State                                          */
/*==============================================================*/
create index IX_IDA_State on InstitutionDataAccess (
State ASC
)
go

/*==============================================================*/
/* Index: IX_IDS_InstitutionGuid                                */
/*==============================================================*/
create index IX_IDS_InstitutionGuid on InstitutionDiskSpace (
InstitutionGuid ASC
)
go

/*==============================================================*/
/* Index: IX_IManager_CustomerGuid                              */
/*==============================================================*/
create index IX_IManager_CustomerGuid on InstitutionManager (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_IManager_InstitutionGuid                           */
/*==============================================================*/
create index IX_IManager_InstitutionGuid on InstitutionManager (
InstitutionGuid ASC
)
go

/*==============================================================*/
/* Index: IX_IMap_MInstitutionGuid                              */
/*==============================================================*/
create index IX_IMap_MInstitutionGuid on InstitutionMapping (
MInstitutionGuid ASC
)
go

/*==============================================================*/
/* Index: IX_IMap_CInstitutionGuid                              */
/*==============================================================*/
create index IX_IMap_CInstitutionGuid on InstitutionMapping (
CInstitutionGuid ASC
)
go

/*==============================================================*/
/* Index: IX_IOpen_InstitutionGuid                              */
/*==============================================================*/
create index IX_IOpen_InstitutionGuid on InstitutionOpen (
InstitutionGuid ASC
)
go

/*==============================================================*/
/* Index: IX_IPP_InstitutionGuid                                */
/*==============================================================*/
create index IX_IPP_InstitutionGuid on InstitutionProPic (
InstitutionGuid ASC
)
go

/*==============================================================*/
/* Index: IX_IPP_AttributeValue                                 */
/*==============================================================*/
create index IX_IPP_AttributeValue on InstitutionProPic (
AttributeValue ASC
)
go

/*==============================================================*/
/* Index: IX_ISR_InstitutionGuid                                */
/*==============================================================*/
create index IX_ISR_InstitutionGuid on InstitutionStarRate (
InstitutionGuid ASC
)
go

/*==============================================================*/
/* Index: IX_IVT_InstitutionGuid                                */
/*==============================================================*/
create index IX_IVT_InstitutionGuid on InstitutionVideoTime (
InstitutionGuid ASC
)
go

/*==============================================================*/
/* Index: IX_ICM_InstitutionGuid                                */
/*==============================================================*/
create index IX_ICM_InstitutionGuid on Institution_Cloud_Mapping (
InstitutionGuid ASC
)
go

/*==============================================================*/
/* Index: IX_ICM_CloudId                                        */
/*==============================================================*/
create index IX_ICM_CloudId on Institution_Cloud_Mapping (
CloudId ASC
)
go

/*==============================================================*/
/* Index: IX_Leader_CustomerGuid                                */
/*==============================================================*/
create index IX_Leader_CustomerGuid on Leader (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_Leader_InstitutionGuid                             */
/*==============================================================*/
create index IX_Leader_InstitutionGuid on Leader (
InstitutionGuid ASC
)
go

/*==============================================================*/
/* Index: IX_LA_CustomerGuid                                    */
/*==============================================================*/
create index IX_LA_CustomerGuid on LicenseAgreement (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_LA_LicenseId                                       */
/*==============================================================*/
create index IX_LA_LicenseId on LicenseAgreement (
LicenseId ASC
)
go

/*==============================================================*/
/* Index: IX_MDTG_ServiceCenterId                               */
/*==============================================================*/
create index IX_MDTG_ServiceCenterId on MDTGroup (
ServiceCenterId ASC
)
go

/*==============================================================*/
/* Index: IX_MDTG_CustomerGuid                                  */
/*==============================================================*/
create index IX_MDTG_CustomerGuid on MDTGroup (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_MDTGD_MDTGroupId                                   */
/*==============================================================*/
create index IX_MDTGD_MDTGroupId on MDTGroupDoctor (
MDTGroupId ASC
)
go

/*==============================================================*/
/* Index: IX_MDTGD_CustomerGuid                                 */
/*==============================================================*/
create index IX_MDTGD_CustomerGuid on MDTGroupDoctor (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_MDTGD_ServiceCenterId                              */
/*==============================================================*/
create index IX_MDTGD_ServiceCenterId on MDTGroupDoctor (
ServiceCenterId ASC
)
go

/*==============================================================*/
/* Index: IX_MS_CustomerGuid                                    */
/*==============================================================*/
create index IX_MS_CustomerGuid on MedicalStaff (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_MS_HospitalCode                                    */
/*==============================================================*/
create index IX_MS_HospitalCode on MedicalStaff (
HospitalCode ASC
)
go

/*==============================================================*/
/* Index: IX_MCS_InstitutionGuid                                */
/*==============================================================*/
create index IX_MCS_InstitutionGuid on MemberCenterService (
InstitutionGuid ASC
)
go

/*==============================================================*/
/* Index: IX_MCS_ServiceCenterId                                */
/*==============================================================*/
create index IX_MCS_ServiceCenterId on MemberCenterService (
ServiceCenterId ASC
)
go

/*==============================================================*/
/* Index: IX_MHospital_IGuid                                    */
/*==============================================================*/
create index IX_MHospital_IGuid on MemberHospital (
InstitutionGuid ASC
)
go

/*==============================================================*/
/* Index: IX_MHospital_HGGuid                                   */
/*==============================================================*/
create index IX_MHospital_HGGuid on MemberHospital (
HospitalGroupGuid ASC
)
go

/*==============================================================*/
/* Index: IX_MM_CustomerGuid                                    */
/*==============================================================*/
create index IX_MM_CustomerGuid on MonitorManager (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_MCa_CustomerGuid                                   */
/*==============================================================*/
create index IX_MCa_CustomerGuid on MyCatalog (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_MC_CustomerGuid                                    */
/*==============================================================*/
create index IX_MC_CustomerGuid on MyCollection (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_Mco_CollectionId                                   */
/*==============================================================*/
create index IX_Mco_CollectionId on MyCollection (
CollectionId ASC
)
go

/*==============================================================*/
/* Index: IX_MC_CollectionKind                                  */
/*==============================================================*/
create index IX_MC_CollectionKind on MyCollection (
CollectionKind ASC
)
go

/*==============================================================*/
/* Index: IX_MCo_MyCatalogId                                    */
/*==============================================================*/
create index IX_MCo_MyCatalogId on MyCollection (
MyCatalogId ASC
)
go

/*==============================================================*/
/* Index: IX_MCo_PatientName                                    */
/*==============================================================*/
create index IX_MCo_PatientName on MyCollection (
PatientName ASC
)
go

/*==============================================================*/
/* Index: IX_MCo_ICDCode                                        */
/*==============================================================*/
create index IX_MCo_ICDCode on MyCollection (
ICDCode ASC
)
go

/*==============================================================*/
/* Index: IX_MCo_AcrCode                                        */
/*==============================================================*/
create index IX_MCo_AcrCode on MyCollection (
AcrCode ASC
)
go

/*==============================================================*/
/* Index: IX_MCr_CustomerGuid                                   */
/*==============================================================*/
create index IX_MCr_CustomerGuid on MyCredit (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_MCC_CustomerGuid                                   */
/*==============================================================*/
create index IX_MCC_CustomerGuid on MyCustomerCircle (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_MFM_CustomerGuid                                   */
/*==============================================================*/
create index IX_MFM_CustomerGuid on MyFamilyMember (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_MFM_MyCustomerGuid                                 */
/*==============================================================*/
create index IX_MFM_MyCustomerGuid on MyFamilyMember (
MyCustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_MyFD_CustomerGuid                                  */
/*==============================================================*/
create index IX_MyFD_CustomerGuid on MyFocusDoctor (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_MyFE_CustomerGuid                                  */
/*==============================================================*/
create index IX_MyFE_CustomerGuid on MyFocusExpert (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_MyFP_CustomerGuid                                  */
/*==============================================================*/
create index IX_MyFP_CustomerGuid on MyFocusPatient (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_MyFTC_CustomerGuid                                 */
/*==============================================================*/
create index IX_MyFTC_CustomerGuid on MyFocusTeachCenter (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_MHC_CustomerGuid                                   */
/*==============================================================*/
create index IX_MHC_CustomerGuid on MyHealthCard (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_MSD_CustomerGuid                                   */
/*==============================================================*/
create index IX_MSD_CustomerGuid on MyServiceDate (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_MSDS_MySDateId                                     */
/*==============================================================*/
create index IX_MSDS_MySDateId on MyServiceDateShedule (
MyServiceDateId ASC
)
go

/*==============================================================*/
/* Index: IX_MSTP_MySDateId                                     */
/*==============================================================*/
create index IX_MSTP_MySDateId on MyServiceTimePart (
MyServiceDateId ASC
)
go

/*==============================================================*/
/* Index: IX_PDS_CustomerGuid                                   */
/*==============================================================*/
create index IX_PDS_CustomerGuid on PatientDiskSpace (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_PVPT_CustomerGuid                                  */
/*==============================================================*/
create index IX_PVPT_CustomerGuid on PatientVideoPhoneTime (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_PSR_InstitutionGuid                                */
/*==============================================================*/
create index IX_PSR_InstitutionGuid on PlatSignRecord (
InstitutionGuid ASC
)
go

/*==============================================================*/
/* Index: IX_PML_CustomerGuid                                   */
/*==============================================================*/
create index IX_PML_CustomerGuid on PublicMemberLevel (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_QC_InstitutionGuid                                 */
/*==============================================================*/
create index IX_QC_InstitutionGuid on QualityCenter (
InstitutionGuid ASC
)
go

/*==============================================================*/
/* Index: IX_QCH_QualityCenterId                                */
/*==============================================================*/
create index IX_QCH_QualityCenterId on QualityCenterHospital (
QualityCenterId ASC
)
go

/*==============================================================*/
/* Index: IX_QCH_QualityGroupId                                 */
/*==============================================================*/
create index IX_QCH_QualityGroupId on QualityCenterHospital (
QualityGroupId ASC
)
go

/*==============================================================*/
/* Index: IX_QDH_CustomerGuid                                   */
/*==============================================================*/
create index IX_QDH_CustomerGuid on QualityDoctorHospital (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_QG_QualityCenterId                                 */
/*==============================================================*/
create index IX_QG_QualityCenterId on QualityGroup (
QualityCenterId ASC
)
go

/*==============================================================*/
/* Index: IX_QGD_QualityCenterId                                */
/*==============================================================*/
create index IX_QGD_QualityCenterId on QualityGroupDoctor (
QualityCenterId ASC
)
go

/*==============================================================*/
/* Index: IX_QGD_QualityGroupId                                 */
/*==============================================================*/
create index IX_QGD_QualityGroupId on QualityGroupDoctor (
QualityGroupId ASC
)
go

/*==============================================================*/
/* Index: IX_QGD_CustomerGuid                                   */
/*==============================================================*/
create index IX_QGD_CustomerGuid on QualityGroupDoctor (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_RCM_CustomerRole_Id                                */
/*==============================================================*/
create index IX_RCM_CustomerRole_Id on Role_Category_Mapping (
CustomerRole_Id ASC
)
go

/*==============================================================*/
/* Index: IX_RCM_Category                                       */
/*==============================================================*/
create index IX_RCM_Category on Role_Category_Mapping (
Category ASC
)
go

/*==============================================================*/
/* Index: IX_SCenter_IGuid                                      */
/*==============================================================*/
create index IX_SCenter_IGuid on ServiceCenter (
InstitutionGuid ASC
)
go

/*==============================================================*/
/* Index: IX_SCenter_Kind                                       */
/*==============================================================*/
create index IX_SCenter_Kind on ServiceCenter (
Kind ASC
)
go

/*==============================================================*/
/* Index: IX_SCI_CustomerGuid                                   */
/*==============================================================*/
create index IX_SCI_CustomerGuid on ServiceCenterInvitation (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_SCI_ICustomerGuid                                  */
/*==============================================================*/
create index IX_SCI_ICustomerGuid on ServiceCenterInvitation (
InvitationCustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_SCManager_CustomerGuid                             */
/*==============================================================*/
create index IX_SCManager_CustomerGuid on ServiceCenterManager (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_SCManager_ServiceCenterId                          */
/*==============================================================*/
create index IX_SCManager_ServiceCenterId on ServiceCenterManager (
ServiceCenterId ASC
)
go

/*==============================================================*/
/* Index: IX_SCO_ServiceCenterId                                */
/*==============================================================*/
create index IX_SCO_ServiceCenterId on ServiceCenterOffice (
ServiceCenterId ASC
)
go

/*==============================================================*/
/* Index: IX_SCP_ServiceCenterId                                */
/*==============================================================*/
create index IX_SCP_ServiceCenterId on ServiceCenterPic (
ServiceCenterId ASC
)
go

/*==============================================================*/
/* Index: IX_SCS_ServiceCenterId                                */
/*==============================================================*/
create index IX_SCS_ServiceCenterId on ServiceCenterSetup (
ServiceCenterId ASC
)
go

/*==============================================================*/
/* Index: IX_SCT_InstitutionGuid                                */
/*==============================================================*/
create index IX_SCT_InstitutionGuid on ServiceCenterTotal (
InstitutionGuid ASC
)
go

/*==============================================================*/
/* Index: IX_SCT_ServiceCenterId                                */
/*==============================================================*/
create index IX_SCT_ServiceCenterId on ServiceCenterTotal (
ServiceCenterId ASC
)
go

/*==============================================================*/
/* Index: IX_SD_InstitutionGuid                                 */
/*==============================================================*/
create index IX_SD_InstitutionGuid on ServiceDNS (
InstitutionGuid ASC
)
go

/*==============================================================*/
/* Index: IX_SOpen_ServiceCenterId                              */
/*==============================================================*/
create index IX_SOpen_ServiceCenterId on ServiceOpen (
ServiceCenterId ASC
)
go

/*==============================================================*/
/* Index: IX_ST_ShareGuid                                       */
/*==============================================================*/
create index IX_ST_ShareGuid on ShareTarget (
ShareGuid ASC
)
go

/*==============================================================*/
/* Index: IX_ST_CustomerGuid                                    */
/*==============================================================*/
create index IX_ST_CustomerGuid on ShareTarget (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_SSDS_InstitutionGuid                               */
/*==============================================================*/
create index IX_SSDS_InstitutionGuid on StoreShareDiskSpace (
InstitutionGuid ASC
)
go

/*==============================================================*/
/* Index: IX_Subbe_SubscribeGuid                                */
/*==============================================================*/
create index IX_Subbe_SubscribeGuid on Subscribe (
SubscribeGuid ASC
)
go

/*==============================================================*/
/* Index: IX_Subbe_SubscribeContent                             */
/*==============================================================*/
create index IX_Subbe_SubscribeContent on Subscribe (
SubscribeContent ASC
)
go

/*==============================================================*/
/* Index: IX_Subbe_SubscribeCycle                               */
/*==============================================================*/
create index IX_Subbe_SubscribeCycle on Subscribe (
SubscribeCycle ASC
)
go

/*==============================================================*/
/* Index: IX_Subbe_InstitutionGuid                              */
/*==============================================================*/
create index IX_Subbe_InstitutionGuid on Subscribe (
InstitutionGuid ASC
)
go

/*==============================================================*/
/* Index: IX_Subbe_CustomerGuid                                 */
/*==============================================================*/
create index IX_Subbe_CustomerGuid on Subscribe (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_Subbe_State                                        */
/*==============================================================*/
create index IX_Subbe_State on Subscribe (
State ASC
)
go

/*==============================================================*/
/* Index: IX_TCManager_CustomerGuid                             */
/*==============================================================*/
create index IX_TCManager_CustomerGuid on TeachCenterManager (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_TCManager_TeachCenterId                            */
/*==============================================================*/
create index IX_TCManager_TeachCenterId on TeachCenterManager (
TeachCenterId ASC
)
go

/*==============================================================*/
/* Index: IX_TMaster_CustomerGuid                               */
/*==============================================================*/
create index IX_TMaster_CustomerGuid on TeachMaster (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_TMaster_InstitutionGuid                            */
/*==============================================================*/
create index IX_TMaster_InstitutionGuid on TeachMaster (
InstitutionGuid ASC
)
go

/*==============================================================*/
/* Index: IX_UQS_CustomerGuid                                   */
/*==============================================================*/
create index IX_UQS_CustomerGuid on UserQuerySet (
CustomerGuid ASC
)
go

