/*==============================================================*/
/* DBMS name:      ORACLE Version 11g                           */
/* Created on:     2017/10/11 15:21:00                          */
/*==============================================================*/


/*==============================================================*/
/* Index: "IX_CREAD_COURSEID"                                   */
/*==============================================================*/
CREATE INDEX "IX_CREAD_COURSEID" ON "COURSEREAD" (
   "COURSEID" ASC
);

/*==============================================================*/
/* Index: "IX_CREAD_CUSTOMERGUID"                               */
/*==============================================================*/
CREATE INDEX "IX_CREAD_CUSTOMERGUID" ON "COURSEREAD" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_DISCUSSR_REPLYID"                                 */
/*==============================================================*/
CREATE INDEX "IX_DISCUSSR_REPLYID" ON "DISCUSSREPLY" (
   "REPLYID" ASC
);

/*==============================================================*/
/* Index: "IX_DISCUSSR_TOPICID"                                 */
/*==============================================================*/
CREATE INDEX "IX_DISCUSSR_TOPICID" ON "DISCUSSREPLY" (
   "TOPICID" ASC
);

/*==============================================================*/
/* Index: "IX_DISCUSSR_CUSTOMERGUID"                            */
/*==============================================================*/
CREATE INDEX "IX_DISCUSSR_CUSTOMERGUID" ON "DISCUSSREPLY" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_DISCUSSR_F_ID"                                    */
/*==============================================================*/
CREATE INDEX "IX_DISCUSSR_F_ID" ON "DISCUSSREPLY" (
   "F_ID" ASC
);

/*==============================================================*/
/* Index: "IX_DISCUSST_TOPICID"                                 */
/*==============================================================*/
CREATE INDEX "IX_DISCUSST_TOPICID" ON "DISCUSSTOPIC" (
   "TOPICID" ASC
);

/*==============================================================*/
/* Index: "IX_DISCUSST_TEACHID"                                 */
/*==============================================================*/
CREATE INDEX "IX_DISCUSST_TEACHID" ON "DISCUSSTOPIC" (
   "TEACHID" ASC
);

/*==============================================================*/
/* Index: "IX_DISCUSST_TEACHKIND"                               */
/*==============================================================*/
CREATE INDEX "IX_DISCUSST_TEACHKIND" ON "DISCUSSTOPIC" (
   "TEACHKIND" ASC
);

/*==============================================================*/
/* Index: "IX_DISCUSST_MODULECODE"                              */
/*==============================================================*/
CREATE INDEX "IX_DISCUSST_MODULECODE" ON "DISCUSSTOPIC" (
   "MODULECODE" ASC
);

/*==============================================================*/
/* Index: "IX_DISCUSST_CUSTOMERGUID"                            */
/*==============================================================*/
CREATE INDEX "IX_DISCUSST_CUSTOMERGUID" ON "DISCUSSTOPIC" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_MYTOPIC_CUSTOMERGUID"                             */
/*==============================================================*/
CREATE INDEX "IX_MYTOPIC_CUSTOMERGUID" ON "MYTOPIC" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_MYTOPIC_TOPICID"                                  */
/*==============================================================*/
CREATE INDEX "IX_MYTOPIC_TOPICID" ON "MYTOPIC" (
   "TOPICID" ASC
);

/*==============================================================*/
/* Index: "IX_MYTOPIC_TEACHID"                                  */
/*==============================================================*/
CREATE INDEX "IX_MYTOPIC_TEACHID" ON "MYTOPIC" (
   "TEACHID" ASC
);

/*==============================================================*/
/* Index: "IX_RTEACH_TEACHID"                                   */
/*==============================================================*/
CREATE INDEX "IX_RTEACH_TEACHID" ON "RECOMMENDTEACH" (
   "TEACHID" ASC
);

/*==============================================================*/
/* Index: "IX_RTEACH_TEACHKIND"                                 */
/*==============================================================*/
CREATE INDEX "IX_RTEACH_TEACHKIND" ON "RECOMMENDTEACH" (
   "TEACHKIND" ASC
);

/*==============================================================*/
/* Index: "IX_RMAP_RESOURCEID"                                  */
/*==============================================================*/
CREATE INDEX "IX_RMAP_RESOURCEID" ON "RESOURCEMAP" (
   "RESOURCEID" ASC
);

/*==============================================================*/
/* Index: "IX_RMAP_TORESOURCEID"                                */
/*==============================================================*/
CREATE INDEX "IX_RMAP_TORESOURCEID" ON "RESOURCEMAP" (
   "TORESOURCEID" ASC
);

/*==============================================================*/
/* Index: "IX_STT_SUBJECTID"                                    */
/*==============================================================*/
CREATE INDEX "IX_STT_SUBJECTID" ON "SUBJECTTOTEACH" (
   "SUBJECTID" ASC
);

/*==============================================================*/
/* Index: "IX_STT_TEACHID"                                      */
/*==============================================================*/
CREATE INDEX "IX_STT_TEACHID" ON "SUBJECTTOTEACH" (
   "TEACHID" ASC
);

/*==============================================================*/
/* Index: "IX_STT_TEACHKIND"                                    */
/*==============================================================*/
CREATE INDEX "IX_STT_TEACHKIND" ON "SUBJECTTOTEACH" (
   "TEACHKIND" ASC
);

/*==============================================================*/
/* Index: "IX_TEACH_TEACHID"                                    */
/*==============================================================*/
CREATE INDEX "IX_TEACH_TEACHID" ON "TEACH" (
   "TEACHID" ASC
);

/*==============================================================*/
/* Index: "IX_TEACH_COLUMNCODE"                                 */
/*==============================================================*/
CREATE INDEX "IX_TEACH_COLUMNCODE" ON "TEACH" (
   "COLUMNCODE" ASC
);

/*==============================================================*/
/* Index: "IX_TEACH_FIRSTID"                                    */
/*==============================================================*/
CREATE INDEX "IX_TEACH_FIRSTID" ON "TEACH" (
   "FIRSTID" ASC
);

/*==============================================================*/
/* Index: "IX_TEACH_THIRDID"                                    */
/*==============================================================*/
CREATE INDEX "IX_TEACH_THIRDID" ON "TEACH" (
   "THIRDID" ASC
);

/*==============================================================*/
/* Index: "IX_TEACH_CONEDUCODE"                                 */
/*==============================================================*/
CREATE INDEX "IX_TEACH_CONEDUCODE" ON "TEACH" (
   "CONEDUCODE" ASC
);

/*==============================================================*/
/* Index: "IX_TEACH_LEVEL"                                      */
/*==============================================================*/
CREATE INDEX "IX_TEACH_LEVEL" ON "TEACH" (
   "LEVEL" ASC
);

/*==============================================================*/
/* Index: "IX_TEACH_KEYWORD"                                    */
/*==============================================================*/
CREATE INDEX "IX_TEACH_KEYWORD" ON "TEACH" (
   "KEYWORD" ASC
);

/*==============================================================*/
/* Index: "IX_TEACH_CUSTOMERGUID"                               */
/*==============================================================*/
CREATE INDEX "IX_TEACH_CUSTOMERGUID" ON "TEACH" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_TEACH_SERVICECENTERID"                            */
/*==============================================================*/
CREATE INDEX "IX_TEACH_SERVICECENTERID" ON "TEACH" (
   "TEACHCENTERID" ASC
);

/*==============================================================*/
/* Index: "IX_TEACH_PUBLISHDATE"                                */
/*==============================================================*/
CREATE INDEX "IX_TEACH_PUBLISHDATE" ON "TEACH" (
   "PUBLISHDATE" ASC
);

/*==============================================================*/
/* Index: "IX_TEACH_STATE"                                      */
/*==============================================================*/
CREATE INDEX "IX_TEACH_STATE" ON "TEACH" (
   "STATE" ASC
);

/*==============================================================*/
/* Index: "IX_TEACH_ISPRIVATE"                                  */
/*==============================================================*/
CREATE INDEX "IX_TEACH_ISPRIVATE" ON "TEACH" (
   "ISPRIVATE" ASC
);

/*==============================================================*/
/* Index: "IX_TEACH_ISVOD"                                      */
/*==============================================================*/
CREATE INDEX "IX_TEACH_ISVOD" ON "TEACH" (
   "ISVOD" ASC
);

/*==============================================================*/
/* Index: "IX_TEACH_ISNOTPLATFORM"                              */
/*==============================================================*/
CREATE INDEX "IX_TEACH_ISNOTPLATFORM" ON "TEACH" (
   "ISNOTPLATFORM" ASC
);

/*==============================================================*/
/* Index: "IX_TEACH_ISAUDIT"                                    */
/*==============================================================*/
CREATE INDEX "IX_TEACH_ISAUDIT" ON "TEACH" (
   "ISAUDIT" ASC
);

/*==============================================================*/
/* Index: "IX_TEACH_ISDOWN"                                     */
/*==============================================================*/
CREATE INDEX "IX_TEACH_ISDOWN" ON "TEACH" (
   "ISDOWN" ASC
);

/*==============================================================*/
/* Index: "IX_TEACH_ISSEND"                                     */
/*==============================================================*/
CREATE INDEX "IX_TEACH_ISSEND" ON "TEACH" (
   "ISSEND" ASC
);

/*==============================================================*/
/* Index: "IX_TAC_TEACHID"                                      */
/*==============================================================*/
CREATE INDEX "IX_TAC_TEACHID" ON "TEACHACTCOUNT" (
   "TEACHID" ASC
);

/*==============================================================*/
/* Index: "IX_TAC_TEACHKIND"                                    */
/*==============================================================*/
CREATE INDEX "IX_TAC_TEACHKIND" ON "TEACHACTCOUNT" (
   "TEACHKIND" ASC
);

/*==============================================================*/
/* Index: "IX_TEACHCLINICDATA_TEACHID"                          */
/*==============================================================*/
CREATE INDEX "IX_TEACHCLINICDATA_TEACHID" ON "TEACHCLINICDATA" (
   "TEACHID" ASC
);

/*==============================================================*/
/* Index: "IX_TCOURSE_COURSEID"                                 */
/*==============================================================*/
CREATE INDEX "IX_TCOURSE_COURSEID" ON "TEACHCOURSE" (
   "COURSEID" ASC
);

/*==============================================================*/
/* Index: "IX_TCOURSE_TEACHID"                                  */
/*==============================================================*/
CREATE INDEX "IX_TCOURSE_TEACHID" ON "TEACHCOURSE" (
   "TEACHID" ASC
);

/*==============================================================*/
/* Index: "IX_TCOURSE_TEACHKIND"                                */
/*==============================================================*/
CREATE INDEX "IX_TCOURSE_TEACHKIND" ON "TEACHCOURSE" (
   "TEACHKIND" ASC
);

/*==============================================================*/
/* Index: "IX_TCOURSE_COURSEKIND"                               */
/*==============================================================*/
CREATE INDEX "IX_TCOURSE_COURSEKIND" ON "TEACHCOURSE" (
   "COURSEKIND" ASC
);

/*==============================================================*/
/* Index: "IX_TEVALUATE_TEACHID"                                */
/*==============================================================*/
CREATE INDEX "IX_TEVALUATE_TEACHID" ON "TEACHEVALUATE" (
   "TEACHID" ASC
);

/*==============================================================*/
/* Index: "IX_TEVALUATE_CUSTOMERGUID"                           */
/*==============================================================*/
CREATE INDEX "IX_TEVALUATE_CUSTOMERGUID" ON "TEACHEVALUATE" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_TEVALUATE_PUBLISHDATE"                            */
/*==============================================================*/
CREATE INDEX "IX_TEVALUATE_PUBLISHDATE" ON "TEACHEVALUATE" (
   "PUBLISHDATE" ASC
);

/*==============================================================*/
/* Index: "IX_TEVALUATER_EVALUATEID"                            */
/*==============================================================*/
CREATE INDEX "IX_TEVALUATER_EVALUATEID" ON "TEACHEVALUATEREPLY" (
   "TEACHEVALUATEID" ASC
);

/*==============================================================*/
/* Index: "IX_TEVALUATER_PUBLISHDATE"                           */
/*==============================================================*/
CREATE INDEX "IX_TEVALUATER_PUBLISHDATE" ON "TEACHEVALUATEREPLY" (
   "PUBLISHDATE" ASC
);

/*==============================================================*/
/* Index: "IX_TEACHEXPERT_TEACHID"                              */
/*==============================================================*/
CREATE INDEX "IX_TEACHEXPERT_TEACHID" ON "TEACHEXPERT" (
   "TEACHID" ASC
);

/*==============================================================*/
/* Index: "IX_TEACHEXPERT_EXPERTGUID"                           */
/*==============================================================*/
CREATE INDEX "IX_TEACHEXPERT_EXPERTGUID" ON "TEACHEXPERT" (
   "EXPERTGUID" ASC
);

/*==============================================================*/
/* Index: "IX_TEACHRECORD_TEACHID"                              */
/*==============================================================*/
CREATE INDEX "IX_TEACHRECORD_TEACHID" ON "TEACHJOINRECORD" (
   "TEACHID" ASC
);

/*==============================================================*/
/* Index: "IX_TRECORD_TEACHKIND"                                */
/*==============================================================*/
CREATE INDEX "IX_TRECORD_TEACHKIND" ON "TEACHJOINRECORD" (
   "TEACHKIND" ASC
);

/*==============================================================*/
/* Index: "IX_TEACHRECORD_CUSTOMERGUID"                         */
/*==============================================================*/
CREATE INDEX "IX_TEACHRECORD_CUSTOMERGUID" ON "TEACHJOINRECORD" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_TEACHKEYWORD_TEACHID"                             */
/*==============================================================*/
CREATE INDEX "IX_TEACHKEYWORD_TEACHID" ON "TEACHKEYWORD" (
   "TEACHID" ASC
);

/*==============================================================*/
/* Index: "IX_TS_TEACHID"                                       */
/*==============================================================*/
CREATE INDEX "IX_TS_TEACHID" ON "TEACHSEARCH" (
   "TEACHID" ASC
);

/*==============================================================*/
/* Index: "IX_TS_TEACHKIND"                                     */
/*==============================================================*/
CREATE INDEX "IX_TS_TEACHKIND" ON "TEACHSEARCH" (
   "TEACHKIND" ASC
);

/*==============================================================*/
/* Index: "IX_TS_COLUMNCODE"                                    */
/*==============================================================*/
CREATE INDEX "IX_TS_COLUMNCODE" ON "TEACHSEARCH" (
   "COLUMNCODE" ASC
);

/*==============================================================*/
/* Index: "IX_TS_FIRSTID"                                       */
/*==============================================================*/
CREATE INDEX "IX_TS_FIRSTID" ON "TEACHSEARCH" (
   "FIRSTID" ASC
);

/*==============================================================*/
/* Index: "IX_TS_THIRDID"                                       */
/*==============================================================*/
CREATE INDEX "IX_TS_THIRDID" ON "TEACHSEARCH" (
   "THIRDID" ASC
);

/*==============================================================*/
/* Index: "IX_TS_CONEDUCODE"                                    */
/*==============================================================*/
CREATE INDEX "IX_TS_CONEDUCODE" ON "TEACHSEARCH" (
   "CONEDUCODE" ASC
);

/*==============================================================*/
/* Index: "IX_TS_LEVEL"                                         */
/*==============================================================*/
CREATE INDEX "IX_TS_LEVEL" ON "TEACHSEARCH" (
   "LEVEL" ASC
);

/*==============================================================*/
/* Index: "IX_TS_KEYWORD"                                       */
/*==============================================================*/
CREATE INDEX "IX_TS_KEYWORD" ON "TEACHSEARCH" (
   "KEYWORD" ASC
);

/*==============================================================*/
/* Index: "IX_TS_TEACHCENTERID"                                 */
/*==============================================================*/
CREATE INDEX "IX_TS_TEACHCENTERID" ON "TEACHSEARCH" (
   "TEACHCENTERID" ASC
);

/*==============================================================*/
/* Index: "IX_TS_PUBLISHDATE"                                   */
/*==============================================================*/
CREATE INDEX "IX_TS_PUBLISHDATE" ON "TEACHSEARCH" (
   "PUBLISHDATE" ASC
);

/*==============================================================*/
/* Index: "IX_TS_STATE"                                         */
/*==============================================================*/
CREATE INDEX "IX_TS_STATE" ON "TEACHSEARCH" (
   "STATE" ASC
);

/*==============================================================*/
/* Index: "IX_TS_ISDOWN"                                        */
/*==============================================================*/
CREATE INDEX "IX_TS_ISDOWN" ON "TEACHSEARCH" (
   "ISDOWN" ASC
);

/*==============================================================*/
/* Index: "IX_TSUBJECT_SUBJECTID"                               */
/*==============================================================*/
CREATE INDEX "IX_TSUBJECT_SUBJECTID" ON "TEACHSUBJECT" (
   "SUBJECTID" ASC
);

/*==============================================================*/
/* Index: "IX_TSUBJECT_CREATEDATE"                              */
/*==============================================================*/
CREATE INDEX "IX_TSUBJECT_CREATEDATE" ON "TEACHSUBJECT" (
   "CREATEDATE" ASC
);

/*==============================================================*/
/* Index: "IX_TSUBJECT_ISTOP"                                   */
/*==============================================================*/
CREATE INDEX "IX_TSUBJECT_ISTOP" ON "TEACHSUBJECT" (
   "ISTOP" ASC
);

/*==============================================================*/
/* Index: "IX_TTRECORD_TEACHID"                                 */
/*==============================================================*/
CREATE INDEX "IX_TTRECORD_TEACHID" ON "TEACHTOPRECORD" (
   "TEACHID" ASC
);

/*==============================================================*/
/* Index: "IX_TTRECORD_TEACHKIND"                               */
/*==============================================================*/
CREATE INDEX "IX_TTRECORD_TEACHKIND" ON "TEACHTOPRECORD" (
   "TEACHKIND" ASC
);

/*==============================================================*/
/* Index: "IX_TTRECORD_CUSTOMERGUID"                            */
/*==============================================================*/
CREATE INDEX "IX_TTRECORD_CUSTOMERGUID" ON "TEACHTOPRECORD" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_TEACHVIDEO_TEACHID"                               */
/*==============================================================*/
CREATE INDEX "IX_TEACHVIDEO_TEACHID" ON "TEACHVIDEO" (
   "TEACHID" ASC
);

/*==============================================================*/
/* Index: "IX_VOD_VODID"                                        */
/*==============================================================*/
CREATE INDEX "IX_VOD_VODID" ON "VOD" (
   "VODID" ASC
);

/*==============================================================*/
/* Index: "IX_VOD_COLUMNCODE"                                   */
/*==============================================================*/
CREATE INDEX "IX_VOD_COLUMNCODE" ON "VOD" (
   "COLUMNCODE" ASC
);

/*==============================================================*/
/* Index: "IX_VOD_FIRSTID"                                      */
/*==============================================================*/
CREATE INDEX "IX_VOD_FIRSTID" ON "VOD" (
   "FIRSTID" ASC
);

/*==============================================================*/
/* Index: "IX_VOD_THIRDID"                                      */
/*==============================================================*/
CREATE INDEX "IX_VOD_THIRDID" ON "VOD" (
   "THIRDID" ASC
);

/*==============================================================*/
/* Index: "IX_VOD_CONEDUCODE"                                   */
/*==============================================================*/
CREATE INDEX "IX_VOD_CONEDUCODE" ON "VOD" (
   "CONEDUCODE" ASC
);

/*==============================================================*/
/* Index: "IX_VOD_LEVEL"                                        */
/*==============================================================*/
CREATE INDEX "IX_VOD_LEVEL" ON "VOD" (
   "LEVEL" ASC
);

/*==============================================================*/
/* Index: "IX_VOD_KEYWORD"                                      */
/*==============================================================*/
CREATE INDEX "IX_VOD_KEYWORD" ON "VOD" (
   "KEYWORD" ASC
);

/*==============================================================*/
/* Index: "IX_VOD_ECUSTOMERGUID"                                */
/*==============================================================*/
CREATE INDEX "IX_VOD_ECUSTOMERGUID" ON "VOD" (
   "EXPERTCUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_VOD_CUSTOMERGUID"                                 */
/*==============================================================*/
CREATE INDEX "IX_VOD_CUSTOMERGUID" ON "VOD" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_VOD_SERVICECENTERID"                              */
/*==============================================================*/
CREATE INDEX "IX_VOD_SERVICECENTERID" ON "VOD" (
   "TEACHCENTERID" ASC
);

/*==============================================================*/
/* Index: "IX_VOD_PUBLISHDATE"                                  */
/*==============================================================*/
CREATE INDEX "IX_VOD_PUBLISHDATE" ON "VOD" (
   "PUBLISHDATE" ASC
);

/*==============================================================*/
/* Index: "IX_VOD_STATE"                                        */
/*==============================================================*/
CREATE INDEX "IX_VOD_STATE" ON "VOD" (
   "STATE" ASC
);

/*==============================================================*/
/* Index: "IX_VOD_ISPRIVATE"                                    */
/*==============================================================*/
CREATE INDEX "IX_VOD_ISPRIVATE" ON "VOD" (
   "ISPRIVATE" ASC
);

/*==============================================================*/
/* Index: "IX_VOD_ISAUDIT"                                      */
/*==============================================================*/
CREATE INDEX "IX_VOD_ISAUDIT" ON "VOD" (
   "ISAUDIT" ASC
);

/*==============================================================*/
/* Index: "IX_VOD_ISSEND"                                       */
/*==============================================================*/
CREATE INDEX "IX_VOD_ISSEND" ON "VOD" (
   "ISSEND" ASC
);

/*==============================================================*/
/* Index: "IX_VEVALUATE_VODID"                                  */
/*==============================================================*/
CREATE INDEX "IX_VEVALUATE_VODID" ON "VODEVALUATE" (
   "VODID" ASC
);

/*==============================================================*/
/* Index: "IX_VEVALUATE_CUSTOMERGUID"                           */
/*==============================================================*/
CREATE INDEX "IX_VEVALUATE_CUSTOMERGUID" ON "VODEVALUATE" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_VEVALUATE_PUBLISHDATE"                            */
/*==============================================================*/
CREATE INDEX "IX_VEVALUATE_PUBLISHDATE" ON "VODEVALUATE" (
   "PUBLISHDATE" ASC
);

/*==============================================================*/
/* Index: "IX_VEVALUATER_EVALUATEID"                            */
/*==============================================================*/
CREATE INDEX "IX_VEVALUATER_EVALUATEID" ON "VODEVALUATEREPLY" (
   "VODEVALUATEID" ASC
);

/*==============================================================*/
/* Index: "IX_VEVALUATER_CUSTOMERGUID"                          */
/*==============================================================*/
CREATE INDEX "IX_VEVALUATER_CUSTOMERGUID" ON "VODEVALUATEREPLY" (
   "REPLYCUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_VEVALUATER_PUBLISHDATE"                           */
/*==============================================================*/
CREATE INDEX "IX_VEVALUATER_PUBLISHDATE" ON "VODEVALUATEREPLY" (
   "PUBLISHDATE" ASC
);

/*==============================================================*/
/* Index: "IX_VODKEYWORD_VODID"                                 */
/*==============================================================*/
CREATE INDEX "IX_VODKEYWORD_VODID" ON "VODKEYWORD" (
   "VODID" ASC
);

/*==============================================================*/
/* Index: "IX_VOTER_CUSTOMERGUID"                               */
/*==============================================================*/
CREATE INDEX "IX_VOTER_CUSTOMERGUID" ON "VOTERECORD" (
   "CUSTOMERGUID" ASC
);

/*==============================================================*/
/* Index: "IX_VOTER_TOPICID"                                    */
/*==============================================================*/
CREATE INDEX "IX_VOTER_TOPICID" ON "VOTERECORD" (
   "TOPICID" ASC
);

