/*==============================================================*/
/* DBMS name:      ORACLE Version 11g                           */
/* Created on:     2017/11/27 14:03:32                          */
/*==============================================================*/


/*==============================================================*/
/* Index: "IX_CT_CUSTOMERGUID"                                  */
/*==============================================================*/
CREATE INDEX "IX_CT_CUSTOMERGUID" ON "CONFIGTEMPLATE" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_DH_PROJECTKEY"                                    */
/*==============================================================*/
CREATE INDEX "IX_DH_PROJECTKEY" ON "DATABASEHISTORY" (
   "PROJECTKEY" ASC
);

/*==============================================================*/
/* Index: "IX_DH_DATABASEKEY"                                   */
/*==============================================================*/
CREATE INDEX "IX_DH_DATABASEKEY" ON "DATABASEHISTORY" (
   "DATABASEKEY" ASC
);

/*==============================================================*/
/* Index: "IX_DH_ACQTIME"                                       */
/*==============================================================*/
CREATE INDEX "IX_DH_ACQTIME" ON "DATABASEHISTORY" (
   "ACQTIME" ASC
);

/*==============================================================*/
/* Index: "IX_HBH_PROJECTKEY"                                   */
/*==============================================================*/
CREATE INDEX "IX_HBH_PROJECTKEY" ON "HEARTBEATHISTORY" (
   "PROJECTKEY" ASC
);

/*==============================================================*/
/* Index: "IX_HBH_HEARTKEY"                                     */
/*==============================================================*/
CREATE INDEX "IX_HBH_HEARTKEY" ON "HEARTBEATHISTORY" (
   "HEARTKEY" ASC
);

/*==============================================================*/
/* Index: "IX_HBH_ACQTIME"                                      */
/*==============================================================*/
CREATE INDEX "IX_HBH_ACQTIME" ON "HEARTBEATHISTORY" (
   "ACQTIME" ASC
);

/*==============================================================*/
/* Index: "IX_MSM_CUSTOMERGUID"                                 */
/*==============================================================*/
CREATE INDEX "IX_MSM_CUSTOMERGUID" ON "MANAGER_SERVER_MAPPING" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_MSM_SERVERKEY"                                    */
/*==============================================================*/
CREATE INDEX "IX_MSM_SERVERKEY" ON "MANAGER_SERVER_MAPPING" (
   "SERVERKEY" ASC
);

/*==============================================================*/
/* Index: "IX_MD_PROJECTKEY"                                    */
/*==============================================================*/
CREATE INDEX "IX_MD_PROJECTKEY" ON "MONITORDATABASE" (
   "PROJECTKEY" ASC
);

/*==============================================================*/
/* Index: "IX_MHB_PROJECTKEY"                                   */
/*==============================================================*/
CREATE INDEX "IX_MHB_PROJECTKEY" ON "MONITORHEARTBEAT" (
   "PROJECTKEY" ASC
);

/*==============================================================*/
/* Index: "IX_MP_PROJECTKEY"                                    */
/*==============================================================*/
CREATE INDEX "IX_MP_PROJECTKEY" ON "MONITORPROCESS" (
   "PROJECTKEY" ASC
);

/*==============================================================*/
/* Index: "IX_MP_SERVERKEY"                                     */
/*==============================================================*/
CREATE INDEX "IX_MP_SERVERKEY" ON "MONITORPROJECT" (
   "SERVERKEY" ASC
);

/*==============================================================*/
/* Index: "IX_MS_PROJECTKEY"                                    */
/*==============================================================*/
CREATE INDEX "IX_MS_PROJECTKEY" ON "MONITORSTORAGE" (
   "PROJECTKEY" ASC
);

/*==============================================================*/
/* Index: "IX_NL_WARNID"                                        */
/*==============================================================*/
CREATE INDEX "IX_NL_WARNID" ON "NOTIFICATIONLOG" (
   "WARNID" ASC
);

/*==============================================================*/
/* Index: "IX_NL_RECIEVECUSTOMERGUID"                           */
/*==============================================================*/
CREATE INDEX "IX_NL_RECIEVECUSTOMERGUID" ON "NOTIFICATIONLOG" (
   "RECIEVECUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_NL_PHONE"                                         */
/*==============================================================*/
CREATE INDEX "IX_NL_PHONE" ON "NOTIFICATIONLOG" (
   "PHONE" ASC
);

/*==============================================================*/
/* Index: "IX_NL_OPERATEDATE"                                   */
/*==============================================================*/
CREATE INDEX "IX_NL_OPERATEDATE" ON "NOTIFICATIONLOG" (
   "OPERATEDATE" ASC
);

/*==============================================================*/
/* Index: "IX_PH_PROJECTKEY"                                    */
/*==============================================================*/
CREATE INDEX "IX_PH_PROJECTKEY" ON "PROCESSHISTORY" (
   "PROJECTKEY" ASC
);

/*==============================================================*/
/* Index: "IX_PH_PROCESSKEY"                                    */
/*==============================================================*/
CREATE INDEX "IX_PH_PROCESSKEY" ON "PROCESSHISTORY" (
   "PROCESSKEY" ASC
);

/*==============================================================*/
/* Index: "IX_PH_ACQTIME"                                       */
/*==============================================================*/
CREATE INDEX "IX_PH_ACQTIME" ON "PROCESSHISTORY" (
   "ACQTIME" ASC
);

/*==============================================================*/
/* Index: "IX_SNH_SERVERKEY"                                    */
/*==============================================================*/
CREATE INDEX "IX_SNH_SERVERKEY" ON "SERVERNATUREHISTORY" (
   "SERVERKEY" ASC
);

/*==============================================================*/
/* Index: "IX_SNH_PROJECTKEY"                                   */
/*==============================================================*/
CREATE INDEX "IX_SNH_PROJECTKEY" ON "SERVERNATUREHISTORY" (
   "PROJECTKEY" ASC
);

/*==============================================================*/
/* Index: "IX_SNH_ACQTIME"                                      */
/*==============================================================*/
CREATE INDEX "IX_SNH_ACQTIME" ON "SERVERNATUREHISTORY" (
   "ACQTIME" ASC
);

/*==============================================================*/
/* Index: "IX_SH_PROJECTKEY"                                    */
/*==============================================================*/
CREATE INDEX "IX_SH_PROJECTKEY" ON "STORAGEHISTORY" (
   "PROJECTKEY" ASC
);

/*==============================================================*/
/* Index: "IX_SH_STORAGEKEY"                                    */
/*==============================================================*/
CREATE INDEX "IX_SH_STORAGEKEY" ON "STORAGEHISTORY" (
   "STORAGEKEY" ASC
);

/*==============================================================*/
/* Index: "IX_SH_ACQTIME"                                       */
/*==============================================================*/
CREATE INDEX "IX_SH_ACQTIME" ON "STORAGEHISTORY" (
   "ACQTIME" ASC
);

/*==============================================================*/
/* Index: "IX_WM_SERVERKEY"                                     */
/*==============================================================*/
CREATE INDEX "IX_WM_SERVERKEY" ON "WARNMESSAGE" (
   "SERVERKEY" ASC
);

/*==============================================================*/
/* Index: "IX_WM_PROJECTKEY"                                    */
/*==============================================================*/
CREATE INDEX "IX_WM_PROJECTKEY" ON "WARNMESSAGE" (
   "PROJECTKEY" ASC
);

/*==============================================================*/
/* Index: "IX_WM_MONITORKEY"                                    */
/*==============================================================*/
CREATE INDEX "IX_WM_MONITORKEY" ON "WARNMESSAGE" (
   "MONITORKEY" ASC
);

/*==============================================================*/
/* Index: "IX_WM_HISTORYKEY"                                    */
/*==============================================================*/
CREATE INDEX "IX_WM_HISTORYKEY" ON "WARNMESSAGE" (
   "HISTORYKEY" ASC
);

/*==============================================================*/
/* Index: "IX_WM_ISREAD"                                        */
/*==============================================================*/
CREATE INDEX "IX_WM_ISREAD" ON "WARNMESSAGE" (
   "ISREAD" ASC
);

/*==============================================================*/
/* Index: "IX_WM_OPERATEDATE"                                   */
/*==============================================================*/
CREATE INDEX "IX_WM_OPERATEDATE" ON "WARNMESSAGE" (
   "OPERATEDATE" ASC
);

