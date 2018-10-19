/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2018/3/6 17:06:26                            */
/*==============================================================*/


/*==============================================================*/
/* Index: IX_ACR_AcrCode                                        */
/*==============================================================*/
create index IX_ACR_AcrCode on ACR
(
   AcrCode
);

/*==============================================================*/
/* Index: IX_ACR_ParentId                                       */
/*==============================================================*/
create index IX_ACR_ParentId on ACR
(
   ParentId
);

/*==============================================================*/
/* Index: IX_ACR_AcrType                                        */
/*==============================================================*/
create index IX_ACR_AcrType on ACR
(
   AcrType
);

/*==============================================================*/
/* Index: IX_Alert_ServiceId                                    */
/*==============================================================*/
create index IX_Alert_ServiceId on Alert
(
   ServiceId
);

/*==============================================================*/
/* Index: IX_Alert_Kind                                         */
/*==============================================================*/
create index IX_Alert_Kind on Alert
(
   Kind
);

/*==============================================================*/
/* Index: IX_Alert_SendCustomerGuid                             */
/*==============================================================*/
create index IX_Alert_SendCustomerGuid on Alert
(
   SendCustomerGuid
);

/*==============================================================*/
/* Index: IX_Alert_ReceiveCustomerGuid                          */
/*==============================================================*/
create index IX_Alert_ReceiveCustomerGuid on Alert
(
   ReceiveCustomerGuid
);

/*==============================================================*/
/* Index: IX_Alert_AlertTime                                    */
/*==============================================================*/
create index IX_Alert_AlertTime on Alert
(
   AlertTime
);

/*==============================================================*/
/* Index: IX_Alert_AlertType                                    */
/*==============================================================*/
create index IX_Alert_AlertType on Alert
(
   AlertType
);

/*==============================================================*/
/* Index: IX_Article_Title                                      */
/*==============================================================*/
create index IX_Article_Title on Article
(
   Title(255)
);

/*==============================================================*/
/* Index: IX_Article_InstitutionGuid                            */
/*==============================================================*/
create index IX_Article_InstitutionGuid on Article
(
   InstitutionGuid
);

/*==============================================================*/
/* Index: IX_Article_ServiceId                                  */
/*==============================================================*/
create index IX_Article_ServiceId on Article
(
   ServiceId
);

/*==============================================================*/
/* Index: IX_Article_TypeCode                                   */
/*==============================================================*/
create index IX_Article_TypeCode on Article
(
   TypeCode
);

/*==============================================================*/
/* Index: IX_Article_ModuleId                                   */
/*==============================================================*/
create index IX_Article_ModuleId on Article
(
   ModuleId
);

/*==============================================================*/
/* Index: IX_Article_ColumnId                                   */
/*==============================================================*/
create index IX_Article_ColumnId on Article
(
   ColumnId
);

/*==============================================================*/
/* Index: IX_Article_PublishDate                                */
/*==============================================================*/
create index IX_Article_PublishDate on Article
(
   PublishDate
);

/*==============================================================*/
/* Index: IX_Article_Role                                       */
/*==============================================================*/
create index IX_Article_Role on Article
(
   Role
);

/*==============================================================*/
/* Index: IX_Column_Kind                                        */
/*==============================================================*/
create index IX_Column_Kind on `Column`
(
   Kind
);

/*==============================================================*/
/* Index: IX_Column_ServiceId                                   */
/*==============================================================*/
create index IX_Column_ServiceId on `Column`
(
   ServiceId
);

/*==============================================================*/
/* Index: IX_Column_SectionCode                                 */
/*==============================================================*/
create index IX_Column_SectionCode on `Column`
(
   SectionCode
);

/*==============================================================*/
/* Index: IX_Column_SysId                                       */
/*==============================================================*/
create index IX_Column_SysId on `Column`
(
   SysId
);

/*==============================================================*/
/* Index: IX_Column_IsSystem                                    */
/*==============================================================*/
create index IX_Column_IsSystem on `Column`
(
   IsSystem
);

/*==============================================================*/
/* Index: IX_CKindOffice_KindCode                               */
/*==============================================================*/
create index IX_CKindOffice_KindCode on ConsultKindOffice
(
   ConsultKindCode
);

/*==============================================================*/
/* Index: IX_CKindOffice_SecondId                               */
/*==============================================================*/
create index IX_CKindOffice_SecondId on ConsultKindOffice
(
   SubjectSecondId
);

/*==============================================================*/
/* Index: IX_DataDicInfo_LookupKey                              */
/*==============================================================*/
create index IX_DataDicInfo_LookupKey on DataDicInfo
(
   LookupKey
);

/*==============================================================*/
/* Index: IX_DataDicInfo_DicCode                                */
/*==============================================================*/
create index IX_DataDicInfo_DicCode on DataDicInfo
(
   DicCode
);

/*==============================================================*/
/* Index: IX_DataDicType_LookupKey                              */
/*==============================================================*/
create index IX_DataDicType_LookupKey on DataDicType
(
   LookupKey
);

/*==============================================================*/
/* Index: IX_DDownload_InstitutionGuid                          */
/*==============================================================*/
create index IX_DDownload_InstitutionGuid on DataDownload
(
   InstitutionGuid
);

/*==============================================================*/
/* Index: IX_DDownload_ServiceId                                */
/*==============================================================*/
create index IX_DDownload_ServiceId on DataDownload
(
   ServiceId
);

/*==============================================================*/
/* Index: IX_DDownload_PublishDate                              */
/*==============================================================*/
create index IX_DDownload_PublishDate on DataDownload
(
   PublishDate
);

/*==============================================================*/
/* Index: IX_DDownload_IsPrivate                                */
/*==============================================================*/
create index IX_DDownload_IsPrivate on DataDownload
(
   IsPrivate
);

/*==============================================================*/
/* Index: IX_DayAccessCount_AccessDay                           */
/*==============================================================*/
create index IX_DayAccessCount_AccessDay on DayAccessCount
(
   AccessDay
);

/*==============================================================*/
/* Index: IX_Detection_ServiceId                                */
/*==============================================================*/
create index IX_Detection_ServiceId on Detection
(
   ServiceId
);

/*==============================================================*/
/* Index: IX_Detection_DetectionType                            */
/*==============================================================*/
create index IX_Detection_DetectionType on Detection
(
   DetectionType
);

/*==============================================================*/
/* Index: IX_Detection_SubmitDate                               */
/*==============================================================*/
create index IX_Detection_SubmitDate on Detection
(
   SubmitDate
);

/*==============================================================*/
/* Index: IX_DLLog_CustomerGuid                                 */
/*==============================================================*/
create index IX_DLLog_CustomerGuid on DevicesLoginLog
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_DT_CatalogId                                       */
/*==============================================================*/
create index IX_DT_CatalogId on DiagnosticTemplate
(
   CatalogId
);

/*==============================================================*/
/* Index: IX_DT_ExamType                                        */
/*==============================================================*/
create index IX_DT_ExamType on DiagnosticTemplate
(
   ExamType
);

/*==============================================================*/
/* Index: IX_DTC_ServiceCenterId                                */
/*==============================================================*/
create index IX_DTC_ServiceCenterId on DiagnosticTemplateCatalog
(
   ServiceCenterId
);

/*==============================================================*/
/* Index: IX_DTC_ParentId                                       */
/*==============================================================*/
create index IX_DTC_ParentId on DiagnosticTemplateCatalog
(
   ParentId
);

/*==============================================================*/
/* Index: IX_DTC_ExamType                                       */
/*==============================================================*/
create index IX_DTC_ExamType on DiagnosticTemplateCatalog
(
   ExamType
);

/*==============================================================*/
/* Index: IX_DSI_FirstItemGuid                                  */
/*==============================================================*/
create index IX_DSI_FirstItemGuid on DocSecondItem
(
   FirstItemGuid
);

/*==============================================================*/
/* Index: IX_HWM_ServiceId                                      */
/*==============================================================*/
create index IX_HWM_ServiceId on HWMeeting
(
   ServiceId
);

/*==============================================================*/
/* Index: IX_HWM_CustomerGuid                                   */
/*==============================================================*/
create index IX_HWM_CustomerGuid on HWMeeting
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_HWM_State                                          */
/*==============================================================*/
create index IX_HWM_State on HWMeeting
(
   State
);

/*==============================================================*/
/* Index: IX_HWS_CustomerGuid                                   */
/*==============================================================*/
create index IX_HWS_CustomerGuid on HWSite
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_HWS_Uri                                            */
/*==============================================================*/
create index IX_HWS_Uri on HWSite
(
   Uri
);

/*==============================================================*/
/* Index: IX_HWSS_SiteUri                                       */
/*==============================================================*/
create index IX_HWSS_SiteUri on HWSiteSchedule
(
   SiteUri
);

/*==============================================================*/
/* Index: IX_HWSS_ServiceId                                     */
/*==============================================================*/
create index IX_HWSS_ServiceId on HWSiteSchedule
(
   ServiceId
);

/*==============================================================*/
/* Index: IX_HWSS_BeginTime                                     */
/*==============================================================*/
create index IX_HWSS_BeginTime on HWSiteSchedule
(
   BeginTime
);

/*==============================================================*/
/* Index: IX_HWSS_EndTime                                       */
/*==============================================================*/
create index IX_HWSS_EndTime on HWSiteSchedule
(
   EndTime
);

/*==============================================================*/
/* Index: IX_HDItem_BusinessId                                  */
/*==============================================================*/
create index IX_HDItem_BusinessId on HistoryDocItem
(
   BusinessId
);

/*==============================================================*/
/* Index: IX_Hospital_NatureCode                                */
/*==============================================================*/
create index IX_Hospital_NatureCode on Hospital
(
   HospitalNatureCode
);

/*==============================================================*/
/* Index: IX_Hospital_LevelCode                                 */
/*==============================================================*/
create index IX_Hospital_LevelCode on Hospital
(
   HospitalLevelCode
);

/*==============================================================*/
/* Index: IX_Hospital_ProID                                     */
/*==============================================================*/
create index IX_Hospital_ProID on Hospital
(
   ProID
);

/*==============================================================*/
/* Index: IX_Hospital_CityID                                    */
/*==============================================================*/
create index IX_Hospital_CityID on Hospital
(
   CityID
);

/*==============================================================*/
/* Index: IX_Hospital_CountyId                                  */
/*==============================================================*/
create index IX_Hospital_CountyId on Hospital
(
   CountyId
);

/*==============================================================*/
/* Index: IDX_JBMC_SRM1                                         */
/*==============================================================*/
create index IDX_JBMC_SRM1 on JBMC
(
   SRM1
);

/*==============================================================*/
/* Index: IDX_JBMC_SRM2                                         */
/*==============================================================*/
create index IDX_JBMC_SRM2 on JBMC
(
   SRM2
);

/*==============================================================*/
/* Index: IX_JPD_CustomerGuid                                   */
/*==============================================================*/
create index IX_JPD_CustomerGuid on JPushDevices
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_JPDT_DeviceId                                      */
/*==============================================================*/
create index IX_JPDT_DeviceId on JPushDevicesTags
(
   DeviceId
);

/*==============================================================*/
/* Index: IX_JPDT_TagId                                         */
/*==============================================================*/
create index IX_JPDT_TagId on JPushDevicesTags
(
   TagId
);

/*==============================================================*/
/* Index: IX_JPM_ServiceId                                      */
/*==============================================================*/
create index IX_JPM_ServiceId on JPushMessages
(
   ServiceId
);

/*==============================================================*/
/* Index: IX_JPM_CustomerGuid                                   */
/*==============================================================*/
create index IX_JPM_CustomerGuid on JPushMessages
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_LA_LogId                                           */
/*==============================================================*/
create index IX_LA_LogId on LogAudit
(
   LogId
);

/*==============================================================*/
/* Index: IX_LA_AuditCustomerGuid                               */
/*==============================================================*/
create index IX_LA_AuditCustomerGuid on LogAudit
(
   AuditCustomerGuid
);

/*==============================================================*/
/* Index: IX_LA_AuditResultCode                                 */
/*==============================================================*/
create index IX_LA_AuditResultCode on LogAudit
(
   AuditResultCode
);

/*==============================================================*/
/* Index: IX_MeetKeyWord_MeetId                                 */
/*==============================================================*/
create index IX_MeetKeyWord_MeetId on MeetKeyWord
(
   MeetId
);

/*==============================================================*/
/* Index: IX_Meeting_State                                      */
/*==============================================================*/
create index IX_Meeting_State on Meeting
(
   State
);

/*==============================================================*/
/* Index: IX_Meeting_GlobalId                                   */
/*==============================================================*/
create index IX_Meeting_GlobalId on Meeting
(
   GlobalId
);

/*==============================================================*/
/* Index: IX_Meeting_Kind                                       */
/*==============================================================*/
create index IX_Meeting_Kind on Meeting
(
   Kind
);

/*==============================================================*/
/* Index: IX_Meeting_MeetingId                                  */
/*==============================================================*/
create index IX_Meeting_MeetingId on Meeting
(
   MeetingId
);

/*==============================================================*/
/* Index: IX_Meeting_CustomerGuid                               */
/*==============================================================*/
create index IX_Meeting_CustomerGuid on Meeting
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_Meeting_ServiceId                                  */
/*==============================================================*/
create index IX_Meeting_ServiceId on Meeting
(
   ServiceId
);

/*==============================================================*/
/* Index: IX_Module_SectionCode                                 */
/*==============================================================*/
create index IX_Module_SectionCode on Module
(
   SectionCode
);

/*==============================================================*/
/* Index: IX_Module_ServiceId                                   */
/*==============================================================*/
create index IX_Module_ServiceId on Module
(
   ServiceId
);

/*==============================================================*/
/* Index: IX_OperatorLog_Kind                                   */
/*==============================================================*/
create index IX_OperatorLog_Kind on OperatorLog
(
   Kind
);

/*==============================================================*/
/* Index: IX_OperatorLog_GlobalId                               */
/*==============================================================*/
create index IX_OperatorLog_GlobalId on OperatorLog
(
   GlobalId
);

/*==============================================================*/
/* Index: IX_OperatorLog_CustomerGuid                           */
/*==============================================================*/
create index IX_OperatorLog_CustomerGuid on OperatorLog
(
   OperateCustomerGuid
);

/*==============================================================*/
/* Index: IX_OperatorLog_OperateTime                            */
/*==============================================================*/
create index IX_OperatorLog_OperateTime on OperatorLog
(
   OperateTime
);

/*==============================================================*/
/* Index: IX_MeetGuest_MeetId                                   */
/*==============================================================*/
create index IX_MeetGuest_MeetId on PlatMeetGuest
(
   MeetId
);

/*==============================================================*/
/* Index: IX_MeetGuest_CustomerGuid                             */
/*==============================================================*/
create index IX_MeetGuest_CustomerGuid on PlatMeetGuest
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_PMeet_MeetId                                       */
/*==============================================================*/
create index IX_PMeet_MeetId on PlatMeeting
(
   MeetId
);

/*==============================================================*/
/* Index: IX_PMeet_KeyWord                                      */
/*==============================================================*/
create index IX_PMeet_KeyWord on PlatMeeting
(
   KeyWord
);

/*==============================================================*/
/* Index: IX_PMeet_CustomerGuid                                 */
/*==============================================================*/
create index IX_PMeet_CustomerGuid on PlatMeeting
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_PMeet_ExpertGuid                                   */
/*==============================================================*/
create index IX_PMeet_ExpertGuid on PlatMeeting
(
   ExpertGuid
);

/*==============================================================*/
/* Index: IX_PMeet_PublishDate                                  */
/*==============================================================*/
create index IX_PMeet_PublishDate on PlatMeeting
(
   PublishDate
);

/*==============================================================*/
/* Index: IX_PMeet_State                                        */
/*==============================================================*/
create index IX_PMeet_State on PlatMeeting
(
   State
);

/*==============================================================*/
/* Index: IX_PT_ServiceCenterId                                 */
/*==============================================================*/
create index IX_PT_ServiceCenterId on PrintTemplate
(
   ServiceCenterId
);

/*==============================================================*/
/* Index: IX_PAR_ServiceNo                                      */
/*==============================================================*/
create index IX_PAR_ServiceNo on PushAccessRecord
(
   ServiceNo
);

/*==============================================================*/
/* Index: IX_PAR_OpenId                                         */
/*==============================================================*/
create index IX_PAR_OpenId on PushAccessRecord
(
   OpenId
);

/*==============================================================*/
/* Index: IX_PRR_ServiceNo                                      */
/*==============================================================*/
create index IX_PRR_ServiceNo on PushRegistRecord
(
   ServiceNo
);

/*==============================================================*/
/* Index: IX_PRR_CustomerGuid                                   */
/*==============================================================*/
create index IX_PRR_CustomerGuid on PushRegistRecord
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_SMS_GlobalId                                       */
/*==============================================================*/
create index IX_SMS_GlobalId on SMS
(
   GlobalId
);

/*==============================================================*/
/* Index: IX_SMS_Kind                                           */
/*==============================================================*/
create index IX_SMS_Kind on SMS
(
   Kind
);

/*==============================================================*/
/* Index: IX_SMS_PublishDate                                    */
/*==============================================================*/
create index IX_SMS_PublishDate on SMS
(
   PublishDate
);

/*==============================================================*/
/* Index: IX_SMS_ServiceCenterId                                */
/*==============================================================*/
create index IX_SMS_ServiceCenterId on SMS
(
   ServiceCenterId
);

/*==============================================================*/
/* Index: IX_SMS_InstitutionGuid                                */
/*==============================================================*/
create index IX_SMS_InstitutionGuid on SMS
(
   InstitutionGuid
);

/*==============================================================*/
/* Index: IX_SMS_IsDelete                                       */
/*==============================================================*/
create index IX_SMS_IsDelete on SMS
(
   IsDelete
);

/*==============================================================*/
/* Index: IX_SCF_InstitutionGuid                                */
/*==============================================================*/
create index IX_SCF_InstitutionGuid on ServiceCenterFallback
(
   InstitutionGuid
);

/*==============================================================*/
/* Index: IX_SCF_HospitalCode                                   */
/*==============================================================*/
create index IX_SCF_HospitalCode on ServiceCenterFallback
(
   HospitalCode
);

/*==============================================================*/
/* Index: IX_SCF_ServiceCenterId                                */
/*==============================================================*/
create index IX_SCF_ServiceCenterId on ServiceCenterFallback
(
   ServiceCenterId
);

/*==============================================================*/
/* Index: IX_SCF_FServiceCenterId                               */
/*==============================================================*/
create index IX_SCF_FServiceCenterId on ServiceCenterFallback
(
   FallbackServiceCenterId
);

/*==============================================================*/
/* Index: IX_Setting_Name                                       */
/*==============================================================*/
create index IX_Setting_Name on Setting
(
   Name
);

/*==============================================================*/
/* Index: IX_ST_TemplateCode                                    */
/*==============================================================*/
create index IX_ST_TemplateCode on SmsTemplate
(
   TemplateCode
);

/*==============================================================*/
/* Index: IX_STP_TemplateId                                     */
/*==============================================================*/
create index IX_STP_TemplateId on SmsTemplatePara
(
   TemplateId
);

/*==============================================================*/
/* Index: IX_STP_TemplateCode                                   */
/*==============================================================*/
create index IX_STP_TemplateCode on SmsTemplatePara
(
   TemplateCode
);

/*==============================================================*/
/* Index: IX_SKW_SubjectId                                      */
/*==============================================================*/
create index IX_SKW_SubjectId on SubjectKeyWord
(
   SubjectId
);

/*==============================================================*/
/* Index: IX_SubjectSecond_FirstId                              */
/*==============================================================*/
create index IX_SubjectSecond_FirstId on SubjectSecond
(
   FirstId
);

/*==============================================================*/
/* Index: IX_TSubjectSecond_FirstId                             */
/*==============================================================*/
create index IX_TSubjectSecond_FirstId on TeachSubjectSecond
(
   FirstId
);

/*==============================================================*/
/* Index: IX_WXAlert_ServiceId                                  */
/*==============================================================*/
create index IX_WXAlert_ServiceId on WeiXinAlert
(
   ServiceId
);

/*==============================================================*/
/* Index: IX_WXAlert_Kind                                       */
/*==============================================================*/
create index IX_WXAlert_Kind on WeiXinAlert
(
   Kind
);

/*==============================================================*/
/* Index: IX_WXAlert_SCustomerGuid                              */
/*==============================================================*/
create index IX_WXAlert_SCustomerGuid on WeiXinAlert
(
   SendCustomerGuid
);

/*==============================================================*/
/* Index: IX_WXAlert_RCustomerGuid                              */
/*==============================================================*/
create index IX_WXAlert_RCustomerGuid on WeiXinAlert
(
   ReceiveCustomerGuid
);

/*==============================================================*/
/* Index: IX_WXAlert_AlertTime                                  */
/*==============================================================*/
create index IX_WXAlert_AlertTime on WeiXinAlert
(
   AlertTime
);

/*==============================================================*/
/* Index: IX_WXAlert_AlertType                                  */
/*==============================================================*/
create index IX_WXAlert_AlertType on WeiXinAlert
(
   TemplateType
);

/*==============================================================*/
/* Index: IX_WXAlert_IsSend                                     */
/*==============================================================*/
create index IX_WXAlert_IsSend on WeiXinAlert
(
   IsSend
);

/*==============================================================*/
/* Index: IX_WXAlert_Status                                     */
/*==============================================================*/
create index IX_WXAlert_Status on WeiXinAlert
(
   Status
);

/*==============================================================*/
/* Index: IX_WXG_OpenId                                         */
/*==============================================================*/
create index IX_WXG_OpenId on WeiXinGps
(
   OpenId
);

