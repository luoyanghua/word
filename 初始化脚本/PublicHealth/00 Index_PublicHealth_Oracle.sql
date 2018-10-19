/*==============================================================*/
/* DBMS name:      ORACLE Version 11g                           */
/* Created on:     2017/12/26 15:49:16                          */
/*==============================================================*/


/*==============================================================*/
/* Index: "IX_AASK_SERVICEID"                                   */
/*==============================================================*/
CREATE INDEX "IX_AASK_SERVICEID" ON "APPLYASK" (
   "SERVICEID" ASC
);

/*==============================================================*/
/* Index: "IX_AASK_ORDERNO"                                     */
/*==============================================================*/
CREATE INDEX "IX_AASK_ORDERNO" ON "APPLYASK" (
   "ORDERNO" ASC
);

/*==============================================================*/
/* Index: "IX_AASK_IDNUMBER"                                    */
/*==============================================================*/
CREATE INDEX "IX_AASK_IDNUMBER" ON "APPLYASK" (
   "IDNUMBER" ASC
);

/*==============================================================*/
/* Index: "IX_AASK_PATIENTNAME"                                 */
/*==============================================================*/
CREATE INDEX "IX_AASK_PATIENTNAME" ON "APPLYASK" (
   "PATIENTNAME" ASC
);

/*==============================================================*/
/* Index: "IX_AASK_ASKKIND"                                     */
/*==============================================================*/
CREATE INDEX "IX_AASK_ASKKIND" ON "APPLYASK" (
   "ASKKIND" ASC
);

/*==============================================================*/
/* Index: "IX_AASK_ASKMODE"                                     */
/*==============================================================*/
CREATE INDEX "IX_AASK_ASKMODE" ON "APPLYASK" (
   "ASKMODE" ASC
);

/*==============================================================*/
/* Index: "IX_AASK_CUSTOMERGUID"                                */
/*==============================================================*/
CREATE INDEX "IX_AASK_CUSTOMERGUID" ON "APPLYASK" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_AASK_REQUESTPHONE"                                */
/*==============================================================*/
CREATE INDEX "IX_AASK_REQUESTPHONE" ON "APPLYASK" (
   "REQUESTPHONE" ASC
);

/*==============================================================*/
/* Index: "IX_AASK_REQUESTDATE"                                 */
/*==============================================================*/
CREATE INDEX "IX_AASK_REQUESTDATE" ON "APPLYASK" (
   "REQUESTDATE" ASC
);

/*==============================================================*/
/* Index: "IX_AASK_PAYTIME"                                     */
/*==============================================================*/
CREATE INDEX "IX_AASK_PAYTIME" ON "APPLYASK" (
   "PAYTIME" ASC
);

/*==============================================================*/
/* Index: "IX_AASK_SERVICESTATE"                                */
/*==============================================================*/
CREATE INDEX "IX_AASK_SERVICESTATE" ON "APPLYASK" (
   "SERVICESTATE" ASC
);

/*==============================================================*/
/* Index: "IX_AASK_EVALUATIONSTATE"                             */
/*==============================================================*/
CREATE INDEX "IX_AASK_EVALUATIONSTATE" ON "APPLYASK" (
   "EVALUATIONSTATE" ASC
);

/*==============================================================*/
/* Index: "IX_AASK_ISSUPERSERVICE"                              */
/*==============================================================*/
CREATE INDEX "IX_AASK_ISSUPERSERVICE" ON "APPLYASK" (
   "ISSUPERSERVICE" ASC
);

/*==============================================================*/
/* Index: "IX_AASK_ISCUSTOMERSIGN"                              */
/*==============================================================*/
CREATE INDEX "IX_AASK_ISCUSTOMERSIGN" ON "APPLYASK" (
   "ISCUSTOMERSIGN" ASC
);

/*==============================================================*/
/* Index: "IX_AASK_ROLLEXPERTGUID"                              */
/*==============================================================*/
CREATE INDEX "IX_AASK_ROLLEXPERTGUID" ON "APPLYASK" (
   "ROLLEXPERTGUID" ASC
);

/*==============================================================*/
/* Index: "IX_AAT_SERVICEID"                                    */
/*==============================================================*/
CREATE INDEX "IX_AAT_SERVICEID" ON "APPLYASKTIMES" (
   "SERVICEID" ASC
);

/*==============================================================*/
/* Index: "IX_AIR_SERVICEID"                                    */
/*==============================================================*/
CREATE INDEX "IX_AIR_SERVICEID" ON "APPLYIMAGEREVIEW" (
   "SERVICEID" ASC
);

/*==============================================================*/
/* Index: "IX_AIR_ORDERNO"                                      */
/*==============================================================*/
CREATE INDEX "IX_AIR_ORDERNO" ON "APPLYIMAGEREVIEW" (
   "ORDERNO" ASC
);

/*==============================================================*/
/* Index: "IX_AIR_PATIENTNAME"                                  */
/*==============================================================*/
CREATE INDEX "IX_AIR_PATIENTNAME" ON "APPLYIMAGEREVIEW" (
   "PATIENTNAME" ASC
);

/*==============================================================*/
/* Index: "IX_AIR_IDNUMBER"                                     */
/*==============================================================*/
CREATE INDEX "IX_AIR_IDNUMBER" ON "APPLYIMAGEREVIEW" (
   "IDNUMBER" ASC
);

/*==============================================================*/
/* Index: "IX_AIR_REVIEWMODE"                                   */
/*==============================================================*/
CREATE INDEX "IX_AIR_REVIEWMODE" ON "APPLYIMAGEREVIEW" (
   "REVIEWMODE" ASC
);

/*==============================================================*/
/* Index: "IX_AIR_CUSTOMERGUID"                                 */
/*==============================================================*/
CREATE INDEX "IX_AIR_CUSTOMERGUID" ON "APPLYIMAGEREVIEW" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_AIR_REQUESTPHONE"                                 */
/*==============================================================*/
CREATE INDEX "IX_AIR_REQUESTPHONE" ON "APPLYIMAGEREVIEW" (
   "REQUESTPHONE" ASC
);

/*==============================================================*/
/* Index: "IX_AIR_REQUESTDATE"                                  */
/*==============================================================*/
CREATE INDEX "IX_AIR_REQUESTDATE" ON "APPLYIMAGEREVIEW" (
   "REQUESTDATE" ASC
);

/*==============================================================*/
/* Index: "IX_AIR_PAYTIME"                                      */
/*==============================================================*/
CREATE INDEX "IX_AIR_PAYTIME" ON "APPLYIMAGEREVIEW" (
   "PAYTIME" ASC
);

/*==============================================================*/
/* Index: "IX_AIR_SERVICESTATE"                                 */
/*==============================================================*/
CREATE INDEX "IX_AIR_SERVICESTATE" ON "APPLYIMAGEREVIEW" (
   "SERVICESTATE" ASC
);

/*==============================================================*/
/* Index: "IX_AIR_EVALUATIONSTATE"                              */
/*==============================================================*/
CREATE INDEX "IX_AIR_EVALUATIONSTATE" ON "APPLYIMAGEREVIEW" (
   "EVALUATIONSTATE" ASC
);

/*==============================================================*/
/* Index: "IX_AIR_ISSUPERSERVICE"                               */
/*==============================================================*/
CREATE INDEX "IX_AIR_ISSUPERSERVICE" ON "APPLYIMAGEREVIEW" (
   "ISSUPERSERVICE" ASC
);

/*==============================================================*/
/* Index: "IX_AIR_ISCUSTOMERSIGN"                               */
/*==============================================================*/
CREATE INDEX "IX_AIR_ISCUSTOMERSIGN" ON "APPLYIMAGEREVIEW" (
   "ISCUSTOMERSIGN" ASC
);

/*==============================================================*/
/* Index: "IX_AIR_ROLLEXPERTGUID"                               */
/*==============================================================*/
CREATE INDEX "IX_AIR_ROLLEXPERTGUID" ON "APPLYIMAGEREVIEW" (
   "ROLLEXPERTGUID" ASC
);

/*==============================================================*/
/* Index: "IX_AIR_ISSYNC"                                       */
/*==============================================================*/
CREATE INDEX "IX_AIR_ISSYNC" ON "APPLYIMAGEREVIEW" (
   "ISSYNC" ASC
);

/*==============================================================*/
/* Index: "IX_ACF_CUSTOMERGUID"                                 */
/*==============================================================*/
CREATE INDEX "IX_ACF_CUSTOMERGUID" ON "ASKCALLFEE" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_ACF_ASKMODE"                                      */
/*==============================================================*/
CREATE INDEX "IX_ACF_ASKMODE" ON "ASKCALLFEE" (
   "ASKMODE" ASC
);

/*==============================================================*/
/* Index: "IX_ASKFEE_ASKMODE"                                   */
/*==============================================================*/
CREATE INDEX "IX_ASKFEE_ASKMODE" ON "ASKFEE" (
   "ASKMODE" ASC
);

/*==============================================================*/
/* Index: "IX_ASKFEE_EXPERTTITLECODE"                           */
/*==============================================================*/
CREATE INDEX "IX_ASKFEE_EXPERTTITLECODE" ON "ASKFEE" (
   "EXPERTTITLECODE" ASC
);

/*==============================================================*/
/* Index: "IX_ASKKW_SERVICEID"                                  */
/*==============================================================*/
CREATE INDEX "IX_ASKKW_SERVICEID" ON "ASKKEYWORD" (
   "SERVICEID" ASC
);

/*==============================================================*/
/* Index: "IX_ASKP_SERVICEID"                                   */
/*==============================================================*/
CREATE INDEX "IX_ASKP_SERVICEID" ON "ASKPROCESS" (
   "SERVICEID" ASC
);

/*==============================================================*/
/* Index: "IX_ASKP_EVENT"                                       */
/*==============================================================*/
CREATE INDEX "IX_ASKP_EVENT" ON "ASKPROCESS" (
   "EVENT" ASC
);

/*==============================================================*/
/* Index: "IX_ASKP_OCUSTOMERGUID"                               */
/*==============================================================*/
CREATE INDEX "IX_ASKP_OCUSTOMERGUID" ON "ASKPROCESS" (
   "OPERATECUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_ASKR_SERVICEID"                                   */
/*==============================================================*/
CREATE INDEX "IX_ASKR_SERVICEID" ON "ASKREPLY" (
   "SERVICEID" ASC
);

/*==============================================================*/
/* Index: "IX_ASKR_CUSTOMERGUID"                                */
/*==============================================================*/
CREATE INDEX "IX_ASKR_CUSTOMERGUID" ON "ASKREPLY" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_ASKR_KIND"                                        */
/*==============================================================*/
CREATE INDEX "IX_ASKR_KIND" ON "ASKREPLY" (
   "KIND" ASC
);

/*==============================================================*/
/* Index: "IX_ASKR_STATE"                                       */
/*==============================================================*/
CREATE INDEX "IX_ASKR_STATE" ON "ASKREPLY" (
   "STATE" ASC
);

/*==============================================================*/
/* Index: "IX_ASKR_SERVICECENTERID"                             */
/*==============================================================*/
CREATE INDEX "IX_ASKR_SERVICECENTERID" ON "ASKREPLY" (
   "SERVICECENTERID" ASC
);

/*==============================================================*/
/* Index: "IX_ASKR_ASKMODE"                                     */
/*==============================================================*/
CREATE INDEX "IX_ASKR_ASKMODE" ON "ASKREPLY" (
   "ASKMODE" ASC
);

/*==============================================================*/
/* Index: "IX_ASKR_ISSETTLED"                                   */
/*==============================================================*/
CREATE INDEX "IX_ASKR_ISSETTLED" ON "ASKREPLY" (
   "ISSETTLED" ASC
);

/*==============================================================*/
/* Index: "IX_AS_SHEDULEDATE"                                   */
/*==============================================================*/
CREATE INDEX "IX_AS_SHEDULEDATE" ON "ASKSHEDULE" (
   "SHEDULEDATE" ASC
);

/*==============================================================*/
/* Index: "IX_AS_SUBJECTID"                                     */
/*==============================================================*/
CREATE INDEX "IX_AS_SUBJECTID" ON "ASKSHEDULE" (
   "SUBJECTID" ASC
);

/*==============================================================*/
/* Index: "IX_AS_ECUSTOMERGUID"                                 */
/*==============================================================*/
CREATE INDEX "IX_AS_ECUSTOMERGUID" ON "ASKSHEDULE" (
   "EXPERTCUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_AS_BEGINTIME"                                     */
/*==============================================================*/
CREATE INDEX "IX_AS_BEGINTIME" ON "ASKSHEDULE" (
   "SHEDULEBEGINTIME" ASC
);

/*==============================================================*/
/* Index: "IX_AS_ENDTIME"                                       */
/*==============================================================*/
CREATE INDEX "IX_AS_ENDTIME" ON "ASKSHEDULE" (
   "SHEDULEENDTIME" ASC
);

/*==============================================================*/
/* Index: "IX_AS_SERVICEID"                                     */
/*==============================================================*/
CREATE INDEX "IX_AS_SERVICEID" ON "ASKSHEDULE" (
   "SERVICEID" ASC
);

/*==============================================================*/
/* Index: "IX_AS_CUSTOMERGUID"                                  */
/*==============================================================*/
CREATE INDEX "IX_AS_CUSTOMERGUID" ON "ASKSHEDULE" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_CDR_SERVICEID"                                    */
/*==============================================================*/
CREATE INDEX "IX_CDR_SERVICEID" ON "CARRYDATARECORD" (
   "SERVICEID" ASC
);

/*==============================================================*/
/* Index: "IX_DEVA_SERVICEID"                                   */
/*==============================================================*/
CREATE INDEX "IX_DEVA_SERVICEID" ON "DOCTOREVALUATION" (
   "SERVICEID" ASC
);

/*==============================================================*/
/* Index: "IX_DEVA_KIND"                                        */
/*==============================================================*/
CREATE INDEX "IX_DEVA_KIND" ON "DOCTOREVALUATION" (
   "KIND" ASC
);

/*==============================================================*/
/* Index: "IX_DEVA_PCUSTOMERGUID"                               */
/*==============================================================*/
CREATE INDEX "IX_DEVA_PCUSTOMERGUID" ON "DOCTOREVALUATION" (
   "PATIENTCUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_DEVA_CUSTOMERGUID"                                */
/*==============================================================*/
CREATE INDEX "IX_DEVA_CUSTOMERGUID" ON "DOCTOREVALUATION" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_DEVA_EVALUATIONDATE"                              */
/*==============================================================*/
CREATE INDEX "IX_DEVA_EVALUATIONDATE" ON "DOCTOREVALUATION" (
   "EVALUATIONDATE" ASC
);

/*==============================================================*/
/* Index: "IX_DSL_DOCTORCUSTOMERGUID"                           */
/*==============================================================*/
CREATE INDEX "IX_DSL_DOCTORCUSTOMERGUID" ON "DOCTORSERVICELEVEL" (
   "DOCTORCUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_EKW_SERVICEID"                                    */
/*==============================================================*/
CREATE INDEX "IX_EKW_SERVICEID" ON "EVALUATIONKEYWORD" (
   "SERVICEID" ASC
);

/*==============================================================*/
/* Index: "IX_EKW_KIND"                                         */
/*==============================================================*/
CREATE INDEX "IX_EKW_KIND" ON "EVALUATIONKEYWORD" (
   "KIND" ASC
);

/*==============================================================*/
/* Index: "IX_EKW_DCGUID"                                       */
/*==============================================================*/
CREATE INDEX "IX_EKW_DCGUID" ON "EVALUATIONKEYWORD" (
   "DOCTORCUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_ESHEDULE_WEEKDAY"                                 */
/*==============================================================*/
CREATE INDEX "IX_ESHEDULE_WEEKDAY" ON "EXPERTSHEDULE" (
   "WEEKDAY" ASC
);

/*==============================================================*/
/* Index: "IX_ESHEDULE_PARTCODE"                                */
/*==============================================================*/
CREATE INDEX "IX_ESHEDULE_PARTCODE" ON "EXPERTSHEDULE" (
   "PARTCODE" ASC
);

/*==============================================================*/
/* Index: "IX_ESHEDULE_SUBJECTID"                               */
/*==============================================================*/
CREATE INDEX "IX_ESHEDULE_SUBJECTID" ON "EXPERTSHEDULE" (
   "SUBJECTID" ASC
);

/*==============================================================*/
/* Index: "IX_ESHEDULE_CUSTOMERGUID"                            */
/*==============================================================*/
CREATE INDEX "IX_ESHEDULE_CUSTOMERGUID" ON "EXPERTSHEDULE" (
   "EXPERTCUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_ESHEDULE_SERVICECENTERID"                         */
/*==============================================================*/
CREATE INDEX "IX_ESHEDULE_SERVICECENTERID" ON "EXPERTSHEDULE" (
   "SERVICECENTERID" ASC
);

/*==============================================================*/
/* Index: "IX_IRCF_CUSTOMERGUID"                                */
/*==============================================================*/
CREATE INDEX "IX_IRCF_CUSTOMERGUID" ON "IMAGEREVIEWCALLFEE" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_IRCF_EXAMINETYPE"                                 */
/*==============================================================*/
CREATE INDEX "IX_IRCF_EXAMINETYPE" ON "IMAGEREVIEWCALLFEE" (
   "EXAMINETYPE" ASC
);

/*==============================================================*/
/* Index: "IX_IRC_SERVICEID"                                    */
/*==============================================================*/
CREATE INDEX "IX_IRC_SERVICEID" ON "IMAGEREVIEWCHECK" (
   "SERVICEID" ASC
);

/*==============================================================*/
/* Index: "IX_IRC_ACCESSIONNUMBER"                              */
/*==============================================================*/
CREATE INDEX "IX_IRC_ACCESSIONNUMBER" ON "IMAGEREVIEWCHECK" (
   "ACCESSIONNUMBER" ASC
);

/*==============================================================*/
/* Index: "IX_IRC_EXAMINETYPE"                                  */
/*==============================================================*/
CREATE INDEX "IX_IRC_EXAMINETYPE" ON "IMAGEREVIEWCHECK" (
   "EXAMINETYPE" ASC
);

/*==============================================================*/
/* Index: "IX_IRC_PERFORMTIME"                                  */
/*==============================================================*/
CREATE INDEX "IX_IRC_PERFORMTIME" ON "IMAGEREVIEWCHECK" (
   "PERFORMTIME" ASC
);

/*==============================================================*/
/* Index: "IX_IRC_ISMASCULINE"                                  */
/*==============================================================*/
CREATE INDEX "IX_IRC_ISMASCULINE" ON "IMAGEREVIEWCHECK" (
   "ISMASCULINE" ASC
);

/*==============================================================*/
/* Index: "IX_IRC_HOSPITALID"                                   */
/*==============================================================*/
CREATE INDEX "IX_IRC_HOSPITALID" ON "IMAGEREVIEWCHECK" (
   "HOSPITALID" ASC
);

/*==============================================================*/
/* Index: "IX_IRC_ISMAIN"                                       */
/*==============================================================*/
CREATE INDEX "IX_IRC_ISMAIN" ON "IMAGEREVIEWCHECK" (
   "ISMAIN" ASC
);

/*==============================================================*/
/* Index: "IX_IRC_STATE"                                        */
/*==============================================================*/
CREATE INDEX "IX_IRC_STATE" ON "IMAGEREVIEWCHECK" (
   "STATE" ASC
);

/*==============================================================*/
/* Index: "IX_IRF_EXPERTTITLECODE"                              */
/*==============================================================*/
CREATE INDEX "IX_IRF_EXPERTTITLECODE" ON "IMAGEREVIEWFEE" (
   "EXPERTTITLECODE" ASC
);

/*==============================================================*/
/* Index: "IX_IRF_EXAMINETYPE"                                  */
/*==============================================================*/
CREATE INDEX "IX_IRF_EXAMINETYPE" ON "IMAGEREVIEWFEE" (
   "EXAMINETYPE" ASC
);

/*==============================================================*/
/* Index: "IX_IRP_SERVICEID"                                    */
/*==============================================================*/
CREATE INDEX "IX_IRP_SERVICEID" ON "IMAGEREVIEWPROCESS" (
   "SERVICEID" ASC
);

/*==============================================================*/
/* Index: "IX_IRP_EVENT"                                        */
/*==============================================================*/
CREATE INDEX "IX_IRP_EVENT" ON "IMAGEREVIEWPROCESS" (
   "EVENT" ASC
);

/*==============================================================*/
/* Index: "IX_IRP_OCUSTOMERGUID"                                */
/*==============================================================*/
CREATE INDEX "IX_IRP_OCUSTOMERGUID" ON "IMAGEREVIEWPROCESS" (
   "OPERATECUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_IRP_EVENTTIME"                                    */
/*==============================================================*/
CREATE INDEX "IX_IRP_EVENTTIME" ON "IMAGEREVIEWPROCESS" (
   "EVENTTIME" ASC
);

/*==============================================================*/
/* Index: "IX_IRR_SERVICEID"                                    */
/*==============================================================*/
CREATE INDEX "IX_IRR_SERVICEID" ON "IMAGEREVIEWREPLY" (
   "SERVICEID" ASC
);

/*==============================================================*/
/* Index: "IX_IRR_CUSTOMERGUID"                                 */
/*==============================================================*/
CREATE INDEX "IX_IRR_CUSTOMERGUID" ON "IMAGEREVIEWREPLY" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_IRR_KIND"                                         */
/*==============================================================*/
CREATE INDEX "IX_IRR_KIND" ON "IMAGEREVIEWREPLY" (
   "KIND" ASC
);

/*==============================================================*/
/* Index: "IX_IRR_STATE"                                        */
/*==============================================================*/
CREATE INDEX "IX_IRR_STATE" ON "IMAGEREVIEWREPLY" (
   "STATE" ASC
);

/*==============================================================*/
/* Index: "IX_IRR_SERVICECENTERID"                              */
/*==============================================================*/
CREATE INDEX "IX_IRR_SERVICECENTERID" ON "IMAGEREVIEWREPLY" (
   "SERVICECENTERID" ASC
);

/*==============================================================*/
/* Index: "IX_IRR_ISSETTLED"                                    */
/*==============================================================*/
CREATE INDEX "IX_IRR_ISSETTLED" ON "IMAGEREVIEWREPLY" (
   "ISSETTLED" ASC
);

/*==============================================================*/
/* Index: "IX_IRS_SHEDULEDATE"                                  */
/*==============================================================*/
CREATE INDEX "IX_IRS_SHEDULEDATE" ON "IMAGEREVIEWSHEDULE" (
   "SHEDULEDATE" ASC
);

/*==============================================================*/
/* Index: "IX_IRS_SUBJECTID"                                    */
/*==============================================================*/
CREATE INDEX "IX_IRS_SUBJECTID" ON "IMAGEREVIEWSHEDULE" (
   "SUBJECTID" ASC
);

/*==============================================================*/
/* Index: "IX_IRS_ECUSTOMERGUID"                                */
/*==============================================================*/
CREATE INDEX "IX_IRS_ECUSTOMERGUID" ON "IMAGEREVIEWSHEDULE" (
   "EXPERTCUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_IRS_BEGINTIME"                                    */
/*==============================================================*/
CREATE INDEX "IX_IRS_BEGINTIME" ON "IMAGEREVIEWSHEDULE" (
   "SHEDULEBEGINTIME" ASC
);

/*==============================================================*/
/* Index: "IX_IRS_ENDTIME"                                      */
/*==============================================================*/
CREATE INDEX "IX_IRS_ENDTIME" ON "IMAGEREVIEWSHEDULE" (
   "SHEDULEENDTIME" ASC
);

/*==============================================================*/
/* Index: "IX_IRS_SERVICEID"                                    */
/*==============================================================*/
CREATE INDEX "IX_IRS_SERVICEID" ON "IMAGEREVIEWSHEDULE" (
   "SERVICEID" ASC
);

/*==============================================================*/
/* Index: "IX_IRS_CUSTOMERGUID"                                 */
/*==============================================================*/
CREATE INDEX "IX_IRS_CUSTOMERGUID" ON "IMAGEREVIEWSHEDULE" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_NCLINIC_SERVICEID"                                */
/*==============================================================*/
CREATE INDEX "IX_NCLINIC_SERVICEID" ON "NETCLINIC" (
   "SERVICEID" ASC
);

/*==============================================================*/
/* Index: "IX_NCLINIC_CUSTOMERGUID"                             */
/*==============================================================*/
CREATE INDEX "IX_NCLINIC_CUSTOMERGUID" ON "NETCLINIC" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_NCLINIC_REQUESTDATE"                              */
/*==============================================================*/
CREATE INDEX "IX_NCLINIC_REQUESTDATE" ON "NETCLINIC" (
   "REQUESTDATE" ASC
);

/*==============================================================*/
/* Index: "IX_NCLINIC_ORDERNO"                                  */
/*==============================================================*/
CREATE INDEX "IX_NCLINIC_ORDERNO" ON "NETCLINIC" (
   "ORDERNO" ASC
);

/*==============================================================*/
/* Index: "IX_NCLINIC_EXPERTCUSTOMERGUID"                       */
/*==============================================================*/
CREATE INDEX "IX_NCLINIC_EXPERTCUSTOMERGUID" ON "NETCLINIC" (
   "EXPERTCUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_NCLINIC_SERVICECENTERID"                          */
/*==============================================================*/
CREATE INDEX "IX_NCLINIC_SERVICECENTERID" ON "NETCLINIC" (
   "SERVICECENTERID" ASC
);

/*==============================================================*/
/* Index: "IX_NCLINIC_SERVICESTATE"                             */
/*==============================================================*/
CREATE INDEX "IX_NCLINIC_SERVICESTATE" ON "NETCLINIC" (
   "SERVICESTATE" ASC
);

/*==============================================================*/
/* Index: "IX_NCKW_SERVICEID"                                   */
/*==============================================================*/
CREATE INDEX "IX_NCKW_SERVICEID" ON "NETCLINICKEYWORD" (
   "SERVICEID" ASC
);

/*==============================================================*/
/* Index: "IX_NCP_SERVICEID"                                    */
/*==============================================================*/
CREATE INDEX "IX_NCP_SERVICEID" ON "NETCLINICPROCESS" (
   "SERVICEID" ASC
);

/*==============================================================*/
/* Index: "IX_NCP_EVENT"                                        */
/*==============================================================*/
CREATE INDEX "IX_NCP_EVENT" ON "NETCLINICPROCESS" (
   "EVENT" ASC
);

/*==============================================================*/
/* Index: "IX_NCP_OCUSTOMERGUID"                                */
/*==============================================================*/
CREATE INDEX "IX_NCP_OCUSTOMERGUID" ON "NETCLINICPROCESS" (
   "OPERATECUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_NCP_EVENTTIME"                                    */
/*==============================================================*/
CREATE INDEX "IX_NCP_EVENTTIME" ON "NETCLINICPROCESS" (
   "EVENTTIME" ASC
);

/*==============================================================*/
/* Index: "IX_PE_SERVICEID"                                     */
/*==============================================================*/
CREATE INDEX "IX_PE_SERVICEID" ON "PATIENTEVALUATION" (
   "SERVICEID" ASC
);

/*==============================================================*/
/* Index: "IX_PE_KIND"                                          */
/*==============================================================*/
CREATE INDEX "IX_PE_KIND" ON "PATIENTEVALUATION" (
   "KIND" ASC
);

/*==============================================================*/
/* Index: "IX_PE_DCUSTOMERGUID"                                 */
/*==============================================================*/
CREATE INDEX "IX_PE_DCUSTOMERGUID" ON "PATIENTEVALUATION" (
   "DOCTORCUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_PE_CUSTOMERGUID"                                  */
/*==============================================================*/
CREATE INDEX "IX_PE_CUSTOMERGUID" ON "PATIENTEVALUATION" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_PE_EVALUATIONDATE"                                */
/*==============================================================*/
CREATE INDEX "IX_PE_EVALUATIONDATE" ON "PATIENTEVALUATION" (
   "EVALUATIONDATE" ASC
);

/*==============================================================*/
/* Index: "IX_PHM_BUSINESSID"                                   */
/*==============================================================*/
CREATE INDEX "IX_PHM_BUSINESSID" ON "PUBLICHEALTHMEDIA" (
   "BUSINESSID" ASC
);

/*==============================================================*/
/* Index: "IX_PHM_BUSINESSKIND"                                 */
/*==============================================================*/
CREATE INDEX "IX_PHM_BUSINESSKIND" ON "PUBLICHEALTHMEDIA" (
   "BUSINESSKIND" ASC
);

/*==============================================================*/
/* Index: "IX_PHM_SCENE"                                        */
/*==============================================================*/
CREATE INDEX "IX_PHM_SCENE" ON "PUBLICHEALTHMEDIA" (
   "SCENE" ASC
);

/*==============================================================*/
/* Index: "IX_RKW_SERVICEID"                                    */
/*==============================================================*/
CREATE INDEX "IX_RKW_SERVICEID" ON "REVIEWKEYWORD" (
   "SERVICEID" ASC
);

/*==============================================================*/
/* Index: "IX_SSUBJECT_CENTERID"                                */
/*==============================================================*/
CREATE INDEX "IX_SSUBJECT_CENTERID" ON "SHEDULESUBJECT" (
   "SERVICECENTERID" ASC
);

/*==============================================================*/
/* Index: "IX_SSO_SUBJECTID"                                    */
/*==============================================================*/
CREATE INDEX "IX_SSO_SUBJECTID" ON "SHEDULESUBJECTOFFICE" (
   "SUBJECTID" ASC
);

/*==============================================================*/
/* Index: "IX_SEXPERT_SUBJECTID"                                */
/*==============================================================*/
CREATE INDEX "IX_SEXPERT_SUBJECTID" ON "SUBJECTEXPERT" (
   "SUBJECTID" ASC
);

/*==============================================================*/
/* Index: "IX_SEXPERT_CUSTOMERGUID"                             */
/*==============================================================*/
CREATE INDEX "IX_SEXPERT_CUSTOMERGUID" ON "SUBJECTEXPERT" (
   "EXPERTCUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_WR_SERVICEID"                                     */
/*==============================================================*/
CREATE INDEX "IX_WR_SERVICEID" ON "WORDRECORD" (
   "SERVICEID" ASC
);

/*==============================================================*/
/* Index: "IX_WR_SERVICEKIND"                                   */
/*==============================================================*/
CREATE INDEX "IX_WR_SERVICEKIND" ON "WORDRECORD" (
   "SERVICEKIND" ASC
);

/*==============================================================*/
/* Index: "IX_WR_TYPE"                                          */
/*==============================================================*/
CREATE INDEX "IX_WR_TYPE" ON "WORDRECORD" (
   "TYPE" ASC
);

/*==============================================================*/
/* Index: "IX_WR_KIND"                                          */
/*==============================================================*/
CREATE INDEX "IX_WR_KIND" ON "WORDRECORD" (
   "KIND" ASC
);

/*==============================================================*/
/* Index: "IX_WR_ISREAD"                                        */
/*==============================================================*/
CREATE INDEX "IX_WR_ISREAD" ON "WORDRECORD" (
   "ISREAD" ASC
);

