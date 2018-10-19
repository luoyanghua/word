/*==============================================================*/
/* DBMS name:      ORACLE Version 11g                           */
/* Created on:     2018/4/13 14:04:31                           */
/*==============================================================*/


/*==============================================================*/
/* Index: "IX_CSSM_DISCOUNTCODE"                                */
/*==============================================================*/
CREATE INDEX "IX_CSSM_DISCOUNTCODE" ON "CLOUDSTORAGESERVICEMST" (
   "DISCOUNTCODE" ASC
);

/*==============================================================*/
/* Index: "IX_DSS_DATASOURCE"                                   */
/*==============================================================*/
CREATE INDEX "IX_DSS_DATASOURCE" ON "DATASOURCESETUP" (
   "DATASOURCE" ASC
);

/*==============================================================*/
/* Index: "IX_DSS_EXAMINETYPE"                                  */
/*==============================================================*/
CREATE INDEX "IX_DSS_EXAMINETYPE" ON "DATASOURCESETUP" (
   "EXAMINETYPE" ASC
);

/*==============================================================*/
/* Index: "IX_DSSM_INSTITUTIONLCODE"                            */
/*==============================================================*/
CREATE INDEX "IX_DSSM_INSTITUTIONLCODE" ON "DATASTORAGESTRATEGYMST" (
   "INSTITUTIONLCODE" ASC
);

/*==============================================================*/
/* Index: "IX_DICOMSTUDY_FILEUID"                               */
/*==============================================================*/
CREATE INDEX "IX_DICOMSTUDY_FILEUID" ON "DICOMSTUDY" (
   "FILEUID" ASC
);

/*==============================================================*/
/* Index: "IX_DOCUMENT_BUSINESSID"                              */
/*==============================================================*/
CREATE INDEX "IX_DOCUMENT_BUSINESSID" ON "DOCUMENT" (
   "BUSINESSID" ASC
);

/*==============================================================*/
/* Index: "IX_DOCUMENT_FLIESHA"                                 */
/*==============================================================*/
CREATE INDEX "IX_DOCUMENT_FLIESHA" ON "DOCUMENT" (
   "FILESHA" ASC
);

/*==============================================================*/
/* Index: "IX_DOCUMENT_UPLOADTIME"                              */
/*==============================================================*/
CREATE INDEX "IX_DOCUMENT_UPLOADTIME" ON "DOCUMENT" (
   "UPLOADTIME" ASC
);


/*==============================================================*/
/* Index: "IX_DS_CREATETIME"                                    */
/*==============================================================*/
CREATE INDEX "IX_DS_CREATETIME" ON "DOCUMENTINSERVICE" (
   "CREATETIME" ASC
);

/*==============================================================*/
/* Index: "IX_DS_DELETEFLAG"                                    */
/*==============================================================*/
CREATE INDEX "IX_DS_DELETEFLAG" ON "DOCUMENTINSERVICE" (
   "DELETEFLAG" ASC
);

/*==============================================================*/
/* Index: "IX_ECD_PERFORMTIME"                                  */
/*==============================================================*/
CREATE INDEX "IX_ECD_PERFORMTIME" ON "EXAMCHECKDATA" (
   "PERFORMTIME" ASC
);


/*==============================================================*/
/* Index: "IX_EW_OBSERVATIONUID"                                */
/*==============================================================*/
CREATE INDEX "IX_EW_OBSERVATIONUID" ON "EXAMWORKFLOW" (
   "OBSERVATIONUID" ASC
);

/*==============================================================*/
/* Index: "IX_EW_WORKFLOWNAME"                                  */
/*==============================================================*/
CREATE INDEX "IX_EW_WORKFLOWNAME" ON "EXAMWORKFLOW" (
   "WORKFLOWNAME" ASC
);

/*==============================================================*/
/* Index: "IX_HR_HOSPITALCODE"                                  */
/*==============================================================*/
CREATE INDEX "IX_HR_HOSPITALCODE" ON "HOSPITALREGION" (
   "HOSPITALCODE" ASC
);

/*==============================================================*/
/* Index: "IX_ICACP_PRODUCTCODE"                                */
/*==============================================================*/
CREATE INDEX "IX_ICACP_PRODUCTCODE" ON "ICACLOUDPRODUCT" (
   "PRODUCTCODE" ASC
);

/*==============================================================*/
/* Index: "IX_IT_INTEGRATIONTYPE"                               */
/*==============================================================*/
CREATE INDEX "IX_IT_INTEGRATIONTYPE" ON "INTEGRATIONTASK" (
   "INTERACTIONTYPE" ASC
);

/*==============================================================*/
/* Index: "IX_IT_TASKSTATUS"                                    */
/*==============================================================*/
CREATE INDEX "IX_IT_TASKSTATUS" ON "INTEGRATIONTASK" (
   "TASKSTATUS" ASC
);

/*==============================================================*/
/* Index: "IX_IT_BUSINESSKEYUID"                                */
/*==============================================================*/
CREATE INDEX "IX_IT_BUSINESSKEYUID" ON "INTEGRATIONTASK" (
   "BUSINESSKEYUID" ASC
);

/*==============================================================*/
/* Index: "IX_IT_BUSINESSKEY"                                   */
/*==============================================================*/
CREATE INDEX "IX_IT_BUSINESSKEY" ON "INTEGRATIONTASK" (
   "BUSINESSKEY" ASC
);

/*==============================================================*/
/* Index: "IX_IT_ORGANIZATIONID"                                */
/*==============================================================*/
CREATE INDEX "IX_IT_ORGANIZATIONID" ON "INTEGRATIONTASK" (
   "ORGANIZATIONID" ASC
);

/*==============================================================*/
/* Index: "IX_IT_PERFORMTIME"                                   */
/*==============================================================*/
CREATE INDEX "IX_IT_PERFORMTIME" ON "INTEGRATIONTASK" (
   "PERFORMTIME" ASC
);

/*==============================================================*/
/* Index: "IX_JSV_SERVICEUID"                                   */
/*==============================================================*/
CREATE INDEX "IX_JSV_SERVICEUID" ON "JOBSERVERVERSION" (
   "SERVICEUID" ASC
);

/*==============================================================*/
/* Index: "IX_JTMST_SERVICEUID"                                 */
/*==============================================================*/
CREATE INDEX "IX_JTMST_SERVICEUID" ON "JOBTRIGGERMST" (
   "SERVICEUID" ASC
);


/*==============================================================*/
/* Index: "IX_LCDO_CREATEDATE"                                  */
/*==============================================================*/
CREATE INDEX "IX_LCDO_CREATEDATE" ON "LOGCLINICDATAOPERATION" (
   "CREATEDATE" ASC
);


/*==============================================================*/
/* Index: "IX_LE_EXAMINDEX"                                     */
/*==============================================================*/
CREATE INDEX "IX_LE_EXAMINDEX" ON "LOGERROR" (
   "EXAMINDEX" ASC
);


/*==============================================================*/
/* Index: "IX_LE_WRONGTIME"                                     */
/*==============================================================*/
CREATE INDEX "IX_LE_WRONGTIME" ON "LOGERROR" (
   "WRONGTIME" ASC
);

/*==============================================================*/
/* Index: "IX_MEDIAMST_MEDIAUID"                                */
/*==============================================================*/
CREATE INDEX "IX_MEDIAMST_MEDIAUID" ON "MEDIAMST" (
   "MEDIAUID" ASC
);

/*==============================================================*/
/* Index: IX_ORE_OUID                                           */
/*==============================================================*/
CREATE INDEX IX_ORE_OUID ON "OBSERVATIONREQUEST" (
   "OBSERVATIONUID" ASC
);

/*==============================================================*/
/* Index: IX_ORE_PID_PIDAA                                      */
/*==============================================================*/
CREATE INDEX IX_ORE_PID_PIDAA ON "OBSERVATIONREQUEST" (
   "PATIENTID" ASC,
   "PIDASSIGNINGAUTHORITY" ASC
);

/*==============================================================*/
/* Index: "IX_ORE_PMASTERID"                                    */
/*==============================================================*/
CREATE INDEX "IX_ORE_PMASTERID" ON "OBSERVATIONREQUEST" (
   "PATIENTMASTERID" ASC
);

/*==============================================================*/
/* Index: "IX_ORE_VISITUID"                                     */
/*==============================================================*/
CREATE INDEX "IX_ORE_VISITUID" ON "OBSERVATIONREQUEST" (
   "VISITUID" ASC
);

/*==============================================================*/
/* Index: "IX_ORE_PATIENTCLASS"                                 */
/*==============================================================*/
CREATE INDEX "IX_ORE_PATIENTCLASS" ON "OBSERVATIONREQUEST" (
   "PATIENTCLASS" ASC
);

/*==============================================================*/
/* Index: "IX_ORE_ORGANIZATIONID"                               */
/*==============================================================*/
CREATE INDEX "IX_ORE_ORGANIZATIONID" ON "OBSERVATIONREQUEST" (
   "ORGANIZATIONID" ASC
);

/*==============================================================*/
/* Index: "IX_ORE_SERVICESECTID"                                */
/*==============================================================*/
CREATE INDEX "IX_ORE_SERVICESECTID" ON "OBSERVATIONREQUEST" (
   "SERVICESECTID" ASC
);

/*==============================================================*/
/* Index: "IX_ORE_ACCESSIONNUMBER"                              */
/*==============================================================*/
CREATE INDEX "IX_ORE_ACCESSIONNUMBER" ON "OBSERVATIONREQUEST" (
   "ACCESSIONNUMBER" ASC
);

/*==============================================================*/
/* Index: "IX_ORE_PLACERORDERNO"                                */
/*==============================================================*/
CREATE INDEX "IX_ORE_PLACERORDERNO" ON "OBSERVATIONREQUEST" (
   "PLACERORDERNO" ASC
);

/*==============================================================*/
/* Index: "IX_ORE_FORDERNO_FAA"                                 */
/*==============================================================*/
CREATE INDEX "IX_ORE_FORDERNO_FAA" ON "OBSERVATIONREQUEST" (
   "FILLERORDERNO" ASC,
   "FILLERASSIGNINGAUTHORITY" ASC
);

/*==============================================================*/
/* Index: "IX_ORE_REGTIME"                                      */
/*==============================================================*/
CREATE INDEX "IX_ORE_REGTIME" ON "OBSERVATIONREQUEST" (
   "REGTIME" ASC
);

/*==============================================================*/
/* Index: "IX_ORE_CLINICINFOTYPE"                               */
/*==============================================================*/
CREATE INDEX "IX_ORE_CLINICINFOTYPE" ON "OBSERVATIONREQUEST" (
   "CLINICINFOTYPE" ASC
);

/*==============================================================*/
/* Index: "IX_ORE_LASTUPDATEDATE"                               */
/*==============================================================*/
CREATE INDEX "IX_ORE_LASTUPDATEDATE" ON "OBSERVATIONREQUEST" (
   "LASTUPDATEDATE" ASC
);

/*==============================================================*/
/* Index: "IX_ORE_DELETEFLAG"                                   */
/*==============================================================*/
CREATE INDEX "IX_ORE_DELETEFLAG" ON "OBSERVATIONREQUEST" (
   "DELETEFLAG" ASC
);

/*==============================================================*/
/* Index: "IX_ORE_PROCEDURENAME"                                */
/*==============================================================*/
CREATE INDEX "IX_ORE_PROCEDURENAME" ON "OBSERVATIONREQUEST" (
   "PROCEDURENAME" ASC
);

/*==============================================================*/
/* Index: "IX_ORE_SERVICETEXT"                                  */
/*==============================================================*/
CREATE INDEX "IX_ORE_SERVICETEXT" ON "OBSERVATIONREQUEST" (
   "SERVICETEXT" ASC
);

/*==============================================================*/
/* Index: "IX_ORE_USERID"                                       */
/*==============================================================*/
CREATE INDEX "IX_ORE_USERID" ON "OBSERVATIONREQUEST" (
   "PROVIDERID" ASC,
   "TECHNICIANID" ASC,
   "RESULTASSISTANTID" ASC,
   "RESULTPRINCIPALID" ASC,
   "RESULTREVISEID" ASC
);

/*==============================================================*/
/* Index: "IX_ORE_DEPTID"                                       */
/*==============================================================*/
CREATE INDEX "IX_ORE_DEPTID" ON "OBSERVATIONREQUEST" (
   "REQUESTDEPTID" ASC,
   "COLLECTIONDEPT" ASC,
   "OBSERVATIONDEPTID" ASC
);

/*==============================================================*/
/* Index: "IX_ORE_OBSERVATIONDATE"                              */
/*==============================================================*/
CREATE INDEX "IX_ORE_OBSERVATIONDATE" ON "OBSERVATIONREQUEST" (
   "OBSERVATIONDATE" ASC
);

/*==============================================================*/
/* Index: "IX_ORE_PRELIMINARYDATE"                              */
/*==============================================================*/
CREATE INDEX "IX_ORE_PRELIMINARYDATE" ON "OBSERVATIONREQUEST" (
   "PRELIMINARYDATE" ASC
);

/*==============================================================*/
/* Index: "IX_ORE_DATASOURCE"                                   */
/*==============================================================*/
CREATE INDEX "IX_ORE_DATASOURCE" ON "OBSERVATIONREQUEST" (
   "DATASOURCE" ASC
);

/*==============================================================*/
/* Index: "IX_ORS_OBSERVATIONUID"                               */
/*==============================================================*/
CREATE INDEX "IX_ORS_OBSERVATIONUID" ON "OBSERVATIONRESULT" (
   "OBSERVATIONUID" ASC
);

/*==============================================================*/
/* Index: "IX_ORS_OBSERVATIONID"                                */
/*==============================================================*/
CREATE INDEX "IX_ORS_OBSERVATIONID" ON "OBSERVATIONRESULT" (
   "OBSERVATIONID" ASC
);

/*==============================================================*/
/* Index: "IX_ORS_OBSERVATIONTEXT"                              */
/*==============================================================*/
CREATE INDEX "IX_ORS_OBSERVATIONTEXT" ON "OBSERVATIONRESULT" (
   "OBSERVATIONTEXT" ASC
);

/*==============================================================*/
/* Index: "IX_ORS_DELETEFLAG"                                   */
/*==============================================================*/
CREATE INDEX "IX_ORS_DELETEFLAG" ON "OBSERVATIONRESULT" (
   "DELETEFLAG" ASC
);

/*==============================================================*/
/* Index: "IX_OS_OBSERVATIONUID"                                */
/*==============================================================*/
CREATE INDEX "IX_OS_OBSERVATIONUID" ON "OBSERVATIONSCHEDULE" (
   "OBSERVATIONUID" ASC
);

/*==============================================================*/
/* Index: "IX_OS_SRESOURCEUID"                                  */
/*==============================================================*/
CREATE INDEX "IX_OS_SRESOURCEUID" ON "OBSERVATIONSCHEDULE" (
   "SCHEDULERESOURCEUID" ASC
);

/*==============================================================*/
/* Index: "IX_OS_SSTARTDATE"                                    */
/*==============================================================*/
CREATE INDEX "IX_OS_SSTARTDATE" ON "OBSERVATIONSCHEDULE" (
   "SCHEDULESTARTDATE" ASC
);

/*==============================================================*/
/* Index: IX_PI_PID_PIDAA                                       */
/*==============================================================*/
CREATE INDEX IX_PI_PID_PIDAA ON "PATIENTINDEX" (
   "PATIENTID" ASC,
   "PIDASSIGNINGAUTHORITY" ASC
);

/*==============================================================*/
/* Index: "IX_PI_PMASTERID"                                     */
/*==============================================================*/
CREATE INDEX "IX_PI_PMASTERID" ON "PATIENTINDEX" (
   "PATIENTMASTERID" ASC
);

/*==============================================================*/
/* Index: "IX_PI_NAME"                                          */
/*==============================================================*/
CREATE INDEX "IX_PI_NAME" ON "PATIENTINDEX" (
   "NAME" ASC
);

/*==============================================================*/
/* Index: "IX_PI_IDCARDNO"                                      */
/*==============================================================*/
CREATE INDEX "IX_PI_IDCARDNO" ON "PATIENTINDEX" (
   "IDCARDNO" ASC
);

/*==============================================================*/
/* Index: "IX_PI_HEALTHCARDNO"                                  */
/*==============================================================*/
CREATE INDEX "IX_PI_HEALTHCARDNO" ON "PATIENTINDEX" (
   "HEALTHCARDNO" ASC
);

/*==============================================================*/
/* Index: "IX_PI_INSURANCEID"                                   */
/*==============================================================*/
CREATE INDEX "IX_PI_INSURANCEID" ON "PATIENTINDEX" (
   "INSURANCEID" ASC
);

/*==============================================================*/
/* Index: "IX_PI_STATUS"                                        */
/*==============================================================*/
CREATE INDEX "IX_PI_STATUS" ON "PATIENTINDEX" (
   "STATUS" ASC
);

/*==============================================================*/
/* Index: "IX_PI_CREATEOID"                                     */
/*==============================================================*/
CREATE INDEX "IX_PI_CREATEOID" ON "PATIENTINDEX" (
   "CREATEORGNIZATIONID" ASC
);

/*==============================================================*/
/* Index: "IX_SCM_MEDIAUID"                                     */
/*==============================================================*/
CREATE INDEX "IX_SCM_MEDIAUID" ON "SERVICECONFIGMST" (
   "MEDIAUID" ASC
);

/*==============================================================*/
/* Index: "IX_SCM_SERVICEUID"                                   */
/*==============================================================*/
CREATE INDEX "IX_SCM_SERVICEUID" ON "SERVICECONFIGMST" (
   "SERVICEUID" ASC
);

/*==============================================================*/
/* Index: "IX_SCM_SERVICETYPE"                                  */
/*==============================================================*/
CREATE INDEX "IX_SCM_SERVICETYPE" ON "SERVICECONFIGMST" (
   "SERVICETYPE" ASC
);

/*==============================================================*/
/* Index: "IX_SCM_ORGANIZATIONID"                               */
/*==============================================================*/
CREATE INDEX "IX_SCM_ORGANIZATIONID" ON "SERVICECONFIGMST" (
   "ORGANIZATIONID" ASC
);

/*==============================================================*/
/* Index: "IX_SCM_CURRENTFLAG"                                  */
/*==============================================================*/
CREATE INDEX "IX_SCM_CURRENTFLAG" ON "SERVICECONFIGMST" (
   "CURRENTFLAG" ASC
);

/*==============================================================*/
/* Index: "IX_SUA_ACCESSID"                                     */
/*==============================================================*/
CREATE INDEX "IX_SUA_ACCESSID" ON "SHORTURLACCESS" (
   "ACCESSID" ASC
);

/*==============================================================*/
/* Index: "IX_SUAL_ACCESSUID"                                   */
/*==============================================================*/
CREATE INDEX "IX_SUAL_ACCESSUID" ON "SHORTURLACCESSLOG" (
   "ACCESSUID" ASC
);

/*==============================================================*/
/* Index: "IX_SUAL_ACCESSIP"                                    */
/*==============================================================*/
CREATE INDEX "IX_SUAL_ACCESSIP" ON "SHORTURLACCESSLOG" (
   "ACCESSIP" ASC
);

/*==============================================================*/
/* Index: "IX_VISIT_PID_PIDAA"                                  */
/*==============================================================*/
CREATE INDEX "IX_VISIT_PID_PIDAA" ON "VISIT" (
   "PATIENTID" ASC,
   "PIDASSIGNINGAUTHORITY" ASC
);

/*==============================================================*/
/* Index: "IX_VISIT_PMASTERID"                                  */
/*==============================================================*/
CREATE INDEX "IX_VISIT_PMASTERID" ON "VISIT" (
   "PATIENTMASTERID" ASC
);

/*==============================================================*/
/* Index: "IX_VISIT_MEDRECNO"                                   */
/*==============================================================*/
CREATE INDEX "IX_VISIT_MEDRECNO" ON "VISIT" (
   "MEDRECNO" ASC
);

/*==============================================================*/
/* Index: "IX_VISIT_BED"                                        */
/*==============================================================*/
CREATE INDEX "IX_VISIT_BED" ON "VISIT" (
   "BED" ASC
);

/*==============================================================*/
/* Index: "IX_VISIT_INPATIENTNO"                                */
/*==============================================================*/
CREATE INDEX "IX_VISIT_INPATIENTNO" ON "VISIT" (
   "INPATIENTNO" ASC
);

/*==============================================================*/
/* Index: "IX_VISIT_OUTPATIENTNO"                               */
/*==============================================================*/
CREATE INDEX "IX_VISIT_OUTPATIENTNO" ON "VISIT" (
   "OUTPATIENTNO" ASC
);

/*==============================================================*/
/* Index: "IX_VISIT_CARDNO"                                     */
/*==============================================================*/
CREATE INDEX "IX_VISIT_CARDNO" ON "VISIT" (
   "CARDNO" ASC
);
