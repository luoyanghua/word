/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2017/10/10 14:59:53                          */
/*==============================================================*/


/*==============================================================*/
/* Index: IX_CRead_CourseId                                     */
/*==============================================================*/
create index IX_CRead_CourseId on CourseRead
(
   CourseId
);

/*==============================================================*/
/* Index: IX_CRead_CustomerGuid                                 */
/*==============================================================*/
create index IX_CRead_CustomerGuid on CourseRead
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_DiscussR_ReplyId                                   */
/*==============================================================*/
create index IX_DiscussR_ReplyId on DiscussReply
(
   ReplyId
);

/*==============================================================*/
/* Index: IX_DiscussR_TopicId                                   */
/*==============================================================*/
create index IX_DiscussR_TopicId on DiscussReply
(
   TopicId
);

/*==============================================================*/
/* Index: IX_DiscussR_CustomerGuid                              */
/*==============================================================*/
create index IX_DiscussR_CustomerGuid on DiscussReply
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_DiscussR_F_Id                                      */
/*==============================================================*/
create index IX_DiscussR_F_Id on DiscussReply
(
   F_Id
);

/*==============================================================*/
/* Index: IX_DiscussT_TopicId                                   */
/*==============================================================*/
create index IX_DiscussT_TopicId on DiscussTopic
(
   TopicId
);

/*==============================================================*/
/* Index: IX_DiscussT_TeachId                                   */
/*==============================================================*/
create index IX_DiscussT_TeachId on DiscussTopic
(
   TeachId
);

/*==============================================================*/
/* Index: IX_DiscussT_TeachKind                                 */
/*==============================================================*/
create index IX_DiscussT_TeachKind on DiscussTopic
(
   TeachKind
);

/*==============================================================*/
/* Index: IX_DiscussT_ModuleCode                                */
/*==============================================================*/
create index IX_DiscussT_ModuleCode on DiscussTopic
(
   ModuleCode
);

/*==============================================================*/
/* Index: IX_DiscussT_CustomerGuid                              */
/*==============================================================*/
create index IX_DiscussT_CustomerGuid on DiscussTopic
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_MyTopic_CustomerGuid                               */
/*==============================================================*/
create index IX_MyTopic_CustomerGuid on MyTopic
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_MyTopic_TopicId                                    */
/*==============================================================*/
create index IX_MyTopic_TopicId on MyTopic
(
   TopicId
);

/*==============================================================*/
/* Index: IX_MyTopic_TeachId                                    */
/*==============================================================*/
create index IX_MyTopic_TeachId on MyTopic
(
   TeachId
);

/*==============================================================*/
/* Index: IX_RTeach_TeachId                                     */
/*==============================================================*/
create index IX_RTeach_TeachId on RecommendTeach
(
   TeachId
);

/*==============================================================*/
/* Index: IX_RTeach_TeachKind                                   */
/*==============================================================*/
create index IX_RTeach_TeachKind on RecommendTeach
(
   TeachKind
);

/*==============================================================*/
/* Index: IX_RMap_ResourceId                                    */
/*==============================================================*/
create index IX_RMap_ResourceId on ResourceMap
(
   ResourceId
);

/*==============================================================*/
/* Index: IX_RMap_ToResourceId                                  */
/*==============================================================*/
create index IX_RMap_ToResourceId on ResourceMap
(
   ToResourceId
);

/*==============================================================*/
/* Index: IX_STT_SubjectId                                      */
/*==============================================================*/
create index IX_STT_SubjectId on SubjectToTeach
(
   SubjectId
);

/*==============================================================*/
/* Index: IX_STT_TeachId                                        */
/*==============================================================*/
create index IX_STT_TeachId on SubjectToTeach
(
   TeachId
);

/*==============================================================*/
/* Index: IX_STT_TeachKind                                      */
/*==============================================================*/
create index IX_STT_TeachKind on SubjectToTeach
(
   TeachKind
);

/*==============================================================*/
/* Index: IX_Teach_TeachId                                      */
/*==============================================================*/
create index IX_Teach_TeachId on Teach
(
   TeachId
);

/*==============================================================*/
/* Index: IX_Teach_ColumnCode                                   */
/*==============================================================*/
create index IX_Teach_ColumnCode on Teach
(
   ColumnCode
);

/*==============================================================*/
/* Index: IX_Teach_FirstId                                      */
/*==============================================================*/
create index IX_Teach_FirstId on Teach
(
   FirstId
);

/*==============================================================*/
/* Index: IX_Teach_ThirdId                                      */
/*==============================================================*/
create index IX_Teach_ThirdId on Teach
(
   ThirdId
);

/*==============================================================*/
/* Index: IX_Teach_ConEduCode                                   */
/*==============================================================*/
create index IX_Teach_ConEduCode on Teach
(
   ConEduCode
);

/*==============================================================*/
/* Index: IX_Teach_Level                                        */
/*==============================================================*/
create index IX_Teach_Level on Teach
(
   Level
);

/*==============================================================*/
/* Index: IX_Teach_KeyWord                                      */
/*==============================================================*/
create index IX_Teach_KeyWord on Teach
(
   KeyWord
);

/*==============================================================*/
/* Index: IX_Teach_CustomerGuid                                 */
/*==============================================================*/
create index IX_Teach_CustomerGuid on Teach
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_Teach_ServiceCenterId                              */
/*==============================================================*/
create index IX_Teach_ServiceCenterId on Teach
(
   TeachCenterId
);

/*==============================================================*/
/* Index: IX_Teach_PublishDate                                  */
/*==============================================================*/
create index IX_Teach_PublishDate on Teach
(
   PublishDate
);

/*==============================================================*/
/* Index: IX_Teach_State                                        */
/*==============================================================*/
create index IX_Teach_State on Teach
(
   State
);

/*==============================================================*/
/* Index: IX_Teach_IsPrivate                                    */
/*==============================================================*/
create index IX_Teach_IsPrivate on Teach
(
   IsPrivate
);

/*==============================================================*/
/* Index: IX_Teach_IsVod                                        */
/*==============================================================*/
create index IX_Teach_IsVod on Teach
(
   IsVod
);

/*==============================================================*/
/* Index: IX_Teach_IsNotPlatform                                */
/*==============================================================*/
create index IX_Teach_IsNotPlatform on Teach
(
   IsNotPlatform
);

/*==============================================================*/
/* Index: IX_Teach_IsAudit                                      */
/*==============================================================*/
create index IX_Teach_IsAudit on Teach
(
   IsAudit
);

/*==============================================================*/
/* Index: IX_Teach_IsDown                                       */
/*==============================================================*/
create index IX_Teach_IsDown on Teach
(
   IsDown
);

/*==============================================================*/
/* Index: IX_Teach_IsSend                                       */
/*==============================================================*/
create index IX_Teach_IsSend on Teach
(
   IsSend
);

/*==============================================================*/
/* Index: IX_TAC_TeachId                                        */
/*==============================================================*/
create index IX_TAC_TeachId on TeachActCount
(
   TeachId
);

/*==============================================================*/
/* Index: IX_TAC_TeachKind                                      */
/*==============================================================*/
create index IX_TAC_TeachKind on TeachActCount
(
   TeachKind
);

/*==============================================================*/
/* Index: IX_TeachClinicData_TeachId                            */
/*==============================================================*/
create index IX_TeachClinicData_TeachId on TeachClinicData
(
   TeachId
);

/*==============================================================*/
/* Index: IX_TCourse_CourseId                                   */
/*==============================================================*/
create index IX_TCourse_CourseId on TeachCourse
(
   CourseId
);

/*==============================================================*/
/* Index: IX_TCourse_TeachId                                    */
/*==============================================================*/
create index IX_TCourse_TeachId on TeachCourse
(
   TeachId
);

/*==============================================================*/
/* Index: IX_TCourse_TeachKind                                  */
/*==============================================================*/
create index IX_TCourse_TeachKind on TeachCourse
(
   TeachKind
);

/*==============================================================*/
/* Index: IX_TCourse_CourseKind                                 */
/*==============================================================*/
create index IX_TCourse_CourseKind on TeachCourse
(
   CourseKind
);

/*==============================================================*/
/* Index: IX_TEvaluate_TeachId                                  */
/*==============================================================*/
create index IX_TEvaluate_TeachId on TeachEvaluate
(
   TeachId
);

/*==============================================================*/
/* Index: IX_TEvaluate_CustomerGuid                             */
/*==============================================================*/
create index IX_TEvaluate_CustomerGuid on TeachEvaluate
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_TEvaluate_PublishDate                              */
/*==============================================================*/
create index IX_TEvaluate_PublishDate on TeachEvaluate
(
   PublishDate
);

/*==============================================================*/
/* Index: IX_TEvaluateR_EvaluateId                              */
/*==============================================================*/
create index IX_TEvaluateR_EvaluateId on TeachEvaluateReply
(
   TeachEvaluateId
);

/*==============================================================*/
/* Index: IX_TEvaluateR_PublishDate                             */
/*==============================================================*/
create index IX_TEvaluateR_PublishDate on TeachEvaluateReply
(
   PublishDate
);

/*==============================================================*/
/* Index: IX_TeachExpert_TeachId                                */
/*==============================================================*/
create index IX_TeachExpert_TeachId on TeachExpert
(
   TeachId
);

/*==============================================================*/
/* Index: IX_TeachExpert_ExpertGuid                             */
/*==============================================================*/
create index IX_TeachExpert_ExpertGuid on TeachExpert
(
   ExpertGuid
);

/*==============================================================*/
/* Index: IX_TeachRecord_TeachId                                */
/*==============================================================*/
create index IX_TeachRecord_TeachId on TeachJoinRecord
(
   TeachId
);

/*==============================================================*/
/* Index: IX_TRecord_TeachKind                                  */
/*==============================================================*/
create index IX_TRecord_TeachKind on TeachJoinRecord
(
   TeachKind
);

/*==============================================================*/
/* Index: IX_TeachRecord_CustomerGuid                           */
/*==============================================================*/
create index IX_TeachRecord_CustomerGuid on TeachJoinRecord
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_TeachKeyWord_TeachId                               */
/*==============================================================*/
create index IX_TeachKeyWord_TeachId on TeachKeyWord
(
   TeachId
);

/*==============================================================*/
/* Index: IX_TS_TeachId                                         */
/*==============================================================*/
create index IX_TS_TeachId on TeachSearch
(
   TeachId
);

/*==============================================================*/
/* Index: IX_TS_TeachKind                                       */
/*==============================================================*/
create index IX_TS_TeachKind on TeachSearch
(
   TeachKind
);

/*==============================================================*/
/* Index: IX_TS_ColumnCode                                      */
/*==============================================================*/
create index IX_TS_ColumnCode on TeachSearch
(
   ColumnCode
);

/*==============================================================*/
/* Index: IX_TS_FirstId                                         */
/*==============================================================*/
create index IX_TS_FirstId on TeachSearch
(
   FirstId
);

/*==============================================================*/
/* Index: IX_TS_ThirdId                                         */
/*==============================================================*/
create index IX_TS_ThirdId on TeachSearch
(
   ThirdId
);

/*==============================================================*/
/* Index: IX_TS_ConEduCode                                      */
/*==============================================================*/
create index IX_TS_ConEduCode on TeachSearch
(
   ConEduCode
);

/*==============================================================*/
/* Index: IX_TS_Level                                           */
/*==============================================================*/
create index IX_TS_Level on TeachSearch
(
   Level
);

/*==============================================================*/
/* Index: IX_TS_KeyWord                                         */
/*==============================================================*/
create index IX_TS_KeyWord on TeachSearch
(
   KeyWord
);

/*==============================================================*/
/* Index: IX_TS_TeachCenterId                                   */
/*==============================================================*/
create index IX_TS_TeachCenterId on TeachSearch
(
   TeachCenterId
);

/*==============================================================*/
/* Index: IX_TS_PublishDate                                     */
/*==============================================================*/
create index IX_TS_PublishDate on TeachSearch
(
   PublishDate
);

/*==============================================================*/
/* Index: IX_TS_State                                           */
/*==============================================================*/
create index IX_TS_State on TeachSearch
(
   State
);

/*==============================================================*/
/* Index: IX_TS_IsDown                                          */
/*==============================================================*/
create index IX_TS_IsDown on TeachSearch
(
   IsDown
);

/*==============================================================*/
/* Index: IX_TSubject_SubjectId                                 */
/*==============================================================*/
create index IX_TSubject_SubjectId on TeachSubject
(
   SubjectId
);

/*==============================================================*/
/* Index: IX_TSubject_CreateDate                                */
/*==============================================================*/
create index IX_TSubject_CreateDate on TeachSubject
(
   CreateDate
);

/*==============================================================*/
/* Index: IX_TSubject_IsTop                                     */
/*==============================================================*/
create index IX_TSubject_IsTop on TeachSubject
(
   IsTop
);

/*==============================================================*/
/* Index: IX_TTRecord_TeachId                                   */
/*==============================================================*/
create index IX_TTRecord_TeachId on TeachTopRecord
(
   TeachId
);

/*==============================================================*/
/* Index: IX_TTRecord_TeachKind                                 */
/*==============================================================*/
create index IX_TTRecord_TeachKind on TeachTopRecord
(
   TeachKind
);

/*==============================================================*/
/* Index: IX_TTRecord_CustomerGuid                              */
/*==============================================================*/
create index IX_TTRecord_CustomerGuid on TeachTopRecord
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_TeachVideo_TeachId                                 */
/*==============================================================*/
create index IX_TeachVideo_TeachId on TeachVideo
(
   TeachId
);

/*==============================================================*/
/* Index: IX_Vod_VodId                                          */
/*==============================================================*/
create index IX_Vod_VodId on Vod
(
   VodId
);

/*==============================================================*/
/* Index: IX_Vod_ColumnCode                                     */
/*==============================================================*/
create index IX_Vod_ColumnCode on Vod
(
   ColumnCode
);

/*==============================================================*/
/* Index: IX_Vod_FirstId                                        */
/*==============================================================*/
create index IX_Vod_FirstId on Vod
(
   FirstId
);

/*==============================================================*/
/* Index: IX_Vod_ThirdId                                        */
/*==============================================================*/
create index IX_Vod_ThirdId on Vod
(
   ThirdId
);

/*==============================================================*/
/* Index: IX_Vod_ConEduCode                                     */
/*==============================================================*/
create index IX_Vod_ConEduCode on Vod
(
   ConEduCode
);

/*==============================================================*/
/* Index: IX_Vod_Level                                          */
/*==============================================================*/
create index IX_Vod_Level on Vod
(
   Level
);

/*==============================================================*/
/* Index: IX_Vod_KeyWord                                        */
/*==============================================================*/
create index IX_Vod_KeyWord on Vod
(
   KeyWord
);

/*==============================================================*/
/* Index: IX_Vod_ECustomerGuid                                  */
/*==============================================================*/
create index IX_Vod_ECustomerGuid on Vod
(
   ExpertCustomerGuid
);

/*==============================================================*/
/* Index: IX_Vod_CustomerGuid                                   */
/*==============================================================*/
create index IX_Vod_CustomerGuid on Vod
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_Vod_ServiceCenterId                                */
/*==============================================================*/
create index IX_Vod_ServiceCenterId on Vod
(
   TeachCenterId
);

/*==============================================================*/
/* Index: IX_Vod_PublishDate                                    */
/*==============================================================*/
create index IX_Vod_PublishDate on Vod
(
   PublishDate
);

/*==============================================================*/
/* Index: IX_Vod_State                                          */
/*==============================================================*/
create index IX_Vod_State on Vod
(
   State
);

/*==============================================================*/
/* Index: IX_Vod_IsPrivate                                      */
/*==============================================================*/
create index IX_Vod_IsPrivate on Vod
(
   IsPrivate
);

/*==============================================================*/
/* Index: IX_Vod_IsAudit                                        */
/*==============================================================*/
create index IX_Vod_IsAudit on Vod
(
   IsAudit
);

/*==============================================================*/
/* Index: IX_Vod_IsSend                                         */
/*==============================================================*/
create index IX_Vod_IsSend on Vod
(
   IsSend
);

/*==============================================================*/
/* Index: IX_VEvaluate_VodId                                    */
/*==============================================================*/
create index IX_VEvaluate_VodId on VodEvaluate
(
   VodId
);

/*==============================================================*/
/* Index: IX_VEvaluate_CustomerGuid                             */
/*==============================================================*/
create index IX_VEvaluate_CustomerGuid on VodEvaluate
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_VEvaluate_PublishDate                              */
/*==============================================================*/
create index IX_VEvaluate_PublishDate on VodEvaluate
(
   PublishDate
);

/*==============================================================*/
/* Index: IX_VEvaluateR_EvaluateId                              */
/*==============================================================*/
create index IX_VEvaluateR_EvaluateId on VodEvaluateReply
(
   VodEvaluateId
);

/*==============================================================*/
/* Index: IX_VEvaluateR_CustomerGuid                            */
/*==============================================================*/
create index IX_VEvaluateR_CustomerGuid on VodEvaluateReply
(
   ReplyCustomerGuid
);

/*==============================================================*/
/* Index: IX_VEvaluateR_PublishDate                             */
/*==============================================================*/
create index IX_VEvaluateR_PublishDate on VodEvaluateReply
(
   PublishDate
);

/*==============================================================*/
/* Index: IX_VodKeyWord_VodId                                   */
/*==============================================================*/
create index IX_VodKeyWord_VodId on VodKeyWord
(
   VodId
);

/*==============================================================*/
/* Index: IX_VoteR_CustomerGuid                                 */
/*==============================================================*/
create index IX_VoteR_CustomerGuid on VoteRecord
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_VoteR_TopicId                                      */
/*==============================================================*/
create index IX_VoteR_TopicId on VoteRecord
(
   TopicId
);

