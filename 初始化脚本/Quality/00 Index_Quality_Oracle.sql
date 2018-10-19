/*==============================================================*/
/* DBMS name:      ORACLE Version 11g                           */
/* Created on:     2017/12/11 14:21:30                          */
/*==============================================================*/


/*==============================================================*/
/* Index: "IX_CFB_CORRECTIVEID"                                 */
/*==============================================================*/
CREATE INDEX "IX_CFB_CORRECTIVEID" ON "CORRECTIVEFEEDBACK" (
   "CORRECTIVEID" ASC
);

/*==============================================================*/
/* Index: "IX_CFB_FCUSTOMERGUID"                                */
/*==============================================================*/
CREATE INDEX "IX_CFB_FCUSTOMERGUID" ON "CORRECTIVEFEEDBACK" (
   "FEEDCUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_CFB_FEEDTIME"                                     */
/*==============================================================*/
CREATE INDEX "IX_CFB_FEEDTIME" ON "CORRECTIVEFEEDBACK" (
   "FEEDTIME" ASC
);

/*==============================================================*/
/* Index: "IX_CFB_FEEDSTATE"                                    */
/*==============================================================*/
CREATE INDEX "IX_CFB_FEEDSTATE" ON "CORRECTIVEFEEDBACK" (
   "FEEDSTATE" ASC
);

/*==============================================================*/
/* Index: "IX_E_HOSPITALCODE"                                   */
/*==============================================================*/
CREATE INDEX "IX_E_HOSPITALCODE" ON "EQUIPMENT" (
   "HOSPITALCODE" ASC
);

/*==============================================================*/
/* Index: "IX_EM_HOSPITALCODE"                                  */
/*==============================================================*/
CREATE INDEX "IX_EM_HOSPITALCODE" ON "EQUIPMENTMAINTAIN" (
   "HOSPITALCODE" ASC
);

/*==============================================================*/
/* Index: "IX_EM_SYSCONFIG"                                     */
/*==============================================================*/
CREATE INDEX "IX_EM_SYSCONFIG" ON "EQUIPMENTMAINTAIN" (
   "SYSCONFIG" ASC
);

/*==============================================================*/
/* Index: "IX_EM_OFFICE"                                        */
/*==============================================================*/
CREATE INDEX "IX_EM_OFFICE" ON "EQUIPMENTMAINTAIN" (
   "OFFICE" ASC
);

/*==============================================================*/
/* Index: "IX_EG_TASKID"                                        */
/*==============================================================*/
CREATE INDEX "IX_EG_TASKID" ON "EXAMINATIONGRADE" (
   "TASKID" ASC
);

/*==============================================================*/
/* Index: "IX_EG_MEMBERGUID"                                    */
/*==============================================================*/
CREATE INDEX "IX_EG_MEMBERGUID" ON "EXAMINATIONGRADE" (
   "MEMBERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_EG_MODE"                                          */
/*==============================================================*/
CREATE INDEX "IX_EG_MODE" ON "EXAMINATIONGRADE" (
   "MODE" ASC
);

/*==============================================================*/
/* Index: "IX_EG_EXAMINDEX"                                     */
/*==============================================================*/
CREATE INDEX "IX_EG_EXAMINDEX" ON "EXAMINATIONGRADE" (
   "EXAMINDEX" ASC
);

/*==============================================================*/
/* Index: "IX_EG_ACCESSIONNUMBER"                               */
/*==============================================================*/
CREATE INDEX "IX_EG_ACCESSIONNUMBER" ON "EXAMINATIONGRADE" (
   "ACCESSIONNUMBER" ASC
);

/*==============================================================*/
/* Index: "IX_EG_EXAMINETYPE"                                   */
/*==============================================================*/
CREATE INDEX "IX_EG_EXAMINETYPE" ON "EXAMINATIONGRADE" (
   "EXAMINETYPE" ASC
);

/*==============================================================*/
/* Index: "IX_EG_HOSPITALCODE"                                  */
/*==============================================================*/
CREATE INDEX "IX_EG_HOSPITALCODE" ON "EXAMINATIONGRADE" (
   "HOSPITALCODE" ASC
);

/*==============================================================*/
/* Index: "IX_EG_GRADETIME"                                     */
/*==============================================================*/
CREATE INDEX "IX_EG_GRADETIME" ON "EXAMINATIONGRADE" (
   "GRADETIME" ASC
);

/*==============================================================*/
/* Index: "IX_EG_LEVEL"                                         */
/*==============================================================*/
CREATE INDEX "IX_EG_LEVEL" ON "EXAMINATIONGRADE" (
   "LEVEL" ASC
);

/*==============================================================*/
/* Index: "IX_EG_TEMPLATECODE"                                  */
/*==============================================================*/
CREATE INDEX "IX_EG_TEMPLATECODE" ON "EXAMINATIONGRADE" (
   "TEMPLATECODE" ASC
);

/*==============================================================*/
/* Index: "IX_EG_QUALITYCODE"                                   */
/*==============================================================*/
CREATE INDEX "IX_EG_QUALITYCODE" ON "EXAMINATIONGRADE" (
   "QUALITYCODE" ASC
);

/*==============================================================*/
/* Index: "IX_EIG_TASKID"                                       */
/*==============================================================*/
CREATE INDEX "IX_EIG_TASKID" ON "EXAMINATIONITEMGRADE" (
   "TASKID" ASC
);

/*==============================================================*/
/* Index: "IX_EIG_MEMBERGUID"                                   */
/*==============================================================*/
CREATE INDEX "IX_EIG_MEMBERGUID" ON "EXAMINATIONITEMGRADE" (
   "MEMBERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_EIG_MODE"                                         */
/*==============================================================*/
CREATE INDEX "IX_EIG_MODE" ON "EXAMINATIONITEMGRADE" (
   "MODE" ASC
);

/*==============================================================*/
/* Index: "IX_EIG_EXAMINDEX"                                    */
/*==============================================================*/
CREATE INDEX "IX_EIG_EXAMINDEX" ON "EXAMINATIONITEMGRADE" (
   "EXAMINDEX" ASC
);

/*==============================================================*/
/* Index: "IX_EIG_ACCESSIONNUMBER"                              */
/*==============================================================*/
CREATE INDEX "IX_EIG_ACCESSIONNUMBER" ON "EXAMINATIONITEMGRADE" (
   "ACCESSIONNUMBER" ASC
);

/*==============================================================*/
/* Index: "IX_EIG_QCCODE"                                       */
/*==============================================================*/
CREATE INDEX "IX_EIG_QCCODE" ON "EXAMINATIONITEMGRADE" (
   "QCCODE" ASC
);

/*==============================================================*/
/* Index: "IX_EIG_EXAMINETYPE"                                  */
/*==============================================================*/
CREATE INDEX "IX_EIG_EXAMINETYPE" ON "EXAMINATIONITEMGRADE" (
   "EXAMINETYPE" ASC
);

/*==============================================================*/
/* Index: "IX_EIG_HOSPITALCODE"                                 */
/*==============================================================*/
CREATE INDEX "IX_EIG_HOSPITALCODE" ON "EXAMINATIONITEMGRADE" (
   "HOSPITALCODE" ASC
);

/*==============================================================*/
/* Index: "IX_EIG_LEVEL"                                        */
/*==============================================================*/
CREATE INDEX "IX_EIG_LEVEL" ON "EXAMINATIONITEMGRADE" (
   "LEVEL" ASC
);

/*==============================================================*/
/* Index: "IX_ELG_TASKID"                                       */
/*==============================================================*/
CREATE INDEX "IX_ELG_TASKID" ON "EXAMINATIONLOWERGRADE" (
   "TASKID" ASC
);

/*==============================================================*/
/* Index: "IX_ELG_MEMBERGUID"                                   */
/*==============================================================*/
CREATE INDEX "IX_ELG_MEMBERGUID" ON "EXAMINATIONLOWERGRADE" (
   "MEMBERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_ELG_MODE"                                         */
/*==============================================================*/
CREATE INDEX "IX_ELG_MODE" ON "EXAMINATIONLOWERGRADE" (
   "MODE" ASC
);

/*==============================================================*/
/* Index: "IX_ELG_EXAMINDEX"                                    */
/*==============================================================*/
CREATE INDEX "IX_ELG_EXAMINDEX" ON "EXAMINATIONLOWERGRADE" (
   "EXAMINDEX" ASC
);

/*==============================================================*/
/* Index: "IX_ELG_ACCESSIONNUMBER"                              */
/*==============================================================*/
CREATE INDEX "IX_ELG_ACCESSIONNUMBER" ON "EXAMINATIONLOWERGRADE" (
   "ACCESSIONNUMBER" ASC
);

/*==============================================================*/
/* Index: "IX_ELG_EXAMINETYPE"                                  */
/*==============================================================*/
CREATE INDEX "IX_ELG_EXAMINETYPE" ON "EXAMINATIONLOWERGRADE" (
   "EXAMINETYPE" ASC
);

/*==============================================================*/
/* Index: "IX_ELG_HOSPITALCODE"                                 */
/*==============================================================*/
CREATE INDEX "IX_ELG_HOSPITALCODE" ON "EXAMINATIONLOWERGRADE" (
   "HOSPITALCODE" ASC
);

/*==============================================================*/
/* Index: "IX_ELG_ITEMNAME"                                     */
/*==============================================================*/
CREATE INDEX "IX_ELG_ITEMNAME" ON "EXAMINATIONLOWERGRADE" (
   "ITEMNAME" ASC
);

/*==============================================================*/
/* Index: "IX_ELG_QCCODE"                                       */
/*==============================================================*/
CREATE INDEX "IX_ELG_QCCODE" ON "EXAMINATIONLOWERGRADE" (
   "QCCODE" ASC
);

/*==============================================================*/
/* Index: "IX_GP_TASKID"                                        */
/*==============================================================*/
CREATE INDEX "IX_GP_TASKID" ON "GRADEPIC" (
   "TASKID" ASC
);

/*==============================================================*/
/* Index: "IX_GP_EXAMINDEX"                                     */
/*==============================================================*/
CREATE INDEX "IX_GP_EXAMINDEX" ON "GRADEPIC" (
   "EXAMINDEX" ASC
);

/*==============================================================*/
/* Index: "IX_GP_ACCESSIONNUMBER"                               */
/*==============================================================*/
CREATE INDEX "IX_GP_ACCESSIONNUMBER" ON "GRADEPIC" (
   "ACCESSIONNUMBER" ASC
);

/*==============================================================*/
/* Index: "IX_GP_GRADEID"                                       */
/*==============================================================*/
CREATE INDEX "IX_GP_GRADEID" ON "GRADEPIC" (
   "GRADEID" ASC
);

/*==============================================================*/
/* Index: "IX_GP_ITEMNAME"                                      */
/*==============================================================*/
CREATE INDEX "IX_GP_ITEMNAME" ON "GRADEPIC" (
   "ITEMNAME" ASC
);

/*==============================================================*/
/* Index: "IX_GR_RESULTID"                                      */
/*==============================================================*/
CREATE INDEX "IX_GR_RESULTID" ON "GRADERESULT" (
   "RESULTID" ASC
);

/*==============================================================*/
/* Index: "IX_GR_TASKID"                                        */
/*==============================================================*/
CREATE INDEX "IX_GR_TASKID" ON "GRADERESULT" (
   "TASKID" ASC
);

/*==============================================================*/
/* Index: "IX_GR_MEMBERGUID"                                    */
/*==============================================================*/
CREATE INDEX "IX_GR_MEMBERGUID" ON "GRADERESULT" (
   "MEMBERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_GR_HOSPITALCODE"                                  */
/*==============================================================*/
CREATE INDEX "IX_GR_HOSPITALCODE" ON "GRADERESULT" (
   "HOSPITALCODE" ASC
);

/*==============================================================*/
/* Index: "IX_GR_GRADETIME"                                     */
/*==============================================================*/
CREATE INDEX "IX_GR_GRADETIME" ON "GRADERESULT" (
   "GRADETIME" ASC
);

/*==============================================================*/
/* Index: "IX_GRTC_CORRECTIVEID"                                */
/*==============================================================*/
CREATE INDEX "IX_GRTC_CORRECTIVEID" ON "GRADERESULTCORRECTIVE" (
   "CORRECTIVEID" ASC
);

/*==============================================================*/
/* Index: "IX_GRTC_RESULTID"                                    */
/*==============================================================*/
CREATE INDEX "IX_GRTC_RESULTID" ON "GRADERESULTCORRECTIVE" (
   "RESULTID" ASC
);

/*==============================================================*/
/* Index: "IX_GRTC_HOSPITALCODE"                                */
/*==============================================================*/
CREATE INDEX "IX_GRTC_HOSPITALCODE" ON "GRADERESULTCORRECTIVE" (
   "HOSPITALCODE" ASC
);

/*==============================================================*/
/* Index: "IX_GRTC_CORRECTIVETIME"                              */
/*==============================================================*/
CREATE INDEX "IX_GRTC_CORRECTIVETIME" ON "GRADERESULTCORRECTIVE" (
   "CORRECTIVETIME" ASC
);

/*==============================================================*/
/* Index: "IX_P_HOSPITALCODE"                                   */
/*==============================================================*/
CREATE INDEX "IX_P_HOSPITALCODE" ON "PERSON" (
   "HOSPITALCODE" ASC
);

/*==============================================================*/
/* Index: "IX_QCH_STRATEGYID"                                   */
/*==============================================================*/
CREATE INDEX "IX_QCH_STRATEGYID" ON "QUALITYCHECKHOSPITAL" (
   "STRATEGYID" ASC
);

/*==============================================================*/
/* Index: "IX_QCH_HOSPITALCODE"                                 */
/*==============================================================*/
CREATE INDEX "IX_QCH_HOSPITALCODE" ON "QUALITYCHECKHOSPITAL" (
   "HOSPITALCODE" ASC
);

/*==============================================================*/
/* Index: "IX_QCH_CHECKTIME"                                    */
/*==============================================================*/
CREATE INDEX "IX_QCH_CHECKTIME" ON "QUALITYCHECKHOSPITAL" (
   "CHECKTIME" ASC
);

/*==============================================================*/
/* Index: "IX_QCM_EQUIPMENTID"                                  */
/*==============================================================*/
CREATE INDEX "IX_QCM_EQUIPMENTID" ON "QUALITYCHECKMEDIA" (
   "EQUIPMENTID" ASC
);

/*==============================================================*/
/* Index: "IX_QCM_PERSONID"                                     */
/*==============================================================*/
CREATE INDEX "IX_QCM_PERSONID" ON "QUALITYCHECKMEDIA" (
   "PERSONID" ASC
);

/*==============================================================*/
/* Index: "IX_QCM_KIND"                                         */
/*==============================================================*/
CREATE INDEX "IX_QCM_KIND" ON "QUALITYCHECKMEDIA" (
   "KIND" ASC
);

/*==============================================================*/
/* Index: "IX_QCM_UPLOADTIME"                                   */
/*==============================================================*/
CREATE INDEX "IX_QCM_UPLOADTIME" ON "QUALITYCHECKMEDIA" (
   "UPLOADTIME" ASC
);

/*==============================================================*/
/* Index: "IX_QCM_HOSPITALCODE"                                 */
/*==============================================================*/
CREATE INDEX "IX_QCM_HOSPITALCODE" ON "QUALITYCHECKMEDIA" (
   "HOSPITALCODE" ASC
);

/*==============================================================*/
/* Index: "IX_QCO_STRATEGYID"                                   */
/*==============================================================*/
CREATE INDEX "IX_QCO_STRATEGYID" ON "QUALITYCHECKOTHER" (
   "STRATEGYID" ASC
);

/*==============================================================*/
/* Index: "IX_QCO_HOSPITALLEVELCODE"                            */
/*==============================================================*/
CREATE INDEX "IX_QCO_HOSPITALLEVELCODE" ON "QUALITYCHECKOTHER" (
   "HOSPITALLEVELCODE" ASC
);

/*==============================================================*/
/* Index: "IX_QCS_STRATEGYID"                                   */
/*==============================================================*/
CREATE INDEX "IX_QCS_STRATEGYID" ON "QUALITYCHECKSTRATEGY" (
   "STRATEGYID" ASC
);

/*==============================================================*/
/* Index: "IX_QCS_MEMBERGUID"                                   */
/*==============================================================*/
CREATE INDEX "IX_QCS_MEMBERGUID" ON "QUALITYCHECKSTRATEGY" (
   "MEMBERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_QET_QUALITYCODE"                                  */
/*==============================================================*/
CREATE INDEX "IX_QET_QUALITYCODE" ON "QUALITYEXAMINETYPE" (
   "QUALITYCODE" ASC
);

/*==============================================================*/
/* Index: "IX_QGR_TASKID"                                       */
/*==============================================================*/
CREATE INDEX "IX_QGR_TASKID" ON "QUALITYGRADERECORD" (
   "TASKID" ASC
);

/*==============================================================*/
/* Index: "IX_QGR_MEMBERGUID"                                   */
/*==============================================================*/
CREATE INDEX "IX_QGR_MEMBERGUID" ON "QUALITYGRADERECORD" (
   "MEMBERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_QN_TASKID"                                        */
/*==============================================================*/
CREATE INDEX "IX_QN_TASKID" ON "QUALITYNOTICE" (
   "TASKID" ASC
);

/*==============================================================*/
/* Index: "IX_QN_KIND"                                          */
/*==============================================================*/
CREATE INDEX "IX_QN_KIND" ON "QUALITYNOTICE" (
   "KIND" ASC
);

/*==============================================================*/
/* Index: "IX_QN_RCUSTOMERGUID"                                 */
/*==============================================================*/
CREATE INDEX "IX_QN_RCUSTOMERGUID" ON "QUALITYNOTICE" (
   "RECEIVECUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_QSC_QUALITYCODE"                                  */
/*==============================================================*/
CREATE INDEX "IX_QSC_QUALITYCODE" ON "QUALITYSYSCONFIG" (
   "QUALITYCODE" ASC
);

/*==============================================================*/
/* Index: "IX_QT_TASKID"                                        */
/*==============================================================*/
CREATE INDEX "IX_QT_TASKID" ON "QUALITYTASK" (
   "TASKID" ASC
);

/*==============================================================*/
/* Index: "IX_QT_QCENTERID"                                     */
/*==============================================================*/
CREATE INDEX "IX_QT_QCENTERID" ON "QUALITYTASK" (
   "QUALITYCENTERID" ASC
);

/*==============================================================*/
/* Index: "IX_QT_KIND"                                          */
/*==============================================================*/
CREATE INDEX "IX_QT_KIND" ON "QUALITYTASK" (
   "KIND" ASC
);

/*==============================================================*/
/* Index: "IX_QT_GRADEKIND"                                     */
/*==============================================================*/
CREATE INDEX "IX_QT_GRADEKIND" ON "QUALITYTASK" (
   "GRADEKIND" ASC
);

/*==============================================================*/
/* Index: "IX_QT_MODE"                                          */
/*==============================================================*/
CREATE INDEX "IX_QT_MODE" ON "QUALITYTASK" (
   "MODE" ASC
);

/*==============================================================*/
/* Index: "IX_QT_QGROUPID"                                      */
/*==============================================================*/
CREATE INDEX "IX_QT_QGROUPID" ON "QUALITYTASK" (
   "QUALITYGROUPID" ASC
);

/*==============================================================*/
/* Index: "IX_QT_STARTDATE"                                     */
/*==============================================================*/
CREATE INDEX "IX_QT_STARTDATE" ON "QUALITYTASK" (
   "STARTDATE" ASC
);

/*==============================================================*/
/* Index: "IX_QT_CUSTOMERGUID"                                  */
/*==============================================================*/
CREATE INDEX "IX_QT_CUSTOMERGUID" ON "QUALITYTASK" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_QT_STATE"                                         */
/*==============================================================*/
CREATE INDEX "IX_QT_STATE" ON "QUALITYTASK" (
   "STATE" ASC
);

/*==============================================================*/
/* Index: "IX_QT_QUALITYCENTERID"                               */
/*==============================================================*/
CREATE INDEX "IX_QT_QUALITYCENTERID" ON "QUALITYTEMPLATE" (
   "QUALITYCENTERID" ASC
);

/*==============================================================*/
/* Index: "IX_QT_TEMPLATECODE"                                  */
/*==============================================================*/
CREATE INDEX "IX_QT_TEMPLATECODE" ON "QUALITYTEMPLATE" (
   "TEMPLATECODE" ASC
);

/*==============================================================*/
/* Index: "IX_QT_QUALITYCODE"                                   */
/*==============================================================*/
CREATE INDEX "IX_QT_QUALITYCODE" ON "QUALITYTEMPLATE" (
   "QUALITYCODE" ASC
);

/*==============================================================*/
/* Index: "IX_QT_ISDEFAULT"                                     */
/*==============================================================*/
CREATE INDEX "IX_QT_ISDEFAULT" ON "QUALITYTEMPLATE" (
   "ISDEFAULT" ASC
);

/*==============================================================*/
/* Index: "IX_QT_ISUSE"                                         */
/*==============================================================*/
CREATE INDEX "IX_QT_ISUSE" ON "QUALITYTEMPLATE" (
   "ISUSE" ASC
);

/*==============================================================*/
/* Index: "IX_QM_TASKID"                                        */
/*==============================================================*/
CREATE INDEX "IX_QM_TASKID" ON "QUATITYMEMBER" (
   "TASKID" ASC
);

/*==============================================================*/
/* Index: "IX_QM_TASKKIND"                                      */
/*==============================================================*/
CREATE INDEX "IX_QM_TASKKIND" ON "QUATITYMEMBER" (
   "TASKKIND" ASC
);

/*==============================================================*/
/* Index: "IX_QM_MEMBERGUID"                                    */
/*==============================================================*/
CREATE INDEX "IX_QM_MEMBERGUID" ON "QUATITYMEMBER" (
   "MEMBERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_QM_QCENTERID"                                     */
/*==============================================================*/
CREATE INDEX "IX_QM_QCENTERID" ON "QUATITYMEMBER" (
   "QUALITYCENTERID" ASC
);

/*==============================================================*/
/* Index: "IX_TE_EXTRACTTASKID"                                 */
/*==============================================================*/
CREATE INDEX "IX_TE_EXTRACTTASKID" ON "TASKEXAMINATION" (
   "EXTRACTTASKID" ASC
);

/*==============================================================*/
/* Index: "IX_TE_TASKID"                                        */
/*==============================================================*/
CREATE INDEX "IX_TE_TASKID" ON "TASKEXAMINATION" (
   "TASKID" ASC
);

/*==============================================================*/
/* Index: "IX_TE_EXAMINETYPE"                                   */
/*==============================================================*/
CREATE INDEX "IX_TE_EXAMINETYPE" ON "TASKEXAMINATION" (
   "EXAMINETYPE" ASC
);

/*==============================================================*/
/* Index: "IX_TE_EXAMINEITEM"                                   */
/*==============================================================*/
CREATE INDEX "IX_TE_EXAMINEITEM" ON "TASKEXAMINATION" (
   "EXAMINEITEM" ASC
);

/*==============================================================*/
/* Index: "IX_TE_HOSPITALCODE"                                  */
/*==============================================================*/
CREATE INDEX "IX_TE_HOSPITALCODE" ON "TASKEXAMINATION" (
   "HOSPITALCODE" ASC
);

/*==============================================================*/
/* Index: "IX_TE_PERFORMTIME"                                   */
/*==============================================================*/
CREATE INDEX "IX_TE_PERFORMTIME" ON "TASKEXAMINATION" (
   "PERFORMTIME" ASC
);

/*==============================================================*/
/* Index: "IX_TG_TASKID"                                        */
/*==============================================================*/
CREATE INDEX "IX_TG_TASKID" ON "TASKGROUP" (
   "TASKID" ASC
);

/*==============================================================*/
/* Index: "IX_TGE_GROUPID"                                      */
/*==============================================================*/
CREATE INDEX "IX_TGE_GROUPID" ON "TASKGROUPEXAMINATION" (
   "GROUPID" ASC
);

/*==============================================================*/
/* Index: "IX_TGH_GROUPID"                                      */
/*==============================================================*/
CREATE INDEX "IX_TGH_GROUPID" ON "TASKGROUPHOSPITAL" (
   "GROUPID" ASC
);

/*==============================================================*/
/* Index: "IX_TGM_GROUPID"                                      */
/*==============================================================*/
CREATE INDEX "IX_TGM_GROUPID" ON "TASKGROUPMEMBER" (
   "GROUPID" ASC
);

/*==============================================================*/
/* Index: "IX_TR_ETASKID"                                       */
/*==============================================================*/
CREATE INDEX "IX_TR_ETASKID" ON "TASKRECORD" (
   "EXTRACTTASKID" ASC
);

/*==============================================================*/
/* Index: "IX_TR_TASKID"                                        */
/*==============================================================*/
CREATE INDEX "IX_TR_TASKID" ON "TASKRECORD" (
   "TASKID" ASC
);

/*==============================================================*/
/* Index: "IX_TR_MODE"                                          */
/*==============================================================*/
CREATE INDEX "IX_TR_MODE" ON "TASKRECORD" (
   "MODE" ASC
);

/*==============================================================*/
/* Index: "IX_VEN_TASKID"                                       */
/*==============================================================*/
CREATE INDEX "IX_VEN_TASKID" ON "VIDEOEXAMINATIONNOW" (
   "TASKID" ASC
);

