/*==============================================================*/
/* DBMS name:      ORACLE Version 11g                           */
/* Created on:     2018/3/6 17:05:19                            */
/*==============================================================*/


/*==============================================================*/
/* Index: "IX_ACR_ACRCODE"                                      */
/*==============================================================*/
CREATE INDEX "IX_ACR_ACRCODE" ON ACR (
   "ACRCODE" ASC
);

/*==============================================================*/
/* Index: "IX_ACR_PARENTID"                                     */
/*==============================================================*/
CREATE INDEX "IX_ACR_PARENTID" ON ACR (
   "PARENTID" ASC
);

/*==============================================================*/
/* Index: "IX_ACR_ACRTYPE"                                      */
/*==============================================================*/
CREATE INDEX "IX_ACR_ACRTYPE" ON ACR (
   "ACRTYPE" ASC
);

/*==============================================================*/
/* Index: "IX_ALERT_SERVICEID"                                  */
/*==============================================================*/
CREATE INDEX "IX_ALERT_SERVICEID" ON "ALERT" (
   "SERVICEID" ASC
);

/*==============================================================*/
/* Index: "IX_ALERT_KIND"                                       */
/*==============================================================*/
CREATE INDEX "IX_ALERT_KIND" ON "ALERT" (
   "KIND" ASC
);

/*==============================================================*/
/* Index: "IX_ALERT_SENDCUSTOMERGUID"                           */
/*==============================================================*/
CREATE INDEX "IX_ALERT_SENDCUSTOMERGUID" ON "ALERT" (
   "SENDCUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_ALERT_RECEIVECUSTOMERGUID"                        */
/*==============================================================*/
CREATE INDEX "IX_ALERT_RECEIVECUSTOMERGUID" ON "ALERT" (
   "RECEIVECUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_ALERT_ALERTTIME"                                  */
/*==============================================================*/
CREATE INDEX "IX_ALERT_ALERTTIME" ON "ALERT" (
   "ALERTTIME" ASC
);

/*==============================================================*/
/* Index: "IX_ALERT_ALERTTYPE"                                  */
/*==============================================================*/
CREATE INDEX "IX_ALERT_ALERTTYPE" ON "ALERT" (
   "ALERTTYPE" ASC
);

/*==============================================================*/
/* Index: "IX_ARTICLE_TITLE"                                    */
/*==============================================================*/
CREATE INDEX "IX_ARTICLE_TITLE" ON "ARTICLE" (
   "TITLE" ASC
);

/*==============================================================*/
/* Index: "IX_ARTICLE_INSTITUTIONGUID"                          */
/*==============================================================*/
CREATE INDEX "IX_ARTICLE_INSTITUTIONGUID" ON "ARTICLE" (
   "INSTITUTIONGUID" ASC
);

/*==============================================================*/
/* Index: "IX_ARTICLE_SERVICEID"                                */
/*==============================================================*/
CREATE INDEX "IX_ARTICLE_SERVICEID" ON "ARTICLE" (
   "SERVICEID" ASC
);

/*==============================================================*/
/* Index: "IX_ARTICLE_TYPECODE"                                 */
/*==============================================================*/
CREATE INDEX "IX_ARTICLE_TYPECODE" ON "ARTICLE" (
   "TYPECODE" ASC
);

/*==============================================================*/
/* Index: "IX_ARTICLE_MODULEID"                                 */
/*==============================================================*/
CREATE INDEX "IX_ARTICLE_MODULEID" ON "ARTICLE" (
   "MODULEID" ASC
);

/*==============================================================*/
/* Index: "IX_ARTICLE_COLUMNID"                                 */
/*==============================================================*/
CREATE INDEX "IX_ARTICLE_COLUMNID" ON "ARTICLE" (
   "COLUMNID" ASC
);

/*==============================================================*/
/* Index: "IX_ARTICLE_PUBLISHDATE"                              */
/*==============================================================*/
CREATE INDEX "IX_ARTICLE_PUBLISHDATE" ON "ARTICLE" (
   "PUBLISHDATE" ASC
);

/*==============================================================*/
/* Index: "IX_ARTICLE_ROLE"                                     */
/*==============================================================*/
CREATE INDEX "IX_ARTICLE_ROLE" ON "ARTICLE" (
   "ROLE" ASC
);

/*==============================================================*/
/* Index: "IX_COLUMN_KIND"                                      */
/*==============================================================*/
CREATE INDEX "IX_COLUMN_KIND" ON "COLUMN" (
   "KIND" ASC
);

/*==============================================================*/
/* Index: "IX_COLUMN_SERVICEID"                                 */
/*==============================================================*/
CREATE INDEX "IX_COLUMN_SERVICEID" ON "COLUMN" (
   "SERVICEID" ASC
);

/*==============================================================*/
/* Index: "IX_COLUMN_SECTIONCODE"                               */
/*==============================================================*/
CREATE INDEX "IX_COLUMN_SECTIONCODE" ON "COLUMN" (
   "SECTIONCODE" ASC
);

/*==============================================================*/
/* Index: "IX_COLUMN_SYSID"                                     */
/*==============================================================*/
CREATE INDEX "IX_COLUMN_SYSID" ON "COLUMN" (
   "SYSID" ASC
);

/*==============================================================*/
/* Index: "IX_COLUMN_ISSYSTEM"                                  */
/*==============================================================*/
CREATE INDEX "IX_COLUMN_ISSYSTEM" ON "COLUMN" (
   "ISSYSTEM" ASC
);

/*==============================================================*/
/* Index: "IX_CKINDOFFICE_KINDCODE"                             */
/*==============================================================*/
CREATE INDEX "IX_CKINDOFFICE_KINDCODE" ON "CONSULTKINDOFFICE" (
   "CONSULTKINDCODE" ASC
);

/*==============================================================*/
/* Index: "IX_CKINDOFFICE_SECONDID"                             */
/*==============================================================*/
CREATE INDEX "IX_CKINDOFFICE_SECONDID" ON "CONSULTKINDOFFICE" (
   "SUBJECTSECONDID" ASC
);

/*==============================================================*/
/* Index: "IX_DATADICINFO_LOOKUPKEY"                            */
/*==============================================================*/
CREATE INDEX "IX_DATADICINFO_LOOKUPKEY" ON "DATADICINFO" (
   "LOOKUPKEY" ASC
);

/*==============================================================*/
/* Index: "IX_DATADICINFO_DICCODE"                              */
/*==============================================================*/
CREATE INDEX "IX_DATADICINFO_DICCODE" ON "DATADICINFO" (
   "DICCODE" ASC
);

/*==============================================================*/
/* Index: "IX_DATADICTYPE_LOOKUPKEY"                            */
/*==============================================================*/
CREATE INDEX "IX_DATADICTYPE_LOOKUPKEY" ON "DATADICTYPE" (
   "LOOKUPKEY" ASC
);

/*==============================================================*/
/* Index: "IX_DDOWNLOAD_INSTITUTIONGUID"                        */
/*==============================================================*/
CREATE INDEX "IX_DDOWNLOAD_INSTITUTIONGUID" ON "DATADOWNLOAD" (
   "INSTITUTIONGUID" ASC
);

/*==============================================================*/
/* Index: "IX_DDOWNLOAD_SERVICEID"                              */
/*==============================================================*/
CREATE INDEX "IX_DDOWNLOAD_SERVICEID" ON "DATADOWNLOAD" (
   "SERVICEID" ASC
);

/*==============================================================*/
/* Index: "IX_DDOWNLOAD_PUBLISHDATE"                            */
/*==============================================================*/
CREATE INDEX "IX_DDOWNLOAD_PUBLISHDATE" ON "DATADOWNLOAD" (
   "PUBLISHDATE" ASC
);

/*==============================================================*/
/* Index: "IX_DDOWNLOAD_ISPRIVATE"                              */
/*==============================================================*/
CREATE INDEX "IX_DDOWNLOAD_ISPRIVATE" ON "DATADOWNLOAD" (
   "ISPRIVATE" ASC
);

/*==============================================================*/
/* Index: "IX_DAYACCESSCOUNT_ACCESSDAY"                         */
/*==============================================================*/
CREATE INDEX "IX_DAYACCESSCOUNT_ACCESSDAY" ON "DAYACCESSCOUNT" (
   "ACCESSDAY" ASC
);

/*==============================================================*/
/* Index: "IX_DETECTION_SERVICEID"                              */
/*==============================================================*/
CREATE INDEX "IX_DETECTION_SERVICEID" ON "DETECTION" (
   "SERVICEID" ASC
);

/*==============================================================*/
/* Index: "IX_DETECTION_DETECTIONTYPE"                          */
/*==============================================================*/
CREATE INDEX "IX_DETECTION_DETECTIONTYPE" ON "DETECTION" (
   "DETECTIONTYPE" ASC
);

/*==============================================================*/
/* Index: "IX_DETECTION_SUBMITDATE"                             */
/*==============================================================*/
CREATE INDEX "IX_DETECTION_SUBMITDATE" ON "DETECTION" (
   "SUBMITDATE" ASC
);

/*==============================================================*/
/* Index: "IX_DLLOG_CUSTOMERGUID"                               */
/*==============================================================*/
CREATE INDEX "IX_DLLOG_CUSTOMERGUID" ON "DEVICESLOGINLOG" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_DT_CATALOGID"                                     */
/*==============================================================*/
CREATE INDEX "IX_DT_CATALOGID" ON "DIAGNOSTICTEMPLATE" (
   "CATALOGID" ASC
);

/*==============================================================*/
/* Index: "IX_DT_EXAMTYPE"                                      */
/*==============================================================*/
CREATE INDEX "IX_DT_EXAMTYPE" ON "DIAGNOSTICTEMPLATE" (
   "EXAMTYPE" ASC
);

/*==============================================================*/
/* Index: "IX_DTC_SERVICECENTERID"                              */
/*==============================================================*/
CREATE INDEX "IX_DTC_SERVICECENTERID" ON "DIAGNOSTICTEMPLATECATALOG" (
   "SERVICECENTERID" ASC
);

/*==============================================================*/
/* Index: "IX_DTC_PARENTID"                                     */
/*==============================================================*/
CREATE INDEX "IX_DTC_PARENTID" ON "DIAGNOSTICTEMPLATECATALOG" (
   "PARENTID" ASC
);

/*==============================================================*/
/* Index: "IX_DTC_EXAMTYPE"                                     */
/*==============================================================*/
CREATE INDEX "IX_DTC_EXAMTYPE" ON "DIAGNOSTICTEMPLATECATALOG" (
   "EXAMTYPE" ASC
);

/*==============================================================*/
/* Index: "IX_DSI_FIRSTITEMGUID"                                */
/*==============================================================*/
CREATE INDEX "IX_DSI_FIRSTITEMGUID" ON "DOCSECONDITEM" (
   "FIRSTITEMGUID" ASC
);

/*==============================================================*/
/* Index: "IX_HWM_SERVICEID"                                    */
/*==============================================================*/
CREATE INDEX "IX_HWM_SERVICEID" ON "HWMEETING" (
   "SERVICEID" ASC
);

/*==============================================================*/
/* Index: "IX_HWM_CUSTOMERGUID"                                 */
/*==============================================================*/
CREATE INDEX "IX_HWM_CUSTOMERGUID" ON "HWMEETING" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_HWM_STATE"                                        */
/*==============================================================*/
CREATE INDEX "IX_HWM_STATE" ON "HWMEETING" (
   "STATE" ASC
);

/*==============================================================*/
/* Index: "IX_HWS_CUSTOMERGUID"                                 */
/*==============================================================*/
CREATE INDEX "IX_HWS_CUSTOMERGUID" ON "HWSITE" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_HWS_URI"                                          */
/*==============================================================*/
CREATE INDEX "IX_HWS_URI" ON "HWSITE" (
   "URI" ASC
);

/*==============================================================*/
/* Index: "IX_HWSS_SITEURI"                                     */
/*==============================================================*/
CREATE INDEX "IX_HWSS_SITEURI" ON "HWSITESCHEDULE" (
   "SITEURI" ASC
);

/*==============================================================*/
/* Index: "IX_HWSS_SERVICEID"                                   */
/*==============================================================*/
CREATE INDEX "IX_HWSS_SERVICEID" ON "HWSITESCHEDULE" (
   "SERVICEID" ASC
);

/*==============================================================*/
/* Index: "IX_HWSS_BEGINTIME"                                   */
/*==============================================================*/
CREATE INDEX "IX_HWSS_BEGINTIME" ON "HWSITESCHEDULE" (
   "BEGINTIME" ASC
);

/*==============================================================*/
/* Index: "IX_HWSS_ENDTIME"                                     */
/*==============================================================*/
CREATE INDEX "IX_HWSS_ENDTIME" ON "HWSITESCHEDULE" (
   "ENDTIME" ASC
);

/*==============================================================*/
/* Index: "IX_HDITEM_BUSINESSID"                                */
/*==============================================================*/
CREATE INDEX "IX_HDITEM_BUSINESSID" ON "HISTORYDOCITEM" (
   "BUSINESSID" ASC
);

/*==============================================================*/
/* Index: "IX_HOSPITAL_NATURECODE"                              */
/*==============================================================*/
CREATE INDEX "IX_HOSPITAL_NATURECODE" ON "HOSPITAL" (
   "HOSPITALNATURECODE" ASC
);

/*==============================================================*/
/* Index: "IX_HOSPITAL_LEVELCODE"                               */
/*==============================================================*/
CREATE INDEX "IX_HOSPITAL_LEVELCODE" ON "HOSPITAL" (
   "HOSPITALLEVELCODE" ASC
);

/*==============================================================*/
/* Index: "IX_HOSPITAL_PROID"                                   */
/*==============================================================*/
CREATE INDEX "IX_HOSPITAL_PROID" ON "HOSPITAL" (
   "PROID" ASC
);

/*==============================================================*/
/* Index: "IX_HOSPITAL_CITYID"                                  */
/*==============================================================*/
CREATE INDEX "IX_HOSPITAL_CITYID" ON "HOSPITAL" (
   "CITYID" ASC
);

/*==============================================================*/
/* Index: "IX_HOSPITAL_COUNTYID"                                */
/*==============================================================*/
CREATE INDEX "IX_HOSPITAL_COUNTYID" ON "HOSPITAL" (
   "COUNTYID" ASC
);

/*==============================================================*/
/* Index: IDX_JBMC_SRM1                                         */
/*==============================================================*/
CREATE INDEX IDX_JBMC_SRM1 ON JBMC (
   SRM1 ASC
);

/*==============================================================*/
/* Index: IDX_JBMC_SRM2                                         */
/*==============================================================*/
CREATE INDEX IDX_JBMC_SRM2 ON JBMC (
   SRM2 ASC
);

/*==============================================================*/
/* Index: "IX_JPD_CUSTOMERGUID"                                 */
/*==============================================================*/
CREATE INDEX "IX_JPD_CUSTOMERGUID" ON "JPUSHDEVICES" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_JPDT_DEVICEID"                                    */
/*==============================================================*/
CREATE INDEX "IX_JPDT_DEVICEID" ON "JPUSHDEVICESTAGS" (
   "DEVICEID" ASC
);

/*==============================================================*/
/* Index: "IX_JPDT_TAGID"                                       */
/*==============================================================*/
CREATE INDEX "IX_JPDT_TAGID" ON "JPUSHDEVICESTAGS" (
   "TAGID" ASC
);

/*==============================================================*/
/* Index: "IX_JPM_SERVICEID"                                    */
/*==============================================================*/
CREATE INDEX "IX_JPM_SERVICEID" ON "JPUSHMESSAGES" (
   "SERVICEID" ASC
);

/*==============================================================*/
/* Index: "IX_JPM_CUSTOMERGUID"                                 */
/*==============================================================*/
CREATE INDEX "IX_JPM_CUSTOMERGUID" ON "JPUSHMESSAGES" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_LA_LOGID"                                         */
/*==============================================================*/
CREATE INDEX "IX_LA_LOGID" ON "LOGAUDIT" (
   "LOGID" ASC
);

/*==============================================================*/
/* Index: "IX_LA_AUDITCUSTOMERGUID"                             */
/*==============================================================*/
CREATE INDEX "IX_LA_AUDITCUSTOMERGUID" ON "LOGAUDIT" (
   "AUDITCUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_LA_AUDITRESULTCODE"                               */
/*==============================================================*/
CREATE INDEX "IX_LA_AUDITRESULTCODE" ON "LOGAUDIT" (
   "AUDITRESULTCODE" ASC
);

/*==============================================================*/
/* Index: "IX_MEETKEYWORD_MEETID"                               */
/*==============================================================*/
CREATE INDEX "IX_MEETKEYWORD_MEETID" ON "MEETKEYWORD" (
   "MEETID" ASC
);

/*==============================================================*/
/* Index: "IX_MEETING_STATE"                                    */
/*==============================================================*/
CREATE INDEX "IX_MEETING_STATE" ON "MEETING" (
   "STATE" ASC
);

/*==============================================================*/
/* Index: "IX_MEETING_GLOBALID"                                 */
/*==============================================================*/
CREATE INDEX "IX_MEETING_GLOBALID" ON "MEETING" (
   "GLOBALID" ASC
);

/*==============================================================*/
/* Index: "IX_MEETING_KIND"                                     */
/*==============================================================*/
CREATE INDEX "IX_MEETING_KIND" ON "MEETING" (
   "KIND" ASC
);

/*==============================================================*/
/* Index: "IX_MEETING_MEETINGID"                                */
/*==============================================================*/
CREATE INDEX "IX_MEETING_MEETINGID" ON "MEETING" (
   "MEETINGID" ASC
);

/*==============================================================*/
/* Index: "IX_MEETING_CUSTOMERGUID"                             */
/*==============================================================*/
CREATE INDEX "IX_MEETING_CUSTOMERGUID" ON "MEETING" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_MEETING_SERVICEID"                                */
/*==============================================================*/
CREATE INDEX "IX_MEETING_SERVICEID" ON "MEETING" (
   "SERVICEID" ASC
);

/*==============================================================*/
/* Index: "IX_MODULE_SECTIONCODE"                               */
/*==============================================================*/
CREATE INDEX "IX_MODULE_SECTIONCODE" ON "MODULE" (
   "SECTIONCODE" ASC
);

/*==============================================================*/
/* Index: "IX_MODULE_SERVICEID"                                 */
/*==============================================================*/
CREATE INDEX "IX_MODULE_SERVICEID" ON "MODULE" (
   "SERVICEID" ASC
);

/*==============================================================*/
/* Index: "IX_OPERATORLOG_KIND"                                 */
/*==============================================================*/
CREATE INDEX "IX_OPERATORLOG_KIND" ON "OPERATORLOG" (
   "KIND" ASC
);

/*==============================================================*/
/* Index: "IX_OPERATORLOG_GLOBALID"                             */
/*==============================================================*/
CREATE INDEX "IX_OPERATORLOG_GLOBALID" ON "OPERATORLOG" (
   "GLOBALID" ASC
);

/*==============================================================*/
/* Index: "IX_OPERATORLOG_CUSTOMERGUID"                         */
/*==============================================================*/
CREATE INDEX "IX_OPERATORLOG_CUSTOMERGUID" ON "OPERATORLOG" (
   "OPERATECUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_OPERATORLOG_OPERATETIME"                          */
/*==============================================================*/
CREATE INDEX "IX_OPERATORLOG_OPERATETIME" ON "OPERATORLOG" (
   "OPERATETIME" ASC
);

/*==============================================================*/
/* Index: "IX_MEETGUEST_MEETID"                                 */
/*==============================================================*/
CREATE INDEX "IX_MEETGUEST_MEETID" ON "PLATMEETGUEST" (
   "MEETID" ASC
);

/*==============================================================*/
/* Index: "IX_MEETGUEST_CUSTOMERGUID"                           */
/*==============================================================*/
CREATE INDEX "IX_MEETGUEST_CUSTOMERGUID" ON "PLATMEETGUEST" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_PMEET_MEETID"                                     */
/*==============================================================*/
CREATE INDEX "IX_PMEET_MEETID" ON "PLATMEETING" (
   "MEETID" ASC
);

/*==============================================================*/
/* Index: "IX_PMEET_KEYWORD"                                    */
/*==============================================================*/
CREATE INDEX "IX_PMEET_KEYWORD" ON "PLATMEETING" (
   "KEYWORD" ASC
);

/*==============================================================*/
/* Index: "IX_PMEET_CUSTOMERGUID"                               */
/*==============================================================*/
CREATE INDEX "IX_PMEET_CUSTOMERGUID" ON "PLATMEETING" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_PMEET_EXPERTGUID"                                 */
/*==============================================================*/
CREATE INDEX "IX_PMEET_EXPERTGUID" ON "PLATMEETING" (
   "EXPERTGUID" ASC
);

/*==============================================================*/
/* Index: "IX_PMEET_PUBLISHDATE"                                */
/*==============================================================*/
CREATE INDEX "IX_PMEET_PUBLISHDATE" ON "PLATMEETING" (
   "PUBLISHDATE" ASC
);

/*==============================================================*/
/* Index: "IX_PMEET_STATE"                                      */
/*==============================================================*/
CREATE INDEX "IX_PMEET_STATE" ON "PLATMEETING" (
   "STATE" ASC
);

/*==============================================================*/
/* Index: "IX_PT_SERVICECENTERID"                               */
/*==============================================================*/
CREATE INDEX "IX_PT_SERVICECENTERID" ON "PRINTTEMPLATE" (
   "SERVICECENTERID" ASC
);

/*==============================================================*/
/* Index: "IX_PAR_SERVICENO"                                    */
/*==============================================================*/
CREATE INDEX "IX_PAR_SERVICENO" ON "PUSHACCESSRECORD" (
   "SERVICENO" ASC
);

/*==============================================================*/
/* Index: "IX_PAR_OPENID"                                       */
/*==============================================================*/
CREATE INDEX "IX_PAR_OPENID" ON "PUSHACCESSRECORD" (
   "OPENID" ASC
);

/*==============================================================*/
/* Index: "IX_PRR_SERVICENO"                                    */
/*==============================================================*/
CREATE INDEX "IX_PRR_SERVICENO" ON "PUSHREGISTRECORD" (
   "SERVICENO" ASC
);

/*==============================================================*/
/* Index: "IX_PRR_CUSTOMERGUID"                                 */
/*==============================================================*/
CREATE INDEX "IX_PRR_CUSTOMERGUID" ON "PUSHREGISTRECORD" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_SMS_GLOBALID"                                     */
/*==============================================================*/
CREATE INDEX "IX_SMS_GLOBALID" ON SMS (
   "GLOBALID" ASC
);

/*==============================================================*/
/* Index: "IX_SMS_KIND"                                         */
/*==============================================================*/
CREATE INDEX "IX_SMS_KIND" ON SMS (
   "KIND" ASC
);

/*==============================================================*/
/* Index: "IX_SMS_PUBLISHDATE"                                  */
/*==============================================================*/
CREATE INDEX "IX_SMS_PUBLISHDATE" ON SMS (
   "PUBLISHDATE" ASC
);

/*==============================================================*/
/* Index: "IX_SMS_SERVICECENTERID"                              */
/*==============================================================*/
CREATE INDEX "IX_SMS_SERVICECENTERID" ON SMS (
   "SERVICECENTERID" ASC
);

/*==============================================================*/
/* Index: "IX_SMS_INSTITUTIONGUID"                              */
/*==============================================================*/
CREATE INDEX "IX_SMS_INSTITUTIONGUID" ON SMS (
   "INSTITUTIONGUID" ASC
);

/*==============================================================*/
/* Index: "IX_SMS_ISDELETE"                                     */
/*==============================================================*/
CREATE INDEX "IX_SMS_ISDELETE" ON SMS (
   "ISDELETE" ASC
);

/*==============================================================*/
/* Index: "IX_SCF_INSTITUTIONGUID"                              */
/*==============================================================*/
CREATE INDEX "IX_SCF_INSTITUTIONGUID" ON "SERVICECENTERFALLBACK" (
   "INSTITUTIONGUID" ASC
);

/*==============================================================*/
/* Index: "IX_SCF_HOSPITALCODE"                                 */
/*==============================================================*/
CREATE INDEX "IX_SCF_HOSPITALCODE" ON "SERVICECENTERFALLBACK" (
   "HOSPITALCODE" ASC
);

/*==============================================================*/
/* Index: "IX_SCF_SERVICECENTERID"                              */
/*==============================================================*/
CREATE INDEX "IX_SCF_SERVICECENTERID" ON "SERVICECENTERFALLBACK" (
   "SERVICECENTERID" ASC
);

/*==============================================================*/
/* Index: "IX_SCF_FSERVICECENTERID"                             */
/*==============================================================*/
CREATE INDEX "IX_SCF_FSERVICECENTERID" ON "SERVICECENTERFALLBACK" (
   "FALLBACKSERVICECENTERID" ASC
);

/*==============================================================*/
/* Index: "IX_SETTING_NAME"                                     */
/*==============================================================*/
CREATE INDEX "IX_SETTING_NAME" ON "SETTING" (
   "NAME" ASC
);

/*==============================================================*/
/* Index: "IX_ST_TEMPLATECODE"                                  */
/*==============================================================*/
CREATE INDEX "IX_ST_TEMPLATECODE" ON "SMSTEMPLATE" (
   "TEMPLATECODE" ASC
);

/*==============================================================*/
/* Index: "IX_STP_TEMPLATEID"                                   */
/*==============================================================*/
CREATE INDEX "IX_STP_TEMPLATEID" ON "SMSTEMPLATEPARA" (
   "TEMPLATEID" ASC
);

/*==============================================================*/
/* Index: "IX_STP_TEMPLATECODE"                                 */
/*==============================================================*/
CREATE INDEX "IX_STP_TEMPLATECODE" ON "SMSTEMPLATEPARA" (
   "TEMPLATECODE" ASC
);

/*==============================================================*/
/* Index: "IX_SKW_SUBJECTID"                                    */
/*==============================================================*/
CREATE INDEX "IX_SKW_SUBJECTID" ON "SUBJECTKEYWORD" (
   "SUBJECTID" ASC
);

/*==============================================================*/
/* Index: "IX_SUBJECTSECOND_FIRSTID"                            */
/*==============================================================*/
CREATE INDEX "IX_SUBJECTSECOND_FIRSTID" ON "SUBJECTSECOND" (
   "FIRSTID" ASC
);

/*==============================================================*/
/* Index: "IX_TSUBJECTSECOND_FIRSTID"                           */
/*==============================================================*/
CREATE INDEX "IX_TSUBJECTSECOND_FIRSTID" ON "TEACHSUBJECTSECOND" (
   "FIRSTID" ASC
);

/*==============================================================*/
/* Index: "IX_WXALERT_SERVICEID"                                */
/*==============================================================*/
CREATE INDEX "IX_WXALERT_SERVICEID" ON "WEIXINALERT" (
   "SERVICEID" ASC
);

/*==============================================================*/
/* Index: "IX_WXALERT_KIND"                                     */
/*==============================================================*/
CREATE INDEX "IX_WXALERT_KIND" ON "WEIXINALERT" (
   "KIND" ASC
);

/*==============================================================*/
/* Index: "IX_WXALERT_SCUSTOMERGUID"                            */
/*==============================================================*/
CREATE INDEX "IX_WXALERT_SCUSTOMERGUID" ON "WEIXINALERT" (
   "SENDCUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_WXALERT_RCUSTOMERGUID"                            */
/*==============================================================*/
CREATE INDEX "IX_WXALERT_RCUSTOMERGUID" ON "WEIXINALERT" (
   "RECEIVECUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_WXALERT_ALERTTIME"                                */
/*==============================================================*/
CREATE INDEX "IX_WXALERT_ALERTTIME" ON "WEIXINALERT" (
   "ALERTTIME" ASC
);

/*==============================================================*/
/* Index: "IX_WXALERT_ALERTTYPE"                                */
/*==============================================================*/
CREATE INDEX "IX_WXALERT_ALERTTYPE" ON "WEIXINALERT" (
   "TEMPLATETYPE" ASC
);

/*==============================================================*/
/* Index: "IX_WXALERT_ISSEND"                                   */
/*==============================================================*/
CREATE INDEX "IX_WXALERT_ISSEND" ON "WEIXINALERT" (
   "ISSEND" ASC
);

/*==============================================================*/
/* Index: "IX_WXALERT_STATUS"                                   */
/*==============================================================*/
CREATE INDEX "IX_WXALERT_STATUS" ON "WEIXINALERT" (
   "STATUS" ASC
);

/*==============================================================*/
/* Index: "IX_WXG_OPENID"                                       */
/*==============================================================*/
CREATE INDEX "IX_WXG_OPENID" ON "WEIXINGPS" (
   "OPENID" ASC
);

