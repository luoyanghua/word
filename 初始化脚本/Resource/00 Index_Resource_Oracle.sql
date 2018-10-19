/*==============================================================*/
/* DBMS name:      ORACLE Version 11g                           */
/* Created on:     2017/10/11 15:20:20                          */
/*==============================================================*/


/*==============================================================*/
/* Index: "IX_AANSWER_TESTID"                                   */
/*==============================================================*/
CREATE INDEX "IX_AANSWER_TESTID" ON "ASKANSWER" (
   "TESTID" ASC
);

/*==============================================================*/
/* Index: "IX_ASKITEM_QUESTIONID"                               */
/*==============================================================*/
CREATE INDEX "IX_ASKITEM_QUESTIONID" ON "ASKITEM" (
   "QUESTIONID" ASC
);

/*==============================================================*/
/* Index: "IX_FANSWER_TESTID"                                   */
/*==============================================================*/
CREATE INDEX "IX_FANSWER_TESTID" ON "FILLANSWER" (
   "TESTID" ASC
);

/*==============================================================*/
/* Index: "IX_FILLITEM_QUESTIONID"                              */
/*==============================================================*/
CREATE INDEX "IX_FILLITEM_QUESTIONID" ON "FILLITEM" (
   "QUESTIONID" ASC
);

/*==============================================================*/
/* Index: "IX_FIANSWER_TESTID"                                  */
/*==============================================================*/
CREATE INDEX "IX_FIANSWER_TESTID" ON "FILLITEMANSWER" (
   "TESTID" ASC
);

/*==============================================================*/
/* Index: "IX_PAPER_PAPERKIND"                                  */
/*==============================================================*/
CREATE INDEX "IX_PAPER_PAPERKIND" ON "PAPER" (
   "PAPERKIND" ASC
);

/*==============================================================*/
/* Index: "IX_PAPER_PAPERTYPECODE"                              */
/*==============================================================*/
CREATE INDEX "IX_PAPER_PAPERTYPECODE" ON "PAPER" (
   "PAPERTYPECODE" ASC
);

/*==============================================================*/
/* Index: "IX_PAPER_PAPERNAME"                                  */
/*==============================================================*/
CREATE INDEX "IX_PAPER_PAPERNAME" ON "PAPER" (
   "PAPERNAME" ASC
);

/*==============================================================*/
/* Index: "IX_PAPER_KEYWORD"                                    */
/*==============================================================*/
CREATE INDEX "IX_PAPER_KEYWORD" ON "PAPER" (
   "KEYWORD" ASC
);

/*==============================================================*/
/* Index: "IX_PAPER_CUSTOMERGUID"                               */
/*==============================================================*/
CREATE INDEX "IX_PAPER_CUSTOMERGUID" ON "PAPER" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_PAPER_CREATETIME"                                 */
/*==============================================================*/
CREATE INDEX "IX_PAPER_CREATETIME" ON "PAPER" (
   "CREATETIME" ASC
);

/*==============================================================*/
/* Index: "IX_PANSWER_PAPERID"                                  */
/*==============================================================*/
CREATE INDEX "IX_PANSWER_PAPERID" ON "PAPERANSWER" (
   "PAPERID" ASC
);

/*==============================================================*/
/* Index: "IX_PANSWER_CUSTOMERGUID"                             */
/*==============================================================*/
CREATE INDEX "IX_PANSWER_CUSTOMERGUID" ON "PAPERANSWER" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_PHISTORY_TESTID"                                  */
/*==============================================================*/
CREATE INDEX "IX_PHISTORY_TESTID" ON "PAPERHISTORY" (
   "TESTID" ASC
);

/*==============================================================*/
/* Index: "IX_PAPERQ_PAPERID"                                   */
/*==============================================================*/
CREATE INDEX "IX_PAPERQ_PAPERID" ON "PAPERQUESTION" (
   "PAPERID" ASC
);

/*==============================================================*/
/* Index: "IX_PSTUDENT_PAPERID"                                 */
/*==============================================================*/
CREATE INDEX "IX_PSTUDENT_PAPERID" ON "PAPERSTUDENT" (
   "PAPERID" ASC
);

/*==============================================================*/
/* Index: "IX_QUESTION_QTYPE"                                   */
/*==============================================================*/
CREATE INDEX "IX_QUESTION_QTYPE" ON "QUESTION" (
   "QUESTIONTYPE" ASC
);

/*==============================================================*/
/* Index: "IX_QUESTION_KEYWORD"                                 */
/*==============================================================*/
CREATE INDEX "IX_QUESTION_KEYWORD" ON "QUESTION" (
   "KEYWORD" ASC
);

/*==============================================================*/
/* Index: "IX_QUESTION_CUSTOMERGUID"                            */
/*==============================================================*/
CREATE INDEX "IX_QUESTION_CUSTOMERGUID" ON "QUESTION" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_QRELATE_A"                                        */
/*==============================================================*/
CREATE INDEX "IX_QRELATE_A" ON "QUESTIONRELATE" (
   "AQUESTIONID" ASC
);

/*==============================================================*/
/* Index: "IX_QRELATE_B"                                        */
/*==============================================================*/
CREATE INDEX "IX_QRELATE_B" ON "QUESTIONRELATE" (
   "BQUESTIONID" ASC
);

/*==============================================================*/
/* Index: "IX_SANSWER_TESTID"                                   */
/*==============================================================*/
CREATE INDEX "IX_SANSWER_TESTID" ON "SELANSWER" (
   "TESTID" ASC
);

/*==============================================================*/
/* Index: "IX_SELITEM_QUESTIONID"                               */
/*==============================================================*/
CREATE INDEX "IX_SELITEM_QUESTIONID" ON "SELITEM" (
   "QUESTIONID" ASC
);

/*==============================================================*/
/* Index: "IX_SCREDITS_PAPERID"                                 */
/*==============================================================*/
CREATE INDEX "IX_SCREDITS_PAPERID" ON "STUDENTCREDITS" (
   "PAPERID" ASC
);

/*==============================================================*/
/* Index: "IX_SCREDITS_CUSTOMERGUID"                            */
/*==============================================================*/
CREATE INDEX "IX_SCREDITS_CUSTOMERGUID" ON "STUDENTCREDITS" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_SCREDITS_HOSPITALID"                              */
/*==============================================================*/
CREATE INDEX "IX_SCREDITS_HOSPITALID" ON "STUDENTCREDITS" (
   "HOSPITALID" ASC
);

/*==============================================================*/
/* Index: "IX_SCREDITS_STYPECODE"                               */
/*==============================================================*/
CREATE INDEX "IX_SCREDITS_STYPECODE" ON "STUDENTCREDITS" (
   "STUDENTTYPECODE" ASC
);

/*==============================================================*/
/* Index: "IX_SCREDITS_CREDITSTIME"                             */
/*==============================================================*/
CREATE INDEX "IX_SCREDITS_CREDITSTIME" ON "STUDENTCREDITS" (
   "CREDITSTIME" ASC
);

/*==============================================================*/
/* Index: "IX_SPLAN_STYPECODE"                                  */
/*==============================================================*/
CREATE INDEX "IX_SPLAN_STYPECODE" ON "STUDENTPLAN" (
   "STUDENTTYPECODE" ASC
);

/*==============================================================*/
/* Index: "IX_SPLAN_BEGINTIME"                                  */
/*==============================================================*/
CREATE INDEX "IX_SPLAN_BEGINTIME" ON "STUDENTPLAN" (
   "BEGINTIME" ASC
);

/*==============================================================*/
/* Index: "IX_SPLAN_ENDTIME"                                    */
/*==============================================================*/
CREATE INDEX "IX_SPLAN_ENDTIME" ON "STUDENTPLAN" (
   "ENDTIME" ASC
);

/*==============================================================*/
/* Index: "IX_TFANSWER_TESTID"                                  */
/*==============================================================*/
CREATE INDEX "IX_TFANSWER_TESTID" ON "TFANSWER" (
   "TESTID" ASC
);

/*==============================================================*/
/* Index: "IX_TFITEM_QUESTIONID"                                */
/*==============================================================*/
CREATE INDEX "IX_TFITEM_QUESTIONID" ON "TFITEM" (
   "QUESTIONID" ASC
);

