/*==============================================================*/
/* DBMS name:      ORACLE Version 11g                           */
/* Created on:     2017/10/11 14:21:57                          */
/*==============================================================*/


/*==============================================================*/
/* Index: "IX_AC_SERVICEID"                                     */
/*==============================================================*/
CREATE INDEX "IX_AC_SERVICEID" ON "APPLYCONSULT" (
   "SERVICEID" ASC
);

/*==============================================================*/
/* Index: "IX_AC_SYSTEMMEDNO"                                   */
/*==============================================================*/
CREATE INDEX "IX_AC_SYSTEMMEDNO" ON "APPLYCONSULT" (
   "SYSTEMMEDNO" ASC
);

/*==============================================================*/
/* Index: "IX_AC_IDNUMBER"                                      */
/*==============================================================*/
CREATE INDEX "IX_AC_IDNUMBER" ON "APPLYCONSULT" (
   "IDNUMBER" ASC
);

/*==============================================================*/
/* Index: "IX_AC_HEALTHCARDNUMBER"                              */
/*==============================================================*/
CREATE INDEX "IX_AC_HEALTHCARDNUMBER" ON "APPLYCONSULT" (
   "HEALTHCARDNUMBER" ASC
);

/*==============================================================*/
/* Index: "IX_AC_EXAMINEDATE"                                   */
/*==============================================================*/
CREATE INDEX "IX_AC_EXAMINEDATE" ON "APPLYCONSULT" (
   "EXAMINEDATE" ASC
);

/*==============================================================*/
/* Index: "IX_AC_REQUESTOFFICEID"                               */
/*==============================================================*/
CREATE INDEX "IX_AC_REQUESTOFFICEID" ON "APPLYCONSULT" (
   "REQUESTOFFICEID" ASC
);

/*==============================================================*/
/* Index: "IX_AC_CUSTOMERGUID"                                  */
/*==============================================================*/
CREATE INDEX "IX_AC_CUSTOMERGUID" ON "APPLYCONSULT" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_AC_REQUESTDATE"                                   */
/*==============================================================*/
CREATE INDEX "IX_AC_REQUESTDATE" ON "APPLYCONSULT" (
   "REQUESTDATE" ASC
);

/*==============================================================*/
/* Index: "IX_AC_SERVICECENTERID"                               */
/*==============================================================*/
CREATE INDEX "IX_AC_SERVICECENTERID" ON "APPLYCONSULT" (
   "SERVICECENTERID" ASC
);

/*==============================================================*/
/* Index: "IX_AC_CONSULTOFFICEID"                               */
/*==============================================================*/
CREATE INDEX "IX_AC_CONSULTOFFICEID" ON "APPLYCONSULT" (
   "CONSULTOFFICEID" ASC
);

/*==============================================================*/
/* Index: "IX_AC_CONSULTKINDCODE"                               */
/*==============================================================*/
CREATE INDEX "IX_AC_CONSULTKINDCODE" ON "APPLYCONSULT" (
   "CONSULTKINDCODE" ASC
);

/*==============================================================*/
/* Index: "IX_AC_CONSULTCLASSCODE"                              */
/*==============================================================*/
CREATE INDEX "IX_AC_CONSULTCLASSCODE" ON "APPLYCONSULT" (
   "CONSULTCLASSCODE" ASC
);

/*==============================================================*/
/* Index: "IX_AC_KEYWORD"                                       */
/*==============================================================*/
CREATE INDEX "IX_AC_KEYWORD" ON "APPLYCONSULT" (
   "KEYWORD" ASC
);

/*==============================================================*/
/* Index: "IX_AC_SERVICESTATE"                                  */
/*==============================================================*/
CREATE INDEX "IX_AC_SERVICESTATE" ON "APPLYCONSULT" (
   "SERVICESTATE" ASC
);

/*==============================================================*/
/* Index: "IX_AC_TEACHID"                                       */
/*==============================================================*/
CREATE INDEX "IX_AC_TEACHID" ON "APPLYCONSULT" (
   "TEACHID" ASC
);

/*==============================================================*/
/* Index: "IX_ACONSULTP_SERVICEID"                              */
/*==============================================================*/
CREATE INDEX "IX_ACONSULTP_SERVICEID" ON "APPLYCONSULTPREPARE" (
   "SERVICEID" ASC
);

/*==============================================================*/
/* Index: "IX_ACONSULTP_USERNAME"                               */
/*==============================================================*/
CREATE INDEX "IX_ACONSULTP_USERNAME" ON "APPLYCONSULTPREPARE" (
   "USERNAME" ASC
);

/*==============================================================*/
/* Index: "IX_ACONSULTP_ISFINISH"                               */
/*==============================================================*/
CREATE INDEX "IX_ACONSULTP_ISFINISH" ON "APPLYCONSULTPREPARE" (
   "ISFINISH" ASC
);

/*==============================================================*/
/* Index: "IX_CONSULTCENTER_SERVICEID"                          */
/*==============================================================*/
CREATE INDEX "IX_CONSULTCENTER_SERVICEID" ON "CONSULTCENTER" (
   "SERVICEID" ASC
);

/*==============================================================*/
/* Index: "IX_CONSULTDA_SERVICEID"                              */
/*==============================================================*/
CREATE INDEX "IX_CONSULTDA_SERVICEID" ON "CONSULTDATAAUDIT" (
   "SERVICEID" ASC
);

/*==============================================================*/
/* Index: "IX_CONSULTFEE_FEEMODE"                               */
/*==============================================================*/
CREATE INDEX "IX_CONSULTFEE_FEEMODE" ON "CONSULTFEE" (
   "FEEMODE" ASC
);

/*==============================================================*/
/* Index: "IX_CONSULTFEE_TITLECODE"                             */
/*==============================================================*/
CREATE INDEX "IX_CONSULTFEE_TITLECODE" ON "CONSULTFEE" (
   "EXPERTTITLECODE" ASC
);

/*==============================================================*/
/* Index: "IX_CONSULTFEE_KINDCODE"                              */
/*==============================================================*/
CREATE INDEX "IX_CONSULTFEE_KINDCODE" ON "CONSULTFEE" (
   "CONSULTKINDCODE" ASC
);

/*==============================================================*/
/* Index: "IX_CONSULTFEE_CLASSCODE"                             */
/*==============================================================*/
CREATE INDEX "IX_CONSULTFEE_CLASSCODE" ON "CONSULTFEE" (
   "CONSULTCLASSCODE" ASC
);

/*==============================================================*/
/* Index: "IX_CONSULTFEE_SERVICEID"                             */
/*==============================================================*/
CREATE INDEX "IX_CONSULTFEE_SERVICEID" ON "CONSULTFEE" (
   "SERVICECENTERID" ASC
);

/*==============================================================*/
/* Index: "IX_CFEEDETAIL_SERVICEID"                             */
/*==============================================================*/
CREATE INDEX "IX_CFEEDETAIL_SERVICEID" ON "CONSULTFEEDETAIL" (
   "SERVICECENTERID" ASC
);

/*==============================================================*/
/* Index: "IX_CIMAGE_SERVICEID"                                 */
/*==============================================================*/
CREATE INDEX "IX_CIMAGE_SERVICEID" ON "CONSULTIMAGE" (
   "SERVICEID" ASC
);

/*==============================================================*/
/* Index: "IX_CONSULTKEYWORD_SERVICEID"                         */
/*==============================================================*/
CREATE INDEX "IX_CONSULTKEYWORD_SERVICEID" ON "CONSULTKEYWORD" (
   "SERVICEID" ASC
);

/*==============================================================*/
/* Index: "IX_CONSULTP_SERVICEID"                               */
/*==============================================================*/
CREATE INDEX "IX_CONSULTP_SERVICEID" ON "CONSULTPROCESS" (
   "SERVICEID" ASC
);

/*==============================================================*/
/* Index: "IX_DEVALUATION_SERVICEID"                            */
/*==============================================================*/
CREATE INDEX "IX_DEVALUATION_SERVICEID" ON "DIAGNOSISEVALUATION" (
   "SERVICEID" ASC
);

/*==============================================================*/
/* Index: "IX_DEVALUATION_CUSTOMERGUID"                         */
/*==============================================================*/
CREATE INDEX "IX_DEVALUATION_CUSTOMERGUID" ON "DIAGNOSISEVALUATION" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_DEVALUATION_ADVICEDATE"                           */
/*==============================================================*/
CREATE INDEX "IX_DEVALUATION_ADVICEDATE" ON "DIAGNOSISEVALUATION" (
   "ADVICEDATE" ASC
);

/*==============================================================*/
/* Index: "IX_DREPLY_SERVICEID"                                 */
/*==============================================================*/
CREATE INDEX "IX_DREPLY_SERVICEID" ON "DIAGNOSISREPLY" (
   "SERVICEID" ASC
);

/*==============================================================*/
/* Index: "IX_DREPLY_CUSTOMERGUID"                              */
/*==============================================================*/
CREATE INDEX "IX_DREPLY_CUSTOMERGUID" ON "DIAGNOSISREPLY" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_DREPLY_STATE"                                     */
/*==============================================================*/
CREATE INDEX "IX_DREPLY_STATE" ON "DIAGNOSISREPLY" (
   "STATE" ASC
);

/*==============================================================*/
/* Index: "IX_DREPLY_SERVICECENTERID"                           */
/*==============================================================*/
CREATE INDEX "IX_DREPLY_SERVICECENTERID" ON "DIAGNOSISREPLY" (
   "SERVICECENTERID" ASC
);

/*==============================================================*/
/* Index: "IX_EXAMINEDESC_EXAMINETYPE"                          */
/*==============================================================*/
CREATE INDEX "IX_EXAMINEDESC_EXAMINETYPE" ON "EXAMINEDESC" (
   "EXAMINETYPE" ASC
);

/*==============================================================*/
/* Index: "IX_EEVALUATION_SERVICEID"                            */
/*==============================================================*/
CREATE INDEX "IX_EEVALUATION_SERVICEID" ON "EXPERTEVALUATION" (
   "SERVICEID" ASC
);

/*==============================================================*/
/* Index: "IX_EEVALUATION_EXPERTRGUID"                          */
/*==============================================================*/
CREATE INDEX "IX_EEVALUATION_EXPERTRGUID" ON "EXPERTEVALUATION" (
   "EXPERTGUID" ASC
);

/*==============================================================*/
/* Index: "IX_EEVALUATION_CUSTOMERGUID"                         */
/*==============================================================*/
CREATE INDEX "IX_EEVALUATION_CUSTOMERGUID" ON "EXPERTEVALUATION" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_MCONSULTFEE_KINDCODE"                             */
/*==============================================================*/
CREATE INDEX "IX_MCONSULTFEE_KINDCODE" ON "MEDICALCONSULTFEE" (
   "CONSULTKINDCODE" ASC
);

/*==============================================================*/
/* Index: "IX_MCONSULTFEE_EXAMINETYPE"                          */
/*==============================================================*/
CREATE INDEX "IX_MCONSULTFEE_EXAMINETYPE" ON "MEDICALCONSULTFEE" (
   "EXAMINETYPE" ASC
);

/*==============================================================*/
/* Index: "IX_MCONSULTFEE_SERVICEID"                            */
/*==============================================================*/
CREATE INDEX "IX_MCONSULTFEE_SERVICEID" ON "MEDICALCONSULTFEE" (
   "SERVICECENTERID" ASC
);

