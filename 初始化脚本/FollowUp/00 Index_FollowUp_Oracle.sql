/*==============================================================*/
/* DBMS name:      ORACLE Version 11g                           */
/* Created on:     2017/12/8 10:57:14                           */
/*==============================================================*/


/*==============================================================*/
/* Index: "IX_FUR_FOLLOWUPGUID"                                 */
/*==============================================================*/
CREATE INDEX "IX_FUR_FOLLOWUPGUID" ON "FOLLOWUPRECORD" (
   "FOLLOWUPGUID" ASC
);

/*==============================================================*/
/* Index: "IX_FUR_RECORDCUSTOMERGUID"                           */
/*==============================================================*/
CREATE INDEX "IX_FUR_RECORDCUSTOMERGUID" ON "FOLLOWUPRECORD" (
   "RECORDCUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_FUR_RECORDTIME"                                   */
/*==============================================================*/
CREATE INDEX "IX_FUR_RECORDTIME" ON "FOLLOWUPRECORD" (
   "RECORDTIME" ASC
);

/*==============================================================*/
/* Index: "IX_FUT_FOLLOWUPGUID"                                 */
/*==============================================================*/
CREATE INDEX "IX_FUT_FOLLOWUPGUID" ON "FOLLOWUPTASK" (
   "FOLLOWUPGUID" ASC
);

/*==============================================================*/
/* Index: "IX_FUT_CASERANGECODE"                                */
/*==============================================================*/
CREATE INDEX "IX_FUT_CASERANGECODE" ON "FOLLOWUPTASK" (
   "CASERANGECODE" ASC
);

/*==============================================================*/
/* Index: "IX_FUT_CASETYPECODE"                                 */
/*==============================================================*/
CREATE INDEX "IX_FUT_CASETYPECODE" ON "FOLLOWUPTASK" (
   "CASETYPECODE" ASC
);

/*==============================================================*/
/* Index: "IX_FUT_DISEASECODE"                                  */
/*==============================================================*/
CREATE INDEX "IX_FUT_DISEASECODE" ON "FOLLOWUPTASK" (
   "DISEASECODE" ASC
);

/*==============================================================*/
/* Index: "IX_FUT_MODECODE"                                     */
/*==============================================================*/
CREATE INDEX "IX_FUT_MODECODE" ON "FOLLOWUPTASK" (
   "MODECODE" ASC
);

/*==============================================================*/
/* Index: "IX_FUT_FOLLOWCUSTOMERGUID"                           */
/*==============================================================*/
CREATE INDEX "IX_FUT_FOLLOWCUSTOMERGUID" ON "FOLLOWUPTASK" (
   "FOLLOWCUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_FUT_CREATECUSTOMERGUID"                           */
/*==============================================================*/
CREATE INDEX "IX_FUT_CREATECUSTOMERGUID" ON "FOLLOWUPTASK" (
   "CREATECUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_FUT_SUMMARYCUSTOMERGUID"                          */
/*==============================================================*/
CREATE INDEX "IX_FUT_SUMMARYCUSTOMERGUID" ON "FOLLOWUPTASK" (
   "SUMMARYCUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_FUT_FIRSTDATE"                                    */
/*==============================================================*/
CREATE INDEX "IX_FUT_FIRSTDATE" ON "FOLLOWUPTASK" (
   "FIRSTDATE" ASC
);

/*==============================================================*/
/* Index: "IX_FUT_CREATETIME"                                   */
/*==============================================================*/
CREATE INDEX "IX_FUT_CREATETIME" ON "FOLLOWUPTASK" (
   "CREATETIME" ASC
);

/*==============================================================*/
/* Index: "IX_FUT_ISFIT"                                        */
/*==============================================================*/
CREATE INDEX "IX_FUT_ISFIT" ON "FOLLOWUPTASK" (
   "ISFIT" ASC
);

/*==============================================================*/
/* Index: "IX_FUT_ISSATISFIED"                                  */
/*==============================================================*/
CREATE INDEX "IX_FUT_ISSATISFIED" ON "FOLLOWUPTASK" (
   "ISSATISFIED" ASC
);

/*==============================================================*/
/* Index: "IX_FUT_STATE"                                        */
/*==============================================================*/
CREATE INDEX "IX_FUT_STATE" ON "FOLLOWUPTASK" (
   "STATE" ASC
);

/*==============================================================*/
/* Index: "IX_FUT_OFFICEID"                                     */
/*==============================================================*/
CREATE INDEX "IX_FUT_OFFICEID" ON "FOLLOWUPTEMPLATE" (
   "OFFICEID" ASC
);

/*==============================================================*/
/* Index: "IX_FUT_INSTITUTIONGUID"                              */
/*==============================================================*/
CREATE INDEX "IX_FUT_INSTITUTIONGUID" ON "FOLLOWUPTEMPLATE" (
   "INSTITUTIONGUID" ASC
);

