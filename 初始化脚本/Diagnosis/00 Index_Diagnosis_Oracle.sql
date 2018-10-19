/*==============================================================*/
/* DBMS name:      ORACLE Version 11g                           */
/* Created on:     2018/4/19 11:44:31                           */
/*==============================================================*/


/*==============================================================*/
/* Index: "IX_CDC_SERVICECENTERID"                              */
/*==============================================================*/
CREATE INDEX "IX_CDC_SERVICECENTERID" ON "CLOUDDIAGNOSISCONFIG" (
   "SERVICECENTERID" ASC
);

/*==============================================================*/
/* Index: "IX_CDC_CONFIGCODE"                                   */
/*==============================================================*/
CREATE INDEX "IX_CDC_CONFIGCODE" ON "CLOUDDIAGNOSISCONFIG" (
   "CONFIGCODE" ASC
);

/*==============================================================*/
/* Index: "IX_CDEC_EXPERTUID"                                   */
/*==============================================================*/
CREATE INDEX "IX_CDEC_EXPERTUID" ON "CLOUDDIAGNOSISEXPERTCOUNT" (
   "EXPERTUID" ASC
);

/*==============================================================*/
/* Index: "IX_CDRL_SERVICEID"                                   */
/*==============================================================*/
CREATE INDEX "IX_CDRL_SERVICEID" ON "CLOUDDIAGNOSISREVISELIST" (
   "SERVICEID" ASC
);

/*==============================================================*/
/* Index: "IX_CDRL_RHCODE"                                      */
/*==============================================================*/
CREATE INDEX "IX_CDRL_RHCODE" ON "CLOUDDIAGNOSISREVISELIST" (
   "REQUESTHOSPITALCODE" ASC
);

/*==============================================================*/
/* Index: "IX_CDRL_DIAGNOSISKIND"                               */
/*==============================================================*/
CREATE INDEX "IX_CDRL_DIAGNOSISKIND" ON "CLOUDDIAGNOSISREVISELIST" (
   "DIAGNOSISKIND" ASC
);

/*==============================================================*/
/* Index: "IX_CDWF_SERVICEID"                                   */
/*==============================================================*/
CREATE INDEX "IX_CDWF_SERVICEID" ON "CLOUDDIAGNOSISWORKFLOW" (
   "SERVICEID" ASC
);

/*==============================================================*/
/* Index: "IX_CDWF_CUSERUID"                                    */
/*==============================================================*/
CREATE INDEX "IX_CDWF_CUSERUID" ON "CLOUDDIAGNOSISWORKFLOW" (
   "CREATEUSERUID" ASC
);

/*==============================================================*/
/* Index: "IX_CDWF_PUSERUID"                                    */
/*==============================================================*/
CREATE INDEX "IX_CDWF_PUSERUID" ON "CLOUDDIAGNOSISWORKFLOW" (
   "PROCESSUSERUID" ASC
);

/*==============================================================*/
/* Index: "IX_CIU_SERVICEID"                                    */
/*==============================================================*/
CREATE INDEX "IX_CIU_SERVICEID" ON "CLOUDIMAGESURL" (
   "SERVICEID" ASC
);

/*==============================================================*/
/* Index: "IX_CD_LOOKUPKEY"                                     */
/*==============================================================*/
CREATE INDEX "IX_CD_LOOKUPKEY" ON "CRITICALDICTIONARY" (
   "LOOKUPKEY" ASC
);

/*==============================================================*/
/* Index: "IX_CD_SERVICECENTERID"                               */
/*==============================================================*/
CREATE INDEX "IX_CD_SERVICECENTERID" ON "CRITICALDICTIONARY" (
   "SERVICECENTERID" ASC
);

/*==============================================================*/
/* Index: "IX_CD_STATE"                                         */
/*==============================================================*/
CREATE INDEX "IX_CD_STATE" ON "CRITICALDICTIONARY" (
   "STATE" ASC
);

/*==============================================================*/
/* Index: "IX_CDC_LOOKUPKEY"                                    */
/*==============================================================*/
CREATE INDEX "IX_CDC_LOOKUPKEY" ON "CRITICALDICTIONARYCATALOG" (
   "LOOKUPKEY" ASC
);

/*==============================================================*/
/* Index: "IX_CDC_TYPECODE"                                     */
/*==============================================================*/
CREATE INDEX "IX_CDC_TYPECODE" ON "CRITICALDICTIONARYCATALOG" (
   "TYPECODE" ASC
);

/*==============================================================*/
/* Index: "IX_CVL_SERVICEID"                                    */
/*==============================================================*/
CREATE INDEX "IX_CVL_SERVICEID" ON "CRITICALVALUESLOG" (
   "SERVICEID" ASC
);

/*==============================================================*/
/* Index: "IX_CVL_EXPERTUID"                                    */
/*==============================================================*/
CREATE INDEX "IX_CVL_EXPERTUID" ON "CRITICALVALUESLOG" (
   "EXPERTUID" ASC
);

/*==============================================================*/
/* Index: "IX_CVL_NOTICEUSERID"                                 */
/*==============================================================*/
CREATE INDEX "IX_CVL_NOTICEUSERID" ON "CRITICALVALUESLOG" (
   "NOTICEUSERID" ASC
);

/*==============================================================*/
/* Index: "IX_CVL_DEALUSERID"                                   */
/*==============================================================*/
CREATE INDEX "IX_CVL_DEALUSERID" ON "CRITICALVALUESLOG" (
   "DEALUSERID" ASC
);

/*==============================================================*/
/* Index: "IX_CI_CUSTOMERGUID"                                  */
/*==============================================================*/
CREATE INDEX "IX_CI_CUSTOMERGUID" ON "CUSTOMERIMAGES" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_DFEE_DIAGNOSISKINDCODE"                           */
/*==============================================================*/
CREATE INDEX "IX_DFEE_DIAGNOSISKINDCODE" ON "DIAGNOSISFEE" (
   "DIAGNOSISKINDCODE" ASC
);

/*==============================================================*/
/* Index: "IX_DFEE_EXAMINETYPE"                                 */
/*==============================================================*/
CREATE INDEX "IX_DFEE_EXAMINETYPE" ON "DIAGNOSISFEE" (
   "EXAMINETYPE" ASC
);

/*==============================================================*/
/* Index: "IX_DFEE_SERVICECENTERID"                             */
/*==============================================================*/
CREATE INDEX "IX_DFEE_SERVICECENTERID" ON "DIAGNOSISFEE" (
   "SERVICECENTERID" ASC
);

/*==============================================================*/
/* Index: "IX_DF_SERVICEID"                                     */
/*==============================================================*/
CREATE INDEX "IX_DF_SERVICEID" ON "DIAGNOSISFILM" (
   "SERVICEID" ASC
);

/*==============================================================*/
/* Index: "IX_DF_ISPRINT"                                       */
/*==============================================================*/
CREATE INDEX "IX_DF_ISPRINT" ON "DIAGNOSISFILM" (
   "ISPRINT" ASC
);

/*==============================================================*/
/* Index: "IX_DG_SERVICEID"                                     */
/*==============================================================*/
CREATE INDEX "IX_DG_SERVICEID" ON "DIAGNOSISGRADE" (
   "SERVICEID" ASC
);

/*==============================================================*/
/* Index: "IX_DG_MODALITY"                                      */
/*==============================================================*/
CREATE INDEX "IX_DG_MODALITY" ON "DIAGNOSISGRADE" (
   "MODALITY" ASC
);

/*==============================================================*/
/* Index: "IX_DG_EXAMINEDATE"                                   */
/*==============================================================*/
CREATE INDEX "IX_DG_EXAMINEDATE" ON "DIAGNOSISGRADE" (
   "EXAMINEDATE" ASC
);

/*==============================================================*/
/* Index: "IX_DG_REPORTCUSTOMERGUID"                            */
/*==============================================================*/
CREATE INDEX "IX_DG_REPORTCUSTOMERGUID" ON "DIAGNOSISGRADE" (
   "REPORTCUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_DG_REQUESTCUSTOMERGUID"                           */
/*==============================================================*/
CREATE INDEX "IX_DG_REQUESTCUSTOMERGUID" ON "DIAGNOSISGRADE" (
   "REQUESTCUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_DG_REQUESTHOSPITALCODE"                           */
/*==============================================================*/
CREATE INDEX "IX_DG_REQUESTHOSPITALCODE" ON "DIAGNOSISGRADE" (
   "REQUESTHOSPITALCODE" ASC
);

/*==============================================================*/
/* Index: "IX_DG_SERVICECENTERID"                               */
/*==============================================================*/
CREATE INDEX "IX_DG_SERVICECENTERID" ON "DIAGNOSISGRADE" (
   "SERVICECENTERID" ASC
);

/*==============================================================*/
/* Index: "IX_DG_LEVEL"                                         */
/*==============================================================*/
CREATE INDEX "IX_DG_LEVEL" ON "DIAGNOSISGRADE" (
   "LEVEL" ASC
);

/*==============================================================*/
/* Index: "IX_DG_GRADEDATE"                                     */
/*==============================================================*/
CREATE INDEX "IX_DG_GRADEDATE" ON "DIAGNOSISGRADE" (
   "GRADEDATE" ASC
);

/*==============================================================*/
/* Index: "IX_DIMAGE_SERVICEID"                                 */
/*==============================================================*/
CREATE INDEX "IX_DIMAGE_SERVICEID" ON "DIAGNOSISIMAGE" (
   "SERVICEID" ASC
);

/*==============================================================*/
/* Index: "IX_DMS_STATISTICSID"                                 */
/*==============================================================*/
CREATE INDEX "IX_DMS_STATISTICSID" ON "DIAGNOSISMONTHSTATISTICS" (
   "STATISTICSID" ASC
);

/*==============================================================*/
/* Index: "IX_DRP_SERVICEID"                                    */
/*==============================================================*/
CREATE INDEX "IX_DRP_SERVICEID" ON "DIAGNOSISREPORTPRINT" (
   "SERVICEID" ASC
);

/*==============================================================*/
/* Index: "IX_DRP_PRINTOPERATEUID"                              */
/*==============================================================*/
CREATE INDEX "IX_DRP_PRINTOPERATEUID" ON "DIAGNOSISREPORTPRINT" (
   "PRINTOPERATEUID" ASC
);

/*==============================================================*/
/* Index: "IX_DTOL_SERVICEID"                                   */
/*==============================================================*/
CREATE INDEX "IX_DTOL_SERVICEID" ON "DIAGNOSISTIMEOUTLOG" (
   "SERVICEID" ASC
);

/*==============================================================*/
/* Index: "IX_DTOL_EXPERTUID"                                   */
/*==============================================================*/
CREATE INDEX "IX_DTOL_EXPERTUID" ON "DIAGNOSISTIMEOUTLOG" (
   "EXPERTUID" ASC
);

/*==============================================================*/
/* Index: "IX_DTOT_EXPERTUID"                                   */
/*==============================================================*/
CREATE INDEX "IX_DTOT_EXPERTUID" ON "DIAGNOSISTIMEOUTTASK" (
   "EXPERTUID" ASC
);

/*==============================================================*/
/* Index: "IX_DTOT_SERVICEID"                                   */
/*==============================================================*/
CREATE INDEX "IX_DTOT_SERVICEID" ON "DIAGNOSISTIMEOUTTASK" (
   "SERVICEID" ASC
);

/*==============================================================*/
/* Index: "IX_DTOT_TASKSTATE"                                   */
/*==============================================================*/
CREATE INDEX "IX_DTOT_TASKSTATE" ON "DIAGNOSISTIMEOUTTASK" (
   "TASKSTATE" ASC
);

/*==============================================================*/
/* Index: "IX_DTOT_CREATETIME"                                  */
/*==============================================================*/
CREATE INDEX "IX_DTOT_CREATETIME" ON "DIAGNOSISTIMEOUTTASK" (
   "CREATETIME" ASC
);

/*==============================================================*/
/* Index: "IX_ER_SERVICEID"                                     */
/*==============================================================*/
CREATE INDEX "IX_ER_SERVICEID" ON "ECGREQUEST" (
   "SERVICEID" ASC
);

/*==============================================================*/
/* Index: "IX_ER_GPATIENTID"                                    */
/*==============================================================*/
CREATE INDEX "IX_ER_GPATIENTID" ON "ECGREQUEST" (
   "GPATIENTID" ASC
);

/*==============================================================*/
/* Index: "IX_ER_PATIENTID"                                     */
/*==============================================================*/
CREATE INDEX "IX_ER_PATIENTID" ON "ECGREQUEST" (
   "PATIENTID" ASC
);

/*==============================================================*/
/* Index: "IX_ER_STAYINSU"                                      */
/*==============================================================*/
CREATE INDEX "IX_ER_STAYINSU" ON "ECGREQUEST" (
   "STAYINSU" ASC
);

/*==============================================================*/
/* Index: "IX_ER_REQUESTHOSPITALCODE"                           */
/*==============================================================*/
CREATE INDEX "IX_ER_REQUESTHOSPITALCODE" ON "ECGREQUEST" (
   "REQUESTHOSPITALCODE" ASC
);

/*==============================================================*/
/* Index: "IX_ER_CUSTOMERGUID"                                  */
/*==============================================================*/
CREATE INDEX "IX_ER_CUSTOMERGUID" ON "ECGREQUEST" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_ER_REQUESTDATE"                                   */
/*==============================================================*/
CREATE INDEX "IX_ER_REQUESTDATE" ON "ECGREQUEST" (
   "REQUESTDATE" ASC
);

/*==============================================================*/
/* Index: "IX_ER_SERVICECENTERID"                               */
/*==============================================================*/
CREATE INDEX "IX_ER_SERVICECENTERID" ON "ECGREQUEST" (
   "SERVICECENTERID" ASC
);

/*==============================================================*/
/* Index: "IX_ER_SERVICESTATE"                                  */
/*==============================================================*/
CREATE INDEX "IX_ER_SERVICESTATE" ON "ECGREQUEST" (
   "SERVICESTATE" ASC
);

/*==============================================================*/
/* Index: "IX_ER_ISOCCUPY"                                      */
/*==============================================================*/
CREATE INDEX "IX_ER_ISOCCUPY" ON "ECGREQUEST" (
   "ISOCCUPY" ASC
);

/*==============================================================*/
/* Index: "IX_ER_ISPRINT"                                       */
/*==============================================================*/
CREATE INDEX "IX_ER_ISPRINT" ON "ECGREQUEST" (
   "ISPRINT" ASC
);

/*==============================================================*/
/* Index: "IX_ER_ACCESSIONNUMBER"                               */
/*==============================================================*/
CREATE INDEX "IX_ER_ACCESSIONNUMBER" ON "ECGREQUEST" (
   "ACCESSIONNUMBER" ASC
);

/*==============================================================*/
/* Index: "IX_ER_MEDRECNO"                                      */
/*==============================================================*/
CREATE INDEX "IX_ER_MEDRECNO" ON "ECGREQUEST" (
   "MEDRECNO" ASC
);

/*==============================================================*/
/* Index: "IX_ER_SCANSTATE"                                     */
/*==============================================================*/
CREATE INDEX "IX_ER_SCANSTATE" ON "ECGREQUEST" (
   "SCANSTATE" ASC
);

/*==============================================================*/
/* Index: "IX_ER_ISTOCONSULT"                                   */
/*==============================================================*/
CREATE INDEX "IX_ER_ISTOCONSULT" ON "ECGREQUEST" (
   "ISTOCONSULT" ASC
);

/*==============================================================*/
/* Index: "IX_ER_ASSIGNEXPERT"                                  */
/*==============================================================*/
CREATE INDEX "IX_ER_ASSIGNEXPERT" ON "ECGREQUEST" (
   "ASSIGNEXPERT" ASC
);

/*==============================================================*/
/* Index: "IX_ERR_SERVICEID"                                    */
/*==============================================================*/
CREATE INDEX "IX_ERR_SERVICEID" ON "ECGREQUESTREPLY" (
   "SERVICEID" ASC
);

/*==============================================================*/
/* Index: "IX_ERR_WCUSTOMERGUID"                                */
/*==============================================================*/
CREATE INDEX "IX_ERR_WCUSTOMERGUID" ON "ECGREQUESTREPLY" (
   "WRITECUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_ERR_WRITETIME"                                    */
/*==============================================================*/
CREATE INDEX "IX_ERR_WRITETIME" ON "ECGREQUESTREPLY" (
   "WRITETIME" ASC
);

/*==============================================================*/
/* Index: "IX_ERR_ACUSTOMERGUID"                                */
/*==============================================================*/
CREATE INDEX "IX_ERR_ACUSTOMERGUID" ON "ECGREQUESTREPLY" (
   "AUDITCUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_ERR_AUDITTIME"                                    */
/*==============================================================*/
CREATE INDEX "IX_ERR_AUDITTIME" ON "ECGREQUESTREPLY" (
   "AUDITTIME" ASC
);

/*==============================================================*/
/* Index: "IX_ERR_RCUSTOMERGUID"                                */
/*==============================================================*/
CREATE INDEX "IX_ERR_RCUSTOMERGUID" ON "ECGREQUESTREPLY" (
   "REVISECUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_ERR_REVISETIME"                                   */
/*==============================================================*/
CREATE INDEX "IX_ERR_REVISETIME" ON "ECGREQUESTREPLY" (
   "REVISETIME" ASC
);

/*==============================================================*/
/* Index: "IX_ERR_ISURGENCYREPORT"                              */
/*==============================================================*/
CREATE INDEX "IX_ERR_ISURGENCYREPORT" ON "ECGREQUESTREPLY" (
   "ISURGENCYREPORT" ASC
);

/*==============================================================*/
/* Index: "IX_ECR_CUSTOMERGUID"                                 */
/*==============================================================*/
CREATE INDEX "IX_ECR_CUSTOMERGUID" ON "EXPERTCLOUDRIGHT" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_FR_SERVICEID"                                     */
/*==============================================================*/
CREATE INDEX "IX_FR_SERVICEID" ON "FUNDUSREQUEST" (
   "SERVICEID" ASC
);

/*==============================================================*/
/* Index: "IX_FR_GPATIENTID"                                    */
/*==============================================================*/
CREATE INDEX "IX_FR_GPATIENTID" ON "FUNDUSREQUEST" (
   "GPATIENTID" ASC
);

/*==============================================================*/
/* Index: "IX_FR_PATIENTID"                                     */
/*==============================================================*/
CREATE INDEX "IX_FR_PATIENTID" ON "FUNDUSREQUEST" (
   "PATIENTID" ASC
);

/*==============================================================*/
/* Index: "IX_FR_STAYINSU"                                      */
/*==============================================================*/
CREATE INDEX "IX_FR_STAYINSU" ON "FUNDUSREQUEST" (
   "STAYINSU" ASC
);

/*==============================================================*/
/* Index: "IX_FR_REQUESTHOSPITALCODE"                           */
/*==============================================================*/
CREATE INDEX "IX_FR_REQUESTHOSPITALCODE" ON "FUNDUSREQUEST" (
   "REQUESTHOSPITALCODE" ASC
);

/*==============================================================*/
/* Index: "IX_FR_CUSTOMERGUID"                                  */
/*==============================================================*/
CREATE INDEX "IX_FR_CUSTOMERGUID" ON "FUNDUSREQUEST" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_FR_REQUESTDATE"                                   */
/*==============================================================*/
CREATE INDEX "IX_FR_REQUESTDATE" ON "FUNDUSREQUEST" (
   "REQUESTDATE" ASC
);

/*==============================================================*/
/* Index: "IX_FR_SERVICECENTERID"                               */
/*==============================================================*/
CREATE INDEX "IX_FR_SERVICECENTERID" ON "FUNDUSREQUEST" (
   "SERVICECENTERID" ASC
);

/*==============================================================*/
/* Index: "IX_FR_SERVICESTATE"                                  */
/*==============================================================*/
CREATE INDEX "IX_FR_SERVICESTATE" ON "FUNDUSREQUEST" (
   "SERVICESTATE" ASC
);

/*==============================================================*/
/* Index: "IX_FR_ISOCCUPY"                                      */
/*==============================================================*/
CREATE INDEX "IX_FR_ISOCCUPY" ON "FUNDUSREQUEST" (
   "ISOCCUPY" ASC
);

/*==============================================================*/
/* Index: "IX_FR_ISPRINT"                                       */
/*==============================================================*/
CREATE INDEX "IX_FR_ISPRINT" ON "FUNDUSREQUEST" (
   "ISPRINT" ASC
);

/*==============================================================*/
/* Index: "IX_FR_ACCESSIONNUMBER"                               */
/*==============================================================*/
CREATE INDEX "IX_FR_ACCESSIONNUMBER" ON "FUNDUSREQUEST" (
   "ACCESSIONNUMBER" ASC
);

/*==============================================================*/
/* Index: "IX_FR_MEDRECNO"                                      */
/*==============================================================*/
CREATE INDEX "IX_FR_MEDRECNO" ON "FUNDUSREQUEST" (
   "MEDRECNO" ASC
);

/*==============================================================*/
/* Index: "IX_FR_ISTOCONSULT"                                   */
/*==============================================================*/
CREATE INDEX "IX_FR_ISTOCONSULT" ON "FUNDUSREQUEST" (
   "ISTOCONSULT" ASC
);

/*==============================================================*/
/* Index: "IX_FRR_SERVICEID"                                    */
/*==============================================================*/
CREATE INDEX "IX_FRR_SERVICEID" ON "FUNDUSREQUESTREPLY" (
   "SERVICEID" ASC
);

/*==============================================================*/
/* Index: "IX_FRR_WCUSTOMERGUID"                                */
/*==============================================================*/
CREATE INDEX "IX_FRR_WCUSTOMERGUID" ON "FUNDUSREQUESTREPLY" (
   "WRITECUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_FRR_WRITETIME"                                    */
/*==============================================================*/
CREATE INDEX "IX_FRR_WRITETIME" ON "FUNDUSREQUESTREPLY" (
   "WRITETIME" ASC
);

/*==============================================================*/
/* Index: "IX_FRR_ACUSTOMERGUID"                                */
/*==============================================================*/
CREATE INDEX "IX_FRR_ACUSTOMERGUID" ON "FUNDUSREQUESTREPLY" (
   "AUDITCUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_FRR_AUDITTIME"                                    */
/*==============================================================*/
CREATE INDEX "IX_FRR_AUDITTIME" ON "FUNDUSREQUESTREPLY" (
   "AUDITTIME" ASC
);

/*==============================================================*/
/* Index: "IX_FRR_RCUSTOMERGUID"                                */
/*==============================================================*/
CREATE INDEX "IX_FRR_RCUSTOMERGUID" ON "FUNDUSREQUESTREPLY" (
   "REVISECUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_FRR_REVISETIME"                                   */
/*==============================================================*/
CREATE INDEX "IX_FRR_REVISETIME" ON "FUNDUSREQUESTREPLY" (
   "REVISETIME" ASC
);

/*==============================================================*/
/* Index: "IX_FRR_ISURGENCYREPORT"                              */
/*==============================================================*/
CREATE INDEX "IX_FRR_ISURGENCYREPORT" ON "FUNDUSREQUESTREPLY" (
   "ISURGENCYREPORT" ASC
);

/*==============================================================*/
/* Index: "IX_GT_MODALITY"                                      */
/*==============================================================*/
CREATE INDEX "IX_GT_MODALITY" ON "GRADETEMPLATE" (
   "MODALITY" ASC
);

/*==============================================================*/
/* Index: "IX_GT_SERVICECENTERID"                               */
/*==============================================================*/
CREATE INDEX "IX_GT_SERVICECENTERID" ON "GRADETEMPLATE" (
   "SERVICECENTERID" ASC
);

/*==============================================================*/
/* Index: "IX_HEST_STATISTICSID"                                */
/*==============================================================*/
CREATE INDEX "IX_HEST_STATISTICSID" ON "HOSPITALEXPERTSTATISTICSTOTAL" (
   "STATISTICSID" ASC
);

/*==============================================================*/
/* Index: "IX_IDL_GPATIENTID"                                   */
/*==============================================================*/
CREATE INDEX "IX_IDL_GPATIENTID" ON "IMAGEDIAGNOSISLIST" (
   "GPATIENTID" ASC
);

/*==============================================================*/
/* Index: "IX_IDL_HEALTHCARDNO"                                 */
/*==============================================================*/
CREATE INDEX "IX_IDL_HEALTHCARDNO" ON "IMAGEDIAGNOSISLIST" (
   "HEALTHCARDNO" ASC
);

/*==============================================================*/
/* Index: "IX_IDL_PATIENTNAME"                                  */
/*==============================================================*/
CREATE INDEX "IX_IDL_PATIENTNAME" ON "IMAGEDIAGNOSISLIST" (
   "PATIENTNAME" ASC
);

/*==============================================================*/
/* Index: "IX_IDL_IDNUMBER"                                     */
/*==============================================================*/
CREATE INDEX "IX_IDL_IDNUMBER" ON "IMAGEDIAGNOSISLIST" (
   "IDNUMBER" ASC
);

/*==============================================================*/
/* Index: "IX_IDL_MEDNO"                                        */
/*==============================================================*/
CREATE INDEX "IX_IDL_MEDNO" ON "IMAGEDIAGNOSISLIST" (
   "MEDNO" ASC
);

/*==============================================================*/
/* Index: "IX_IDL_SERVICEID"                                    */
/*==============================================================*/
CREATE INDEX "IX_IDL_SERVICEID" ON "IMAGEDIAGNOSISLIST" (
   "SERVICEID" ASC
);

/*==============================================================*/
/* Index: "IX_IDL_REGISTERDATE"                                 */
/*==============================================================*/
CREATE INDEX "IX_IDL_REGISTERDATE" ON "IMAGEDIAGNOSISLIST" (
   "REGISTERDATE" ASC
);

/*==============================================================*/
/* Index: "IX_IDL_SERVICECENTERID"                              */
/*==============================================================*/
CREATE INDEX "IX_IDL_SERVICECENTERID" ON "IMAGEDIAGNOSISLIST" (
   "SERVICECENTERID" ASC
);

/*==============================================================*/
/* Index: "IX_IDL_REQUESTDATE"                                  */
/*==============================================================*/
CREATE INDEX "IX_IDL_REQUESTDATE" ON "IMAGEDIAGNOSISLIST" (
   "REQUESTDATE" ASC
);

/*==============================================================*/
/* Index: "IX_IDL_SERVICESTATE"                                 */
/*==============================================================*/
CREATE INDEX "IX_IDL_SERVICESTATE" ON "IMAGEDIAGNOSISLIST" (
   "SERVICESTATE" ASC
);

/*==============================================================*/
/* Index: "IX_IDL_EXAMINETYPE"                                  */
/*==============================================================*/
CREATE INDEX "IX_IDL_EXAMINETYPE" ON "IMAGEDIAGNOSISLIST" (
   "EXAMINETYPE" ASC
);

/*==============================================================*/
/* Index: "IX_IDL_STAYINSU"                                     */
/*==============================================================*/
CREATE INDEX "IX_IDL_STAYINSU" ON "IMAGEDIAGNOSISLIST" (
   "STAYINSU" ASC
);

/*==============================================================*/
/* Index: "IX_IDL_OCCUPYUID"                                    */
/*==============================================================*/
CREATE INDEX "IX_IDL_OCCUPYUID" ON "IMAGEDIAGNOSISLIST" (
   "OCCUPYUID" ASC
);

/*==============================================================*/
/* Index: "IX_IDL_ISOCCUPY"                                     */
/*==============================================================*/
CREATE INDEX "IX_IDL_ISOCCUPY" ON "IMAGEDIAGNOSISLIST" (
   "ISOCCUPY" ASC
);

/*==============================================================*/
/* Index: "IX_IDL_ASSIGNEXPERT"                                 */
/*==============================================================*/
CREATE INDEX "IX_IDL_ASSIGNEXPERT" ON "IMAGEDIAGNOSISLIST" (
   "ASSIGNEXPERTNAME" ASC
);

/*==============================================================*/
/* Index: "IX_IDL_REQUESTHOSPITALCODE"                          */
/*==============================================================*/
CREATE INDEX "IX_IDL_REQUESTHOSPITALCODE" ON "IMAGEDIAGNOSISLIST" (
   "REQUESTHOSPITALCODE" ASC
);

/*==============================================================*/
/* Index: "IX_IDL_CUSTOMERNAME"                                 */
/*==============================================================*/
CREATE INDEX "IX_IDL_CUSTOMERNAME" ON "IMAGEDIAGNOSISLIST" (
   "CUSTOMERNAME" ASC
);

/*==============================================================*/
/* Index: "IX_IDL_MEDRECNO"                                     */
/*==============================================================*/
CREATE INDEX "IX_IDL_MEDRECNO" ON "IMAGEDIAGNOSISLIST" (
   "MEDRECNO" ASC
);

/*==============================================================*/
/* Index: "IX_IDL_ACCESSIONNUMBER"                              */
/*==============================================================*/
CREATE INDEX "IX_IDL_ACCESSIONNUMBER" ON "IMAGEDIAGNOSISLIST" (
   "ACCESSIONNUMBER" ASC
);

/*==============================================================*/
/* Index: "IX_IDL_PATIENTID"                                    */
/*==============================================================*/
CREATE INDEX "IX_IDL_PATIENTID" ON "IMAGEDIAGNOSISLIST" (
   "PATIENTID" ASC
);

/*==============================================================*/
/* Index: "IX_IDL_WRITETIME"                                    */
/*==============================================================*/
CREATE INDEX "IX_IDL_WRITETIME" ON "IMAGEDIAGNOSISLIST" (
   "WRITETIME" ASC
);

/*==============================================================*/
/* Index: "IX_IDL_WRITECUSTOMERNAME"                            */
/*==============================================================*/
CREATE INDEX "IX_IDL_WRITECUSTOMERNAME" ON "IMAGEDIAGNOSISLIST" (
   "WRITECUSTOMERNAME" ASC
);

/*==============================================================*/
/* Index: "IX_IDL_AUDITTIME"                                    */
/*==============================================================*/
CREATE INDEX "IX_IDL_AUDITTIME" ON "IMAGEDIAGNOSISLIST" (
   "AUDITTIME" ASC
);

/*==============================================================*/
/* Index: "IX_IDL_AUDITCUSTOMERNAME"                            */
/*==============================================================*/
CREATE INDEX "IX_IDL_AUDITCUSTOMERNAME" ON "IMAGEDIAGNOSISLIST" (
   "AUDITCUSTOMERNAME" ASC
);

/*==============================================================*/
/* Index: "IX_IDL_REVISETIME"                                   */
/*==============================================================*/
CREATE INDEX "IX_IDL_REVISETIME" ON "IMAGEDIAGNOSISLIST" (
   "REVISETIME" ASC
);

/*==============================================================*/
/* Index: "IX_IDL_REVISECUSTOMERNAME"                           */
/*==============================================================*/
CREATE INDEX "IX_IDL_REVISECUSTOMERNAME" ON "IMAGEDIAGNOSISLIST" (
   "REVISECUSTOMERNAME" ASC
);

/*==============================================================*/
/* Index: "IX_IDL_UNIONINDEX1"                                  */
/*==============================================================*/
CREATE INDEX "IX_IDL_UNIONINDEX1" ON "IMAGEDIAGNOSISLIST" (
   "PRIORITY" ASC,
   "STAYINSU" ASC
);

/*==============================================================*/
/* Index: "IX_IDL_UNIONINDEX2"                                  */
/*==============================================================*/
CREATE INDEX "IX_IDL_UNIONINDEX2" ON "IMAGEDIAGNOSISLIST" (
   "AGEUNIT" ASC,
   "AGE" ASC
);

/*==============================================================*/
/* Index: "IX_IDL_UNIONINDEX3"                                  */
/*==============================================================*/
CREATE INDEX "IX_IDL_UNIONINDEX3" ON "IMAGEDIAGNOSISLIST" (
   "ISOCCUPY" ASC,
   "SERVICESTATE" ASC
);

/*==============================================================*/
/* Index: "IX_IDL_UNIONINDEX4"                                  */
/*==============================================================*/
CREATE INDEX "IX_IDL_UNIONINDEX4" ON "IMAGEDIAGNOSISLIST" (
   "ISOCCUPY" ASC,
   "PRIORITY" ASC,
   "REQUESTDATE" ASC,
   "ID" ASC
);

/*==============================================================*/
/* Index: "IX_IO_SERVICEID"                                     */
/*==============================================================*/
CREATE INDEX "IX_IO_SERVICEID" ON "IMAGEORDER" (
   "SERVICEID" ASC
);

/*==============================================================*/
/* Index: "IX_IO_IDNUMBER"                                      */
/*==============================================================*/
CREATE INDEX "IX_IO_IDNUMBER" ON "IMAGEORDER" (
   "IDNUMBER" ASC
);

/*==============================================================*/
/* Index: "IX_IO_MEDNO"                                         */
/*==============================================================*/
CREATE INDEX "IX_IO_MEDNO" ON "IMAGEORDER" (
   "MEDNO" ASC
);

/*==============================================================*/
/* Index: "IX_IO_HEALTHCARDNO"                                  */
/*==============================================================*/
CREATE INDEX "IX_IO_HEALTHCARDNO" ON "IMAGEORDER" (
   "HEALTHCARDNO" ASC
);

/*==============================================================*/
/* Index: "IX_IO_PATIENTNAME"                                   */
/*==============================================================*/
CREATE INDEX "IX_IO_PATIENTNAME" ON "IMAGEORDER" (
   "PATIENTNAME" ASC
);

/*==============================================================*/
/* Index: "IX_IO_PHONECODE"                                     */
/*==============================================================*/
CREATE INDEX "IX_IO_PHONECODE" ON "IMAGEORDER" (
   "PHONECODE" ASC
);

/*==============================================================*/
/* Index: "IX_IO_PATIENTID"                                     */
/*==============================================================*/
CREATE INDEX "IX_IO_PATIENTID" ON "IMAGEORDER" (
   "PATIENTID" ASC
);

/*==============================================================*/
/* Index: "IX_IO_ACCESSIONNUMBER"                               */
/*==============================================================*/
CREATE INDEX "IX_IO_ACCESSIONNUMBER" ON "IMAGEORDER" (
   "ACCESSIONNUMBER" ASC
);

/*==============================================================*/
/* Index: "IX_IO_MEDRECNO"                                      */
/*==============================================================*/
CREATE INDEX "IX_IO_MEDRECNO" ON "IMAGEORDER" (
   "MEDRECNO" ASC
);

/*==============================================================*/
/* Index: "IX_IO_EXAMINETYPE"                                   */
/*==============================================================*/
CREATE INDEX "IX_IO_EXAMINETYPE" ON "IMAGEORDER" (
   "EXAMINETYPE" ASC
);

/*==============================================================*/
/* Index: "IX_IO_STAYINSU"                                      */
/*==============================================================*/
CREATE INDEX "IX_IO_STAYINSU" ON "IMAGEORDER" (
   "STAYINSU" ASC
);

/*==============================================================*/
/* Index: "IX_IO_REQUESTHOSPITALCODE"                           */
/*==============================================================*/
CREATE INDEX "IX_IO_REQUESTHOSPITALCODE" ON "IMAGEORDER" (
   "REQUESTHOSPITALCODE" ASC
);

/*==============================================================*/
/* Index: "IX_IO_CUSTOMERGUID"                                  */
/*==============================================================*/
CREATE INDEX "IX_IO_CUSTOMERGUID" ON "IMAGEORDER" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_IO_REQUESTDATE"                                   */
/*==============================================================*/
CREATE INDEX "IX_IO_REQUESTDATE" ON "IMAGEORDER" (
   "REQUESTDATE" ASC
);

/*==============================================================*/
/* Index: "IX_IO_SERVICECENTERID"                               */
/*==============================================================*/
CREATE INDEX "IX_IO_SERVICECENTERID" ON "IMAGEORDER" (
   "SERVICECENTERID" ASC
);

/*==============================================================*/
/* Index: "IX_IO_SERVICESTATE"                                  */
/*==============================================================*/
CREATE INDEX "IX_IO_SERVICESTATE" ON "IMAGEORDER" (
   "SERVICESTATE" ASC
);

/*==============================================================*/
/* Index: "IX_IR_SERVICEID"                                     */
/*==============================================================*/
CREATE INDEX "IX_IR_SERVICEID" ON "IMAGEREQUEST" (
   "SERVICEID" ASC
);

/*==============================================================*/
/* Index: "IX_IR_GPATIENTID"                                    */
/*==============================================================*/
CREATE INDEX "IX_IR_GPATIENTID" ON "IMAGEREQUEST" (
   "GPATIENTID" ASC
);

/*==============================================================*/
/* Index: "IX_IR_PATIENTID"                                     */
/*==============================================================*/
CREATE INDEX "IX_IR_PATIENTID" ON "IMAGEREQUEST" (
   "PATIENTID" ASC
);

/*==============================================================*/
/* Index: "IX_IR_ACCESSIONNUMBER"                               */
/*==============================================================*/
CREATE INDEX "IX_IR_ACCESSIONNUMBER" ON "IMAGEREQUEST" (
   "ACCESSIONNUMBER" ASC
);

/*==============================================================*/
/* Index: "IX_IR_MEDRECNO"                                      */
/*==============================================================*/
CREATE INDEX "IX_IR_MEDRECNO" ON "IMAGEREQUEST" (
   "MEDRECNO" ASC
);

/*==============================================================*/
/* Index: "IX_IR_EXAMINETYPE"                                   */
/*==============================================================*/
CREATE INDEX "IX_IR_EXAMINETYPE" ON "IMAGEREQUEST" (
   "EXAMINETYPE" ASC
);

/*==============================================================*/
/* Index: "IX_IR_STAYINSU"                                      */
/*==============================================================*/
CREATE INDEX "IX_IR_STAYINSU" ON "IMAGEREQUEST" (
   "STAYINSU" ASC
);

/*==============================================================*/
/* Index: "IX_IR_REQUESTHOSPITALCODE"                           */
/*==============================================================*/
CREATE INDEX "IX_IR_REQUESTHOSPITALCODE" ON "IMAGEREQUEST" (
   "REQUESTHOSPITALCODE" ASC
);

/*==============================================================*/
/* Index: "IX_IR_CUSTOMERGUID"                                  */
/*==============================================================*/
CREATE INDEX "IX_IR_CUSTOMERGUID" ON "IMAGEREQUEST" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_IR_REQUESTDATE"                                   */
/*==============================================================*/
CREATE INDEX "IX_IR_REQUESTDATE" ON "IMAGEREQUEST" (
   "REQUESTDATE" ASC
);

/*==============================================================*/
/* Index: "IX_IR_SERVICECENTERID"                               */
/*==============================================================*/
CREATE INDEX "IX_IR_SERVICECENTERID" ON "IMAGEREQUEST" (
   "SERVICECENTERID" ASC
);

/*==============================================================*/
/* Index: "IX_IR_SERVICESTATE"                                  */
/*==============================================================*/
CREATE INDEX "IX_IR_SERVICESTATE" ON "IMAGEREQUEST" (
   "SERVICESTATE" ASC
);

/*==============================================================*/
/* Index: "IX_IR_ISBUFFER"                                      */
/*==============================================================*/
CREATE INDEX "IX_IR_ISBUFFER" ON "IMAGEREQUEST" (
   "ISBUFFER" ASC
);

/*==============================================================*/
/* Index: "IX_IR_ISDOWNLOAD"                                    */
/*==============================================================*/
CREATE INDEX "IX_IR_ISDOWNLOAD" ON "IMAGEREQUEST" (
   "ISDOWNLOAD" ASC
);

/*==============================================================*/
/* Index: "IX_IR_ISPRINT"                                       */
/*==============================================================*/
CREATE INDEX "IX_IR_ISPRINT" ON "IMAGEREQUEST" (
   "ISPRINT" ASC
);

/*==============================================================*/
/* Index: "IX_IR_ISOCCUPY"                                      */
/*==============================================================*/
CREATE INDEX "IX_IR_ISOCCUPY" ON "IMAGEREQUEST" (
   "ISOCCUPY" ASC
);

/*==============================================================*/
/* Index: "IX_IR_ISTOCONSULT"                                   */
/*==============================================================*/
CREATE INDEX "IX_IR_ISTOCONSULT" ON "IMAGEREQUEST" (
   "ISTOCONSULT" ASC
);

/*==============================================================*/
/* Index: "IX_IRR_SERVICEID"                                    */
/*==============================================================*/
CREATE INDEX "IX_IRR_SERVICEID" ON "IMAGEREQUESTREPLY" (
   "SERVICEID" ASC
);

/*==============================================================*/
/* Index: "IX_IRR_WCUSTOMERGUID"                                */
/*==============================================================*/
CREATE INDEX "IX_IRR_WCUSTOMERGUID" ON "IMAGEREQUESTREPLY" (
   "WRITECUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_IRR_WRITETIME"                                    */
/*==============================================================*/
CREATE INDEX "IX_IRR_WRITETIME" ON "IMAGEREQUESTREPLY" (
   "WRITETIME" ASC
);

/*==============================================================*/
/* Index: "IX_IRR_ACUSTOMERGUID"                                */
/*==============================================================*/
CREATE INDEX "IX_IRR_ACUSTOMERGUID" ON "IMAGEREQUESTREPLY" (
   "AUDITCUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_IRR_AUDITTIME"                                    */
/*==============================================================*/
CREATE INDEX "IX_IRR_AUDITTIME" ON "IMAGEREQUESTREPLY" (
   "AUDITTIME" ASC
);

/*==============================================================*/
/* Index: "IX_IRR_RCUSTOMERGUID"                                */
/*==============================================================*/
CREATE INDEX "IX_IRR_RCUSTOMERGUID" ON "IMAGEREQUESTREPLY" (
   "REVISECUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_IRR_REVISETIME"                                   */
/*==============================================================*/
CREATE INDEX "IX_IRR_REVISETIME" ON "IMAGEREQUESTREPLY" (
   "REVISETIME" ASC
);

/*==============================================================*/
/* Index: "IX_IRR_ISMASCULINE"                                  */
/*==============================================================*/
CREATE INDEX "IX_IRR_ISMASCULINE" ON "IMAGEREQUESTREPLY" (
   "ISMASCULINE" ASC
);

/*==============================================================*/
/* Index: "IX_IRR_ISURGENCYREPORT"                              */
/*==============================================================*/
CREATE INDEX "IX_IRR_ISURGENCYREPORT" ON "IMAGEREQUESTREPLY" (
   "ISURGENCYREPORT" ASC
);

/*==============================================================*/
/* Index: "IX_OP_SERVICEID"                                     */
/*==============================================================*/
CREATE INDEX "IX_OP_SERVICEID" ON "OPERATEPROCESS" (
   "SERVICEID" ASC
);

/*==============================================================*/
/* Index: "IX_OP_OPERATETIME"                                   */
/*==============================================================*/
CREATE INDEX "IX_OP_OPERATETIME" ON "OPERATEPROCESS" (
   "OPERATETIME" ASC
);

/*==============================================================*/
/* Index: "IX_OP_EXPERTUID"                                     */
/*==============================================================*/
CREATE INDEX "IX_OP_EXPERTUID" ON "OPERATEPROCESS" (
   "EXPERTUID" ASC
);

/*==============================================================*/
/* Index: "IX_P_GPATIENTID"                                     */
/*==============================================================*/
CREATE INDEX "IX_P_GPATIENTID" ON "PATIENT" (
   "GPATIENTID" ASC
);

/*==============================================================*/
/* Index: "IX_HEALTHCARDNO"                                     */
/*==============================================================*/
CREATE INDEX "IX_HEALTHCARDNO" ON "PATIENT" (
   "HEALTHCARDNO" ASC
);

/*==============================================================*/
/* Index: "IX_PATIENTNAME"                                      */
/*==============================================================*/
CREATE INDEX "IX_PATIENTNAME" ON "PATIENT" (
   "PATIENTNAME" ASC
);

/*==============================================================*/
/* Index: "IX_IDNUMBER"                                         */
/*==============================================================*/
CREATE INDEX "IX_IDNUMBER" ON "PATIENT" (
   "IDNUMBER" ASC
);

/*==============================================================*/
/* Index: "IX_MEDNO"                                            */
/*==============================================================*/
CREATE INDEX "IX_MEDNO" ON "PATIENT" (
   "MEDNO" ASC
);

/*==============================================================*/
/* Index: "IX_P_PHONECODE"                                      */
/*==============================================================*/
CREATE INDEX "IX_P_PHONECODE" ON "PATIENT" (
   "PHONECODE" ASC
);

/*==============================================================*/
/* Index: "IX_PS_SHEDULEDATE"                                   */
/*==============================================================*/
CREATE INDEX "IX_PS_SHEDULEDATE" ON "POSTSCHEDULE" (
   "SHEDULEDATE" ASC
);

/*==============================================================*/
/* Index: "IX_PS_POSITIONID"                                    */
/*==============================================================*/
CREATE INDEX "IX_PS_POSITIONID" ON "POSTSCHEDULE" (
   "POSITIONID" ASC
);

/*==============================================================*/
/* Index: "IX_PS_BEGINTIME"                                     */
/*==============================================================*/
CREATE INDEX "IX_PS_BEGINTIME" ON "POSTSCHEDULE" (
   "BEGINTIME" ASC
);

/*==============================================================*/
/* Index: "IX_PS_ENDTIME"                                       */
/*==============================================================*/
CREATE INDEX "IX_PS_ENDTIME" ON "POSTSCHEDULE" (
   "ENDTIME" ASC
);

/*==============================================================*/
/* Index: "IX_PS_SERVICECENTERID"                               */
/*==============================================================*/
CREATE INDEX "IX_PS_SERVICECENTERID" ON "POSTSCHEDULE" (
   "SERVICECENTERID" ASC
);

/*==============================================================*/
/* Index: "IX_PS_OCODE"                                         */
/*==============================================================*/
CREATE INDEX "IX_PS_OCODE" ON "PRINTERSETTING" (
   "ORGANIZATIONCODE" ASC
);

/*==============================================================*/
/* Index: "IX_PS_PRINTERSTATU"                                  */
/*==============================================================*/
CREATE INDEX "IX_PS_PRINTERSTATU" ON "PRINTERSETTING" (
   "PRINTERSTATU" ASC
);

/*==============================================================*/
/* Index: "IX_PS_OPERATEUID"                                    */
/*==============================================================*/
CREATE INDEX "IX_PS_OPERATEUID" ON "PRINTERSETTING" (
   "OPERATEUID" ASC
);

/*==============================================================*/
/* Index: "IX_QP_INSTITUTIONGUID"                               */
/*==============================================================*/
CREATE INDEX "IX_QP_INSTITUTIONGUID" ON "QUERYPROGRAMME" (
   "INSTITUTIONGUID" ASC
);

/*==============================================================*/
/* Index: "IX_WP_SERVICECENTERID"                               */
/*==============================================================*/
CREATE INDEX "IX_WP_SERVICECENTERID" ON "WORKPOSITION" (
   "SERVICECENTERID" ASC
);

