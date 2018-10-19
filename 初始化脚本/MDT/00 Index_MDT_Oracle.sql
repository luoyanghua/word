/*==============================================================*/
/* DBMS name:      ORACLE Version 11g                           */
/* Created on:     2017/10/11 15:22:03                          */
/*==============================================================*/


/*==============================================================*/
/* Index: "IX_AMDT_SERVICEID"                                   */
/*==============================================================*/
CREATE INDEX "IX_AMDT_SERVICEID" ON "APPLYMDT" (
   "SERVICEID" ASC
);

/*==============================================================*/
/* Index: "IX_AMDT_SYSTEMMEDNO"                                 */
/*==============================================================*/
CREATE INDEX "IX_AMDT_SYSTEMMEDNO" ON "APPLYMDT" (
   "SYSTEMMEDNO" ASC
);

/*==============================================================*/
/* Index: "IX_AMDT_IDNUMBER"                                    */
/*==============================================================*/
CREATE INDEX "IX_AMDT_IDNUMBER" ON "APPLYMDT" (
   "IDNUMBER" ASC
);

/*==============================================================*/
/* Index: "IX_AMDT_HEALTHCARDNUMBER"                            */
/*==============================================================*/
CREATE INDEX "IX_AMDT_HEALTHCARDNUMBER" ON "APPLYMDT" (
   "HEALTHCARDNUMBER" ASC
);

/*==============================================================*/
/* Index: "IX_AMDT_REQUESTOFFICEID"                             */
/*==============================================================*/
CREATE INDEX "IX_AMDT_REQUESTOFFICEID" ON "APPLYMDT" (
   "REQUESTOFFICEID" ASC
);

/*==============================================================*/
/* Index: "IX_AMDT_CUSTOMERGUID"                                */
/*==============================================================*/
CREATE INDEX "IX_AMDT_CUSTOMERGUID" ON "APPLYMDT" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_AMDT_REQUESTDATE"                                 */
/*==============================================================*/
CREATE INDEX "IX_AMDT_REQUESTDATE" ON "APPLYMDT" (
   "REQUESTDATE" ASC
);

/*==============================================================*/
/* Index: "IX_AMDT_SERVICECENTERID"                             */
/*==============================================================*/
CREATE INDEX "IX_AMDT_SERVICECENTERID" ON "APPLYMDT" (
   "SERVICECENTERID" ASC
);

/*==============================================================*/
/* Index: "IX_AMDT_CONSULTKINDCODE"                             */
/*==============================================================*/
CREATE INDEX "IX_AMDT_CONSULTKINDCODE" ON "APPLYMDT" (
   "CONSULTKINDCODE" ASC
);

/*==============================================================*/
/* Index: "IX_AMDT_CONSULTCLASSCODE"                            */
/*==============================================================*/
CREATE INDEX "IX_AMDT_CONSULTCLASSCODE" ON "APPLYMDT" (
   "CONSULTCLASSCODE" ASC
);

/*==============================================================*/
/* Index: "IX_AMDT_KEYWORD"                                     */
/*==============================================================*/
CREATE INDEX "IX_AMDT_KEYWORD" ON "APPLYMDT" (
   "KEYWORD" ASC
);

/*==============================================================*/
/* Index: "IX_AMDT_SERVICESTATE"                                */
/*==============================================================*/
CREATE INDEX "IX_AMDT_SERVICESTATE" ON "APPLYMDT" (
   "SERVICESTATE" ASC
);

/*==============================================================*/
/* Index: "IX_MDTCENTER_SERVICEID"                              */
/*==============================================================*/
CREATE INDEX "IX_MDTCENTER_SERVICEID" ON "MDTCENTER" (
   "SERVICEID" ASC
);

/*==============================================================*/
/* Index: "IX_MDTC_SERVICEID"                                   */
/*==============================================================*/
CREATE INDEX "IX_MDTC_SERVICEID" ON "MDTCUSTOMER" (
   "SERVICEID" ASC
);

/*==============================================================*/
/* Index: "IX_MDTC_SERVICECENTERID"                             */
/*==============================================================*/
CREATE INDEX "IX_MDTC_SERVICECENTERID" ON "MDTCUSTOMER" (
   "SERVICECENTERID" ASC
);

/*==============================================================*/
/* Index: "IX_MDTC_CUSTOMERGUID"                                */
/*==============================================================*/
CREATE INDEX "IX_MDTC_CUSTOMERGUID" ON "MDTCUSTOMER" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_MDTDR_SERVICEID"                                  */
/*==============================================================*/
CREATE INDEX "IX_MDTDR_SERVICEID" ON "MDTDIAGNOSISREPLY" (
   "SERVICEID" ASC
);

/*==============================================================*/
/* Index: "IX_MDTDR_CUSTOMERGUID"                               */
/*==============================================================*/
CREATE INDEX "IX_MDTDR_CUSTOMERGUID" ON "MDTDIAGNOSISREPLY" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_MDTDR_STATE"                                      */
/*==============================================================*/
CREATE INDEX "IX_MDTDR_STATE" ON "MDTDIAGNOSISREPLY" (
   "STATE" ASC
);

/*==============================================================*/
/* Index: "IX_MDTDR_SERVICECENTERID"                            */
/*==============================================================*/
CREATE INDEX "IX_MDTDR_SERVICECENTERID" ON "MDTDIAGNOSISREPLY" (
   "SERVICECENTERID" ASC
);

/*==============================================================*/
/* Index: "IX_MDTP_SERVICEID"                                   */
/*==============================================================*/
CREATE INDEX "IX_MDTP_SERVICEID" ON "MDTPROCESS" (
   "SERVICEID" ASC
);

/*==============================================================*/
/* Index: "IX_NIM_SERVICEID"                                    */
/*==============================================================*/
CREATE INDEX "IX_NIM_SERVICEID" ON "NOIMAGEMARK" (
   "SERVICEID" ASC
);

