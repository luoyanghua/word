/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2000                    */
/* Created on:     2018/3/6 17:04:10                            */
/*==============================================================*/


/*==============================================================*/
/* Index: IX_ACR_AcrCode                                        */
/*==============================================================*/
create index IX_ACR_AcrCode on ACR (
AcrCode ASC
)
go

/*==============================================================*/
/* Index: IX_ACR_ParentId                                       */
/*==============================================================*/
create index IX_ACR_ParentId on ACR (
ParentId ASC
)
go

/*==============================================================*/
/* Index: IX_ACR_AcrType                                        */
/*==============================================================*/
create index IX_ACR_AcrType on ACR (
AcrType ASC
)
go

/*==============================================================*/
/* Index: IX_Alert_ServiceId                                    */
/*==============================================================*/
create index IX_Alert_ServiceId on Alert (
ServiceId ASC
)
go

/*==============================================================*/
/* Index: IX_Alert_Kind                                         */
/*==============================================================*/
create index IX_Alert_Kind on Alert (
Kind ASC
)
go

/*==============================================================*/
/* Index: IX_Alert_SendCustomerGuid                             */
/*==============================================================*/
create index IX_Alert_SendCustomerGuid on Alert (
SendCustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_Alert_ReceiveCustomerGuid                          */
/*==============================================================*/
create index IX_Alert_ReceiveCustomerGuid on Alert (
ReceiveCustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_Alert_AlertTime                                    */
/*==============================================================*/
create index IX_Alert_AlertTime on Alert (
AlertTime ASC
)
go

/*==============================================================*/
/* Index: IX_Alert_AlertType                                    */
/*==============================================================*/
create index IX_Alert_AlertType on Alert (
AlertType ASC
)
go

/*==============================================================*/
/* Index: IX_Article_Title                                      */
/*==============================================================*/
create index IX_Article_Title on Article (
Title ASC
)
go

/*==============================================================*/
/* Index: IX_Article_InstitutionGuid                            */
/*==============================================================*/
create index IX_Article_InstitutionGuid on Article (
InstitutionGuid ASC
)
go

/*==============================================================*/
/* Index: IX_Article_ServiceId                                  */
/*==============================================================*/
create index IX_Article_ServiceId on Article (
ServiceId ASC
)
go

/*==============================================================*/
/* Index: IX_Article_TypeCode                                   */
/*==============================================================*/
create index IX_Article_TypeCode on Article (
TypeCode ASC
)
go

/*==============================================================*/
/* Index: IX_Article_ModuleId                                   */
/*==============================================================*/
create index IX_Article_ModuleId on Article (
ModuleId ASC
)
go

/*==============================================================*/
/* Index: IX_Article_ColumnId                                   */
/*==============================================================*/
create index IX_Article_ColumnId on Article (
ColumnId ASC
)
go

/*==============================================================*/
/* Index: IX_Article_PublishDate                                */
/*==============================================================*/
create index IX_Article_PublishDate on Article (
PublishDate ASC
)
go

/*==============================================================*/
/* Index: IX_Article_Role                                       */
/*==============================================================*/
create index IX_Article_Role on Article (
Role ASC
)
go

/*==============================================================*/
/* Index: IX_Column_Kind                                        */
/*==============================================================*/
create index IX_Column_Kind on "Column" (
Kind ASC
)
go

/*==============================================================*/
/* Index: IX_Column_ServiceId                                   */
/*==============================================================*/
create index IX_Column_ServiceId on "Column" (
ServiceId ASC
)
go

/*==============================================================*/
/* Index: IX_Column_SectionCode                                 */
/*==============================================================*/
create index IX_Column_SectionCode on "Column" (
SectionCode ASC
)
go

/*==============================================================*/
/* Index: IX_Column_SysId                                       */
/*==============================================================*/
create index IX_Column_SysId on "Column" (
SysId ASC
)
go

/*==============================================================*/
/* Index: IX_Column_IsSystem                                    */
/*==============================================================*/
create index IX_Column_IsSystem on "Column" (
IsSystem ASC
)
go

/*==============================================================*/
/* Index: IX_CKindOffice_KindCode                               */
/*==============================================================*/
create index IX_CKindOffice_KindCode on ConsultKindOffice (
ConsultKindCode ASC
)
go

/*==============================================================*/
/* Index: IX_CKindOffice_SecondId                               */
/*==============================================================*/
create index IX_CKindOffice_SecondId on ConsultKindOffice (
SubjectSecondId ASC
)
go

/*==============================================================*/
/* Index: IX_DataDicInfo_LookupKey                              */
/*==============================================================*/
create index IX_DataDicInfo_LookupKey on DataDicInfo (
LookupKey ASC
)
go

/*==============================================================*/
/* Index: IX_DataDicInfo_DicCode                                */
/*==============================================================*/
create index IX_DataDicInfo_DicCode on DataDicInfo (
DicCode ASC
)
go

/*==============================================================*/
/* Index: IX_DataDicType_LookupKey                              */
/*==============================================================*/
create index IX_DataDicType_LookupKey on DataDicType (
LookupKey ASC
)
go

/*==============================================================*/
/* Index: IX_DDownload_InstitutionGuid                          */
/*==============================================================*/
create index IX_DDownload_InstitutionGuid on DataDownload (
InstitutionGuid ASC
)
go

/*==============================================================*/
/* Index: IX_DDownload_ServiceId                                */
/*==============================================================*/
create index IX_DDownload_ServiceId on DataDownload (
ServiceId ASC
)
go

/*==============================================================*/
/* Index: IX_DDownload_PublishDate                              */
/*==============================================================*/
create index IX_DDownload_PublishDate on DataDownload (
PublishDate ASC
)
go

/*==============================================================*/
/* Index: IX_DDownload_IsPrivate                                */
/*==============================================================*/
create index IX_DDownload_IsPrivate on DataDownload (
IsPrivate ASC
)
go

/*==============================================================*/
/* Index: IX_DayAccessCount_AccessDay                           */
/*==============================================================*/
create index IX_DayAccessCount_AccessDay on DayAccessCount (
AccessDay ASC
)
go

/*==============================================================*/
/* Index: IX_Detection_ServiceId                                */
/*==============================================================*/
create index IX_Detection_ServiceId on Detection (
ServiceId ASC
)
go

/*==============================================================*/
/* Index: IX_Detection_DetectionType                            */
/*==============================================================*/
create index IX_Detection_DetectionType on Detection (
DetectionType ASC
)
go

/*==============================================================*/
/* Index: IX_Detection_SubmitDate                               */
/*==============================================================*/
create index IX_Detection_SubmitDate on Detection (
SubmitDate ASC
)
go

/*==============================================================*/
/* Index: IX_DLLog_CustomerGuid                                 */
/*==============================================================*/
create index IX_DLLog_CustomerGuid on DevicesLoginLog (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_DT_CatalogId                                       */
/*==============================================================*/
create index IX_DT_CatalogId on DiagnosticTemplate (
CatalogId ASC
)
go

/*==============================================================*/
/* Index: IX_DT_ExamType                                        */
/*==============================================================*/
create index IX_DT_ExamType on DiagnosticTemplate (
ExamType ASC
)
go

/*==============================================================*/
/* Index: IX_DTC_ServiceCenterId                                */
/*==============================================================*/
create index IX_DTC_ServiceCenterId on DiagnosticTemplateCatalog (
ServiceCenterId ASC
)
go

/*==============================================================*/
/* Index: IX_DTC_ParentId                                       */
/*==============================================================*/
create index IX_DTC_ParentId on DiagnosticTemplateCatalog (
ParentId ASC
)
go

/*==============================================================*/
/* Index: IX_DTC_ExamType                                       */
/*==============================================================*/
create index IX_DTC_ExamType on DiagnosticTemplateCatalog (
ExamType ASC
)
go

/*==============================================================*/
/* Index: IX_DSI_FirstItemGuid                                  */
/*==============================================================*/
create index IX_DSI_FirstItemGuid on DocSecondItem (
FirstItemGuid ASC
)
go

/*==============================================================*/
/* Index: IX_HWM_ServiceId                                      */
/*==============================================================*/
create index IX_HWM_ServiceId on HWMeeting (
ServiceId ASC
)
go

/*==============================================================*/
/* Index: IX_HWM_CustomerGuid                                   */
/*==============================================================*/
create index IX_HWM_CustomerGuid on HWMeeting (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_HWM_State                                          */
/*==============================================================*/
create index IX_HWM_State on HWMeeting (
State ASC
)
go

/*==============================================================*/
/* Index: IX_HWS_CustomerGuid                                   */
/*==============================================================*/
create index IX_HWS_CustomerGuid on HWSite (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_HWS_Uri                                            */
/*==============================================================*/
create index IX_HWS_Uri on HWSite (
Uri ASC
)
go

/*==============================================================*/
/* Index: IX_HWSS_SiteUri                                       */
/*==============================================================*/
create index IX_HWSS_SiteUri on HWSiteSchedule (
SiteUri ASC
)
go

/*==============================================================*/
/* Index: IX_HWSS_ServiceId                                     */
/*==============================================================*/
create index IX_HWSS_ServiceId on HWSiteSchedule (
ServiceId ASC
)
go

/*==============================================================*/
/* Index: IX_HWSS_BeginTime                                     */
/*==============================================================*/
create index IX_HWSS_BeginTime on HWSiteSchedule (
BeginTime ASC
)
go

/*==============================================================*/
/* Index: IX_HWSS_EndTime                                       */
/*==============================================================*/
create index IX_HWSS_EndTime on HWSiteSchedule (
EndTime ASC
)
go

/*==============================================================*/
/* Index: IX_HDItem_BusinessId                                  */
/*==============================================================*/
create index IX_HDItem_BusinessId on HistoryDocItem (
BusinessId ASC
)
go

/*==============================================================*/
/* Index: IX_Hospital_NatureCode                                */
/*==============================================================*/
create index IX_Hospital_NatureCode on Hospital (
HospitalNatureCode ASC
)
go

/*==============================================================*/
/* Index: IX_Hospital_LevelCode                                 */
/*==============================================================*/
create index IX_Hospital_LevelCode on Hospital (
HospitalLevelCode ASC
)
go

/*==============================================================*/
/* Index: IX_Hospital_ProID                                     */
/*==============================================================*/
create index IX_Hospital_ProID on Hospital (
ProID ASC
)
go

/*==============================================================*/
/* Index: IX_Hospital_CityID                                    */
/*==============================================================*/
create index IX_Hospital_CityID on Hospital (
CityID ASC
)
go

/*==============================================================*/
/* Index: IX_Hospital_CountyId                                  */
/*==============================================================*/
create index IX_Hospital_CountyId on Hospital (
CountyId ASC
)
go

/*==============================================================*/
/* Index: IDX_JBMC_SRM1                                         */
/*==============================================================*/
create index IDX_JBMC_SRM1 on JBMC (
SRM1 ASC
)
go

/*==============================================================*/
/* Index: IDX_JBMC_SRM2                                         */
/*==============================================================*/
create index IDX_JBMC_SRM2 on JBMC (
SRM2 ASC
)
go

/*==============================================================*/
/* Index: IX_JPD_CustomerGuid                                   */
/*==============================================================*/
create index IX_JPD_CustomerGuid on JPushDevices (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_JPDT_DeviceId                                      */
/*==============================================================*/
create index IX_JPDT_DeviceId on JPushDevicesTags (
DeviceId ASC
)
go

/*==============================================================*/
/* Index: IX_JPDT_TagId                                         */
/*==============================================================*/
create index IX_JPDT_TagId on JPushDevicesTags (
TagId ASC
)
go

/*==============================================================*/
/* Index: IX_JPM_ServiceId                                      */
/*==============================================================*/
create index IX_JPM_ServiceId on JPushMessages (
ServiceId ASC
)
go

/*==============================================================*/
/* Index: IX_JPM_CustomerGuid                                   */
/*==============================================================*/
create index IX_JPM_CustomerGuid on JPushMessages (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_LA_LogId                                           */
/*==============================================================*/
create index IX_LA_LogId on LogAudit (
LogId ASC
)
go

/*==============================================================*/
/* Index: IX_LA_AuditCustomerGuid                               */
/*==============================================================*/
create index IX_LA_AuditCustomerGuid on LogAudit (
AuditCustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_LA_AuditResultCode                                 */
/*==============================================================*/
create index IX_LA_AuditResultCode on LogAudit (
AuditResultCode ASC
)
go

/*==============================================================*/
/* Index: IX_MeetKeyWord_MeetId                                 */
/*==============================================================*/
create index IX_MeetKeyWord_MeetId on MeetKeyWord (
MeetId ASC
)
go

/*==============================================================*/
/* Index: IX_Meeting_State                                      */
/*==============================================================*/
create index IX_Meeting_State on Meeting (
State ASC
)
go

/*==============================================================*/
/* Index: IX_Meeting_GlobalId                                   */
/*==============================================================*/
create index IX_Meeting_GlobalId on Meeting (
GlobalId ASC
)
go

/*==============================================================*/
/* Index: IX_Meeting_Kind                                       */
/*==============================================================*/
create index IX_Meeting_Kind on Meeting (
Kind ASC
)
go

/*==============================================================*/
/* Index: IX_Meeting_MeetingId                                  */
/*==============================================================*/
create index IX_Meeting_MeetingId on Meeting (
MeetingId ASC
)
go

/*==============================================================*/
/* Index: IX_Meeting_CustomerGuid                               */
/*==============================================================*/
create index IX_Meeting_CustomerGuid on Meeting (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_Meeting_ServiceId                                  */
/*==============================================================*/
create index IX_Meeting_ServiceId on Meeting (
ServiceId ASC
)
go

/*==============================================================*/
/* Index: IX_Module_SectionCode                                 */
/*==============================================================*/
create index IX_Module_SectionCode on Module (
SectionCode ASC
)
go

/*==============================================================*/
/* Index: IX_Module_ServiceId                                   */
/*==============================================================*/
create index IX_Module_ServiceId on Module (
ServiceId ASC
)
go

/*==============================================================*/
/* Index: IX_OperatorLog_Kind                                   */
/*==============================================================*/
create index IX_OperatorLog_Kind on OperatorLog (
Kind ASC
)
go

/*==============================================================*/
/* Index: IX_OperatorLog_GlobalId                               */
/*==============================================================*/
create index IX_OperatorLog_GlobalId on OperatorLog (
GlobalId ASC
)
go

/*==============================================================*/
/* Index: IX_OperatorLog_CustomerGuid                           */
/*==============================================================*/
create index IX_OperatorLog_CustomerGuid on OperatorLog (
OperateCustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_OperatorLog_OperateTime                            */
/*==============================================================*/
create index IX_OperatorLog_OperateTime on OperatorLog (
OperateTime ASC
)
go

/*==============================================================*/
/* Index: IX_MeetGuest_MeetId                                   */
/*==============================================================*/
create index IX_MeetGuest_MeetId on PlatMeetGuest (
MeetId ASC
)
go

/*==============================================================*/
/* Index: IX_MeetGuest_CustomerGuid                             */
/*==============================================================*/
create index IX_MeetGuest_CustomerGuid on PlatMeetGuest (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_PMeet_MeetId                                       */
/*==============================================================*/
create index IX_PMeet_MeetId on PlatMeeting (
MeetId ASC
)
go

/*==============================================================*/
/* Index: IX_PMeet_KeyWord                                      */
/*==============================================================*/
create index IX_PMeet_KeyWord on PlatMeeting (
KeyWord ASC
)
go

/*==============================================================*/
/* Index: IX_PMeet_CustomerGuid                                 */
/*==============================================================*/
create index IX_PMeet_CustomerGuid on PlatMeeting (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_PMeet_ExpertGuid                                   */
/*==============================================================*/
create index IX_PMeet_ExpertGuid on PlatMeeting (
ExpertGuid ASC
)
go

/*==============================================================*/
/* Index: IX_PMeet_PublishDate                                  */
/*==============================================================*/
create index IX_PMeet_PublishDate on PlatMeeting (
PublishDate ASC
)
go

/*==============================================================*/
/* Index: IX_PMeet_State                                        */
/*==============================================================*/
create index IX_PMeet_State on PlatMeeting (
State ASC
)
go

/*==============================================================*/
/* Index: IX_PT_ServiceCenterId                                 */
/*==============================================================*/
create index IX_PT_ServiceCenterId on PrintTemplate (
ServiceCenterId ASC
)
go

/*==============================================================*/
/* Index: IX_PAR_ServiceNo                                      */
/*==============================================================*/
create index IX_PAR_ServiceNo on PushAccessRecord (
ServiceNo ASC
)
go

/*==============================================================*/
/* Index: IX_PAR_OpenId                                         */
/*==============================================================*/
create index IX_PAR_OpenId on PushAccessRecord (
OpenId ASC
)
go

/*==============================================================*/
/* Index: IX_PRR_ServiceNo                                      */
/*==============================================================*/
create index IX_PRR_ServiceNo on PushRegistRecord (
ServiceNo ASC
)
go

/*==============================================================*/
/* Index: IX_PRR_CustomerGuid                                   */
/*==============================================================*/
create index IX_PRR_CustomerGuid on PushRegistRecord (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_SMS_GlobalId                                       */
/*==============================================================*/
create index IX_SMS_GlobalId on SMS (
GlobalId ASC
)
go

/*==============================================================*/
/* Index: IX_SMS_Kind                                           */
/*==============================================================*/
create index IX_SMS_Kind on SMS (
Kind ASC
)
go

/*==============================================================*/
/* Index: IX_SMS_PublishDate                                    */
/*==============================================================*/
create index IX_SMS_PublishDate on SMS (
PublishDate ASC
)
go

/*==============================================================*/
/* Index: IX_SMS_ServiceCenterId                                */
/*==============================================================*/
create index IX_SMS_ServiceCenterId on SMS (
ServiceCenterId ASC
)
go

/*==============================================================*/
/* Index: IX_SMS_InstitutionGuid                                */
/*==============================================================*/
create index IX_SMS_InstitutionGuid on SMS (
InstitutionGuid ASC
)
go

/*==============================================================*/
/* Index: IX_SMS_IsDelete                                       */
/*==============================================================*/
create index IX_SMS_IsDelete on SMS (
IsDelete ASC
)
go

/*==============================================================*/
/* Index: IX_SCF_InstitutionGuid                                */
/*==============================================================*/
create index IX_SCF_InstitutionGuid on ServiceCenterFallback (
InstitutionGuid ASC
)
go

/*==============================================================*/
/* Index: IX_SCF_HospitalCode                                   */
/*==============================================================*/
create index IX_SCF_HospitalCode on ServiceCenterFallback (
HospitalCode ASC
)
go

/*==============================================================*/
/* Index: IX_SCF_ServiceCenterId                                */
/*==============================================================*/
create index IX_SCF_ServiceCenterId on ServiceCenterFallback (
ServiceCenterId ASC
)
go

/*==============================================================*/
/* Index: IX_SCF_FServiceCenterId                               */
/*==============================================================*/
create index IX_SCF_FServiceCenterId on ServiceCenterFallback (
FallbackServiceCenterId ASC
)
go

/*==============================================================*/
/* Index: IX_Setting_Name                                       */
/*==============================================================*/
create index IX_Setting_Name on Setting (
Name ASC
)
go

/*==============================================================*/
/* Index: IX_ST_TemplateCode                                    */
/*==============================================================*/
create index IX_ST_TemplateCode on SmsTemplate (
TemplateCode ASC
)
go

/*==============================================================*/
/* Index: IX_STP_TemplateId                                     */
/*==============================================================*/
create index IX_STP_TemplateId on SmsTemplatePara (
TemplateId ASC
)
go

/*==============================================================*/
/* Index: IX_STP_TemplateCode                                   */
/*==============================================================*/
create index IX_STP_TemplateCode on SmsTemplatePara (
TemplateCode ASC
)
go

/*==============================================================*/
/* Index: IX_SKW_SubjectId                                      */
/*==============================================================*/
create index IX_SKW_SubjectId on SubjectKeyWord (
SubjectId ASC
)
go

/*==============================================================*/
/* Index: IX_SubjectSecond_FirstId                              */
/*==============================================================*/
create index IX_SubjectSecond_FirstId on SubjectSecond (
FirstId ASC
)
go

/*==============================================================*/
/* Index: IX_TSubjectSecond_FirstId                             */
/*==============================================================*/
create index IX_TSubjectSecond_FirstId on TeachSubjectSecond (
FirstId ASC
)
go

/*==============================================================*/
/* Index: IX_WXAlert_ServiceId                                  */
/*==============================================================*/
create index IX_WXAlert_ServiceId on WeiXinAlert (
ServiceId ASC
)
go

/*==============================================================*/
/* Index: IX_WXAlert_Kind                                       */
/*==============================================================*/
create index IX_WXAlert_Kind on WeiXinAlert (
Kind ASC
)
go

/*==============================================================*/
/* Index: IX_WXAlert_SCustomerGuid                              */
/*==============================================================*/
create index IX_WXAlert_SCustomerGuid on WeiXinAlert (
SendCustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_WXAlert_RCustomerGuid                              */
/*==============================================================*/
create index IX_WXAlert_RCustomerGuid on WeiXinAlert (
ReceiveCustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_WXAlert_AlertTime                                  */
/*==============================================================*/
create index IX_WXAlert_AlertTime on WeiXinAlert (
AlertTime ASC
)
go

/*==============================================================*/
/* Index: IX_WXAlert_AlertType                                  */
/*==============================================================*/
create index IX_WXAlert_AlertType on WeiXinAlert (
TemplateType ASC
)
go

/*==============================================================*/
/* Index: IX_WXAlert_IsSend                                     */
/*==============================================================*/
create index IX_WXAlert_IsSend on WeiXinAlert (
IsSend ASC
)
go

/*==============================================================*/
/* Index: IX_WXAlert_Status                                     */
/*==============================================================*/
create index IX_WXAlert_Status on WeiXinAlert (
Status ASC
)
go

/*==============================================================*/
/* Index: IX_WXG_OpenId                                         */
/*==============================================================*/
create index IX_WXG_OpenId on WeiXinGps (
OpenId ASC
)
go

