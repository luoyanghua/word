/*==============================================================*/
/* DBMS name:      ORACLE Version 11g                           */
/* Created on:     2017/10/11 15:19:36                          */
/*==============================================================*/


/*==============================================================*/
/* Index: "IX_ADV_ADVISESOURCE"                                 */
/*==============================================================*/
CREATE INDEX "IX_ADV_ADVISESOURCE" ON "ADVISE" (
   "ADVISESOURCE" ASC
);

/*==============================================================*/
/* Index: "IX_ADV_ADVISETARGET"                                 */
/*==============================================================*/
CREATE INDEX "IX_ADV_ADVISETARGET" ON "ADVISE" (
   "ADVISETARGET" ASC
);

/*==============================================================*/
/* Index: "IX_ADV_TARGETGUID"                                   */
/*==============================================================*/
CREATE INDEX "IX_ADV_TARGETGUID" ON "ADVISE" (
   "TARGETGUID" ASC
);

/*==============================================================*/
/* Index: "IX_ADV_BUSINESSID"                                   */
/*==============================================================*/
CREATE INDEX "IX_ADV_BUSINESSID" ON "ADVISE" (
   "BUSINESSID" ASC
);

/*==============================================================*/
/* Index: "IX_ADV_CUSTOMERGUID"                                 */
/*==============================================================*/
CREATE INDEX "IX_ADV_CUSTOMERGUID" ON "ADVISE" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_ADV_PHONE"                                        */
/*==============================================================*/
CREATE INDEX "IX_ADV_PHONE" ON "ADVISE" (
   "PHONE" ASC
);

/*==============================================================*/
/* Index: "IX_ADV_ADVISETIME"                                   */
/*==============================================================*/
CREATE INDEX "IX_ADV_ADVISETIME" ON "ADVISE" (
   "ADVISETIME" ASC
);

/*==============================================================*/
/* Index: "IX_ADV_ACCEPTGUID"                                   */
/*==============================================================*/
CREATE INDEX "IX_ADV_ACCEPTGUID" ON "ADVISE" (
   "ACCEPTGUID" ASC
);

/*==============================================================*/
/* Index: "IX_ADV_ACCEPTTIME"                                   */
/*==============================================================*/
CREATE INDEX "IX_ADV_ACCEPTTIME" ON "ADVISE" (
   "ACCEPTTIME" ASC
);

/*==============================================================*/
/* Index: "IX_ADV_STATE"                                        */
/*==============================================================*/
CREATE INDEX "IX_ADV_STATE" ON "ADVISE" (
   "STATE" ASC
);

/*==============================================================*/
/* Index: "IX_BASK_ASKSOURCE"                                   */
/*==============================================================*/
CREATE INDEX "IX_BASK_ASKSOURCE" ON "BUSINESSASK" (
   "ASKSOURCE" ASC
);

/*==============================================================*/
/* Index: "IX_BASK_ASKTARGET"                                   */
/*==============================================================*/
CREATE INDEX "IX_BASK_ASKTARGET" ON "BUSINESSASK" (
   "ASKTARGET" ASC
);

/*==============================================================*/
/* Index: "IX_BASK_TARGETGUID"                                  */
/*==============================================================*/
CREATE INDEX "IX_BASK_TARGETGUID" ON "BUSINESSASK" (
   "TARGETGUID" ASC
);

/*==============================================================*/
/* Index: "IX_BASK_KIND"                                        */
/*==============================================================*/
CREATE INDEX "IX_BASK_KIND" ON "BUSINESSASK" (
   "KIND" ASC
);

/*==============================================================*/
/* Index: "IX_BASK_CUSTOMERGUID"                                */
/*==============================================================*/
CREATE INDEX "IX_BASK_CUSTOMERGUID" ON "BUSINESSASK" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_BASK_PHONE"                                       */
/*==============================================================*/
CREATE INDEX "IX_BASK_PHONE" ON "BUSINESSASK" (
   "PHONE" ASC
);

/*==============================================================*/
/* Index: "IX_BASK_ACCEPTGUID"                                  */
/*==============================================================*/
CREATE INDEX "IX_BASK_ACCEPTGUID" ON "BUSINESSASK" (
   "ACCEPTGUID" ASC
);

/*==============================================================*/
/* Index: "IX_BASK_ASKTIME"                                     */
/*==============================================================*/
CREATE INDEX "IX_BASK_ASKTIME" ON "BUSINESSASK" (
   "ASKTIME" ASC
);

/*==============================================================*/
/* Index: "IX_BASK_ACCEPTTIME"                                  */
/*==============================================================*/
CREATE INDEX "IX_BASK_ACCEPTTIME" ON "BUSINESSASK" (
   "ACCEPTTIME" ASC
);

/*==============================================================*/
/* Index: "IX_BASK_STATE"                                       */
/*==============================================================*/
CREATE INDEX "IX_BASK_STATE" ON "BUSINESSASK" (
   "STATE" ASC
);

/*==============================================================*/
/* Index: "IX_CRE_KIND"                                         */
/*==============================================================*/
CREATE INDEX "IX_CRE_KIND" ON "CLIENTREVIEW" (
   "KIND" ASC
);

/*==============================================================*/
/* Index: "IX_CRE_BUSINESSID"                                   */
/*==============================================================*/
CREATE INDEX "IX_CRE_BUSINESSID" ON "CLIENTREVIEW" (
   "BUSINESSID" ASC
);

/*==============================================================*/
/* Index: "IX_CRE_CUSTOMERGUID"                                 */
/*==============================================================*/
CREATE INDEX "IX_CRE_CUSTOMERGUID" ON "CLIENTREVIEW" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_CRE_PHONE"                                        */
/*==============================================================*/
CREATE INDEX "IX_CRE_PHONE" ON "CLIENTREVIEW" (
   "PHONE" ASC
);

/*==============================================================*/
/* Index: "IX_CRE_ADVISETIME"                                   */
/*==============================================================*/
CREATE INDEX "IX_CRE_ADVISETIME" ON "CLIENTREVIEW" (
   "ADVISETIME" ASC
);

/*==============================================================*/
/* Index: "IX_CRE_ACCEPTGUID"                                   */
/*==============================================================*/
CREATE INDEX "IX_CRE_ACCEPTGUID" ON "CLIENTREVIEW" (
   "ACCEPTGUID" ASC
);

/*==============================================================*/
/* Index: "IX_CRE_ACCEPTTIME"                                   */
/*==============================================================*/
CREATE INDEX "IX_CRE_ACCEPTTIME" ON "CLIENTREVIEW" (
   "ACCEPTTIME" ASC
);

/*==============================================================*/
/* Index: "IX_CRE_STATE"                                        */
/*==============================================================*/
CREATE INDEX "IX_CRE_STATE" ON "CLIENTREVIEW" (
   "STATE" ASC
);

/*==============================================================*/
/* Index: "IX_COMP_COMPLAINTSOURCE"                             */
/*==============================================================*/
CREATE INDEX "IX_COMP_COMPLAINTSOURCE" ON "COMPLAINT" (
   "COMPLAINTSOURCE" ASC
);

/*==============================================================*/
/* Index: "IX_COMP_COMPLAINTTARGET"                             */
/*==============================================================*/
CREATE INDEX "IX_COMP_COMPLAINTTARGET" ON "COMPLAINT" (
   "COMPLAINTTARGET" ASC
);

/*==============================================================*/
/* Index: "IX_COMP_TARGETGUID"                                  */
/*==============================================================*/
CREATE INDEX "IX_COMP_TARGETGUID" ON "COMPLAINT" (
   "TARGETGUID" ASC
);

/*==============================================================*/
/* Index: "IX_COMP_BUSINESSID"                                  */
/*==============================================================*/
CREATE INDEX "IX_COMP_BUSINESSID" ON "COMPLAINT" (
   "BUSINESSID" ASC
);

/*==============================================================*/
/* Index: "IX_COMP_CUSTOMERGUID"                                */
/*==============================================================*/
CREATE INDEX "IX_COMP_CUSTOMERGUID" ON "COMPLAINT" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_COMP_PHONE"                                       */
/*==============================================================*/
CREATE INDEX "IX_COMP_PHONE" ON "COMPLAINT" (
   "PHONE" ASC
);

/*==============================================================*/
/* Index: "IX_COMP_COMPLAINTTIME"                               */
/*==============================================================*/
CREATE INDEX "IX_COMP_COMPLAINTTIME" ON "COMPLAINT" (
   "COMPLAINTTIME" ASC
);

/*==============================================================*/
/* Index: "IX_COMP_ACCEPTGUID"                                  */
/*==============================================================*/
CREATE INDEX "IX_COMP_ACCEPTGUID" ON "COMPLAINT" (
   "ACCEPTGUID" ASC
);

/*==============================================================*/
/* Index: "IX_COMP_ACCEPTTIME"                                  */
/*==============================================================*/
CREATE INDEX "IX_COMP_ACCEPTTIME" ON "COMPLAINT" (
   "ACCEPTTIME" ASC
);

/*==============================================================*/
/* Index: "IX_COMP_STATE"                                       */
/*==============================================================*/
CREATE INDEX "IX_COMP_STATE" ON "COMPLAINT" (
   "STATE" ASC
);

