/*==============================================================*/
/* DBMS name:      ORACLE Version 11g                           */
/* Created on:     2018/3/15 10:33:34                           */
/*==============================================================*/


/*==============================================================*/
/* Index: "IX_CJBMC_SERVICEID"                                  */
/*==============================================================*/
CREATE INDEX "IX_CJBMC_SERVICEID" ON "CLINICJBMC" (
   "SERVICEID" ASC
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
/* Index: "IX_RCLINIC_SERVICEID"                                */
/*==============================================================*/
CREATE INDEX "IX_RCLINIC_SERVICEID" ON "REMOTECLINIC" (
   "SERVICEID" ASC
);

/*==============================================================*/
/* Index: "IX_RCLINIC_CUSTOMERGUID"                             */
/*==============================================================*/
CREATE INDEX "IX_RCLINIC_CUSTOMERGUID" ON "REMOTECLINIC" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_RCLINIC_EXPERTCUSTOMERGUID"                       */
/*==============================================================*/
CREATE INDEX "IX_RCLINIC_EXPERTCUSTOMERGUID" ON "REMOTECLINIC" (
   "EXPERTCUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_RCLINIC_SERVICECENTERID"                          */
/*==============================================================*/
CREATE INDEX "IX_RCLINIC_SERVICECENTERID" ON "REMOTECLINIC" (
   "SERVICECENTERID" ASC
);

/*==============================================================*/
/* Index: "IX_RCLINIC_SERVICESTATE"                             */
/*==============================================================*/
CREATE INDEX "IX_RCLINIC_SERVICESTATE" ON "REMOTECLINIC" (
   "SERVICESTATE" ASC
);

/*==============================================================*/
/* Index: "IX_RCP_SERVICEID"                                    */
/*==============================================================*/
CREATE INDEX "IX_RCP_SERVICEID" ON "REMOTECLINICPREPARE" (
   "SERVICEID" ASC
);

/*==============================================================*/
/* Index: "IX_RCP_SERVICEID"                                    */
/*==============================================================*/
CREATE INDEX "IX_RCP_SERVICEID" ON "REMOTECLINICPROCESS" (
   "SERVICEID" ASC
);

/*==============================================================*/
/* Index: "IX_RCR_SERVICEID"                                    */
/*==============================================================*/
CREATE INDEX "IX_RCR_SERVICEID" ON "REMOTECLINICREQUEST" (
   "SERVICEID" ASC
);

/*==============================================================*/
/* Index: "IX_RCR_CUSTOMERGUID"                                 */
/*==============================================================*/
CREATE INDEX "IX_RCR_CUSTOMERGUID" ON "REMOTECLINICREQUEST" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_RCR_STATE"                                        */
/*==============================================================*/
CREATE INDEX "IX_RCR_STATE" ON "REMOTECLINICREQUEST" (
   "STATE" ASC
);

/*==============================================================*/
/* Index: "IX_RCLINICS_SHEDULEDATE"                             */
/*==============================================================*/
CREATE INDEX "IX_RCLINICS_SHEDULEDATE" ON "REMOTECLINICSHEDULE" (
   "SHEDULEDATE" ASC
);

/*==============================================================*/
/* Index: "IX_RCLINICS_SUBJECTID"                               */
/*==============================================================*/
CREATE INDEX "IX_RCLINICS_SUBJECTID" ON "REMOTECLINICSHEDULE" (
   "SUBJECTID" ASC
);

/*==============================================================*/
/* Index: "IX_RCLINICS_ECUSTOMERGUID"                           */
/*==============================================================*/
CREATE INDEX "IX_RCLINICS_ECUSTOMERGUID" ON "REMOTECLINICSHEDULE" (
   "EXPERTCUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_RCLINICS_ORDER"                                   */
/*==============================================================*/
CREATE INDEX "IX_RCLINICS_ORDER" ON "REMOTECLINICSHEDULE" (
   "ORDER" ASC
);

/*==============================================================*/
/* Index: "IX_RCLINICS_BEGINTIME"                               */
/*==============================================================*/
CREATE INDEX "IX_RCLINICS_BEGINTIME" ON "REMOTECLINICSHEDULE" (
   "SHEDULEBEGINTIME" ASC
);

/*==============================================================*/
/* Index: "IX_RCLINICS_ENDTIME"                                 */
/*==============================================================*/
CREATE INDEX "IX_RCLINICS_ENDTIME" ON "REMOTECLINICSHEDULE" (
   "SHEDULEENDTIME" ASC
);

/*==============================================================*/
/* Index: "IX_RCLINICS_SERVICEID"                               */
/*==============================================================*/
CREATE INDEX "IX_RCLINICS_SERVICEID" ON "REMOTECLINICSHEDULE" (
   "SERVICEID" ASC
);

/*==============================================================*/
/* Index: "IX_RCLINICS_CUSTOMERGUID"                            */
/*==============================================================*/
CREATE INDEX "IX_RCLINICS_CUSTOMERGUID" ON "REMOTECLINICSHEDULE" (
   "CUSTOMERGUID" ASC
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

