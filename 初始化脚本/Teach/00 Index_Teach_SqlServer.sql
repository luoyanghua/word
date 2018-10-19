/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2000                    */
/* Created on:     2017/10/10 14:57:48                          */
/*==============================================================*/


/*==============================================================*/
/* Index: IX_CRead_CourseId                                     */
/*==============================================================*/
create index IX_CRead_CourseId on CourseRead (
CourseId ASC
)
go

/*==============================================================*/
/* Index: IX_CRead_CustomerGuid                                 */
/*==============================================================*/
create index IX_CRead_CustomerGuid on CourseRead (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_DiscussR_ReplyId                                   */
/*==============================================================*/
create index IX_DiscussR_ReplyId on DiscussReply (
ReplyId ASC
)
go

/*==============================================================*/
/* Index: IX_DiscussR_TopicId                                   */
/*==============================================================*/
create index IX_DiscussR_TopicId on DiscussReply (
TopicId ASC
)
go

/*==============================================================*/
/* Index: IX_DiscussR_CustomerGuid                              */
/*==============================================================*/
create index IX_DiscussR_CustomerGuid on DiscussReply (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_DiscussR_F_Id                                      */
/*==============================================================*/
create index IX_DiscussR_F_Id on DiscussReply (
F_Id ASC
)
go

/*==============================================================*/
/* Index: IX_DiscussT_TopicId                                   */
/*==============================================================*/
create index IX_DiscussT_TopicId on DiscussTopic (
TopicId ASC
)
go

/*==============================================================*/
/* Index: IX_DiscussT_TeachId                                   */
/*==============================================================*/
create index IX_DiscussT_TeachId on DiscussTopic (
TeachId ASC
)
go

/*==============================================================*/
/* Index: IX_DiscussT_TeachKind                                 */
/*==============================================================*/
create index IX_DiscussT_TeachKind on DiscussTopic (
TeachKind ASC
)
go

/*==============================================================*/
/* Index: IX_DiscussT_ModuleCode                                */
/*==============================================================*/
create index IX_DiscussT_ModuleCode on DiscussTopic (
ModuleCode ASC
)
go

/*==============================================================*/
/* Index: IX_DiscussT_CustomerGuid                              */
/*==============================================================*/
create index IX_DiscussT_CustomerGuid on DiscussTopic (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_MyTopic_CustomerGuid                               */
/*==============================================================*/
create index IX_MyTopic_CustomerGuid on MyTopic (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_MyTopic_TopicId                                    */
/*==============================================================*/
create index IX_MyTopic_TopicId on MyTopic (
TopicId ASC
)
go

/*==============================================================*/
/* Index: IX_MyTopic_TeachId                                    */
/*==============================================================*/
create index IX_MyTopic_TeachId on MyTopic (
TeachId ASC
)
go

/*==============================================================*/
/* Index: IX_RTeach_TeachId                                     */
/*==============================================================*/
create index IX_RTeach_TeachId on RecommendTeach (
TeachId ASC
)
go

/*==============================================================*/
/* Index: IX_RTeach_TeachKind                                   */
/*==============================================================*/
create index IX_RTeach_TeachKind on RecommendTeach (
TeachKind ASC
)
go

/*==============================================================*/
/* Index: IX_RMap_ResourceId                                    */
/*==============================================================*/
create index IX_RMap_ResourceId on ResourceMap (
ResourceId ASC
)
go

/*==============================================================*/
/* Index: IX_RMap_ToResourceId                                  */
/*==============================================================*/
create index IX_RMap_ToResourceId on ResourceMap (
ToResourceId ASC
)
go

/*==============================================================*/
/* Index: IX_STT_SubjectId                                      */
/*==============================================================*/
create index IX_STT_SubjectId on SubjectToTeach (
SubjectId ASC
)
go

/*==============================================================*/
/* Index: IX_STT_TeachId                                        */
/*==============================================================*/
create index IX_STT_TeachId on SubjectToTeach (
TeachId ASC
)
go

/*==============================================================*/
/* Index: IX_STT_TeachKind                                      */
/*==============================================================*/
create index IX_STT_TeachKind on SubjectToTeach (
TeachKind ASC
)
go

/*==============================================================*/
/* Index: IX_Teach_TeachId                                      */
/*==============================================================*/
create index IX_Teach_TeachId on Teach (
TeachId ASC
)
go

/*==============================================================*/
/* Index: IX_Teach_ColumnCode                                   */
/*==============================================================*/
create index IX_Teach_ColumnCode on Teach (
ColumnCode ASC
)
go

/*==============================================================*/
/* Index: IX_Teach_FirstId                                      */
/*==============================================================*/
create index IX_Teach_FirstId on Teach (
FirstId ASC
)
go

/*==============================================================*/
/* Index: IX_Teach_ThirdId                                      */
/*==============================================================*/
create index IX_Teach_ThirdId on Teach (
ThirdId ASC
)
go

/*==============================================================*/
/* Index: IX_Teach_ConEduCode                                   */
/*==============================================================*/
create index IX_Teach_ConEduCode on Teach (
ConEduCode ASC
)
go

/*==============================================================*/
/* Index: IX_Teach_Level                                        */
/*==============================================================*/
create index IX_Teach_Level on Teach (
Level ASC
)
go

/*==============================================================*/
/* Index: IX_Teach_KeyWord                                      */
/*==============================================================*/
create index IX_Teach_KeyWord on Teach (
KeyWord ASC
)
go

/*==============================================================*/
/* Index: IX_Teach_CustomerGuid                                 */
/*==============================================================*/
create index IX_Teach_CustomerGuid on Teach (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_Teach_ServiceCenterId                              */
/*==============================================================*/
create index IX_Teach_ServiceCenterId on Teach (
TeachCenterId ASC
)
go

/*==============================================================*/
/* Index: IX_Teach_PublishDate                                  */
/*==============================================================*/
create index IX_Teach_PublishDate on Teach (
PublishDate ASC
)
go

/*==============================================================*/
/* Index: IX_Teach_State                                        */
/*==============================================================*/
create index IX_Teach_State on Teach (
State ASC
)
go

/*==============================================================*/
/* Index: IX_Teach_IsPrivate                                    */
/*==============================================================*/
create index IX_Teach_IsPrivate on Teach (
IsPrivate ASC
)
go

/*==============================================================*/
/* Index: IX_Teach_IsVod                                        */
/*==============================================================*/
create index IX_Teach_IsVod on Teach (
IsVod ASC
)
go

/*==============================================================*/
/* Index: IX_Teach_IsNotPlatform                                */
/*==============================================================*/
create index IX_Teach_IsNotPlatform on Teach (
IsNotPlatform ASC
)
go

/*==============================================================*/
/* Index: IX_Teach_IsAudit                                      */
/*==============================================================*/
create index IX_Teach_IsAudit on Teach (
IsAudit ASC
)
go

/*==============================================================*/
/* Index: IX_Teach_IsDown                                       */
/*==============================================================*/
create index IX_Teach_IsDown on Teach (
IsDown ASC
)
go

/*==============================================================*/
/* Index: IX_Teach_IsSend                                       */
/*==============================================================*/
create index IX_Teach_IsSend on Teach (
IsSend ASC
)
go

/*==============================================================*/
/* Index: IX_TAC_TeachId                                        */
/*==============================================================*/
create index IX_TAC_TeachId on TeachActCount (
TeachId ASC
)
go

/*==============================================================*/
/* Index: IX_TAC_TeachKind                                      */
/*==============================================================*/
create index IX_TAC_TeachKind on TeachActCount (
TeachKind ASC
)
go

/*==============================================================*/
/* Index: IX_TeachClinicData_TeachId                            */
/*==============================================================*/
create index IX_TeachClinicData_TeachId on TeachClinicData (
TeachId ASC
)
go

/*==============================================================*/
/* Index: IX_TCourse_CourseId                                   */
/*==============================================================*/
create index IX_TCourse_CourseId on TeachCourse (
CourseId ASC
)
go

/*==============================================================*/
/* Index: IX_TCourse_TeachId                                    */
/*==============================================================*/
create index IX_TCourse_TeachId on TeachCourse (
TeachId ASC
)
go

/*==============================================================*/
/* Index: IX_TCourse_TeachKind                                  */
/*==============================================================*/
create index IX_TCourse_TeachKind on TeachCourse (
TeachKind ASC
)
go

/*==============================================================*/
/* Index: IX_TCourse_CourseKind                                 */
/*==============================================================*/
create index IX_TCourse_CourseKind on TeachCourse (
CourseKind ASC
)
go

/*==============================================================*/
/* Index: IX_TEvaluate_TeachId                                  */
/*==============================================================*/
create index IX_TEvaluate_TeachId on TeachEvaluate (
TeachId ASC
)
go

/*==============================================================*/
/* Index: IX_TEvaluate_CustomerGuid                             */
/*==============================================================*/
create index IX_TEvaluate_CustomerGuid on TeachEvaluate (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_TEvaluate_PublishDate                              */
/*==============================================================*/
create index IX_TEvaluate_PublishDate on TeachEvaluate (
PublishDate ASC
)
go

/*==============================================================*/
/* Index: IX_TEvaluateR_EvaluateId                              */
/*==============================================================*/
create index IX_TEvaluateR_EvaluateId on TeachEvaluateReply (
TeachEvaluateId ASC
)
go

/*==============================================================*/
/* Index: IX_TEvaluateR_PublishDate                             */
/*==============================================================*/
create index IX_TEvaluateR_PublishDate on TeachEvaluateReply (
PublishDate ASC
)
go

/*==============================================================*/
/* Index: IX_TeachExpert_TeachId                                */
/*==============================================================*/
create index IX_TeachExpert_TeachId on TeachExpert (
TeachId ASC
)
go

/*==============================================================*/
/* Index: IX_TeachExpert_ExpertGuid                             */
/*==============================================================*/
create index IX_TeachExpert_ExpertGuid on TeachExpert (
ExpertGuid ASC
)
go

/*==============================================================*/
/* Index: IX_TeachRecord_TeachId                                */
/*==============================================================*/
create index IX_TeachRecord_TeachId on TeachJoinRecord (
TeachId ASC
)
go

/*==============================================================*/
/* Index: IX_TRecord_TeachKind                                  */
/*==============================================================*/
create index IX_TRecord_TeachKind on TeachJoinRecord (
TeachKind ASC
)
go

/*==============================================================*/
/* Index: IX_TeachRecord_CustomerGuid                           */
/*==============================================================*/
create index IX_TeachRecord_CustomerGuid on TeachJoinRecord (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_TeachKeyWord_TeachId                               */
/*==============================================================*/
create index IX_TeachKeyWord_TeachId on TeachKeyWord (
TeachId ASC
)
go

/*==============================================================*/
/* Index: IX_TS_TeachId                                         */
/*==============================================================*/
create index IX_TS_TeachId on TeachSearch (
TeachId ASC
)
go

/*==============================================================*/
/* Index: IX_TS_TeachKind                                       */
/*==============================================================*/
create index IX_TS_TeachKind on TeachSearch (
TeachKind ASC
)
go

/*==============================================================*/
/* Index: IX_TS_ColumnCode                                      */
/*==============================================================*/
create index IX_TS_ColumnCode on TeachSearch (
ColumnCode ASC
)
go

/*==============================================================*/
/* Index: IX_TS_FirstId                                         */
/*==============================================================*/
create index IX_TS_FirstId on TeachSearch (
FirstId ASC
)
go

/*==============================================================*/
/* Index: IX_TS_ThirdId                                         */
/*==============================================================*/
create index IX_TS_ThirdId on TeachSearch (
ThirdId ASC
)
go

/*==============================================================*/
/* Index: IX_TS_ConEduCode                                      */
/*==============================================================*/
create index IX_TS_ConEduCode on TeachSearch (
ConEduCode ASC
)
go

/*==============================================================*/
/* Index: IX_TS_Level                                           */
/*==============================================================*/
create index IX_TS_Level on TeachSearch (
Level ASC
)
go

/*==============================================================*/
/* Index: IX_TS_KeyWord                                         */
/*==============================================================*/
create index IX_TS_KeyWord on TeachSearch (
KeyWord ASC
)
go

/*==============================================================*/
/* Index: IX_TS_TeachCenterId                                   */
/*==============================================================*/
create index IX_TS_TeachCenterId on TeachSearch (
TeachCenterId ASC
)
go

/*==============================================================*/
/* Index: IX_TS_PublishDate                                     */
/*==============================================================*/
create index IX_TS_PublishDate on TeachSearch (
PublishDate ASC
)
go

/*==============================================================*/
/* Index: IX_TS_State                                           */
/*==============================================================*/
create index IX_TS_State on TeachSearch (
State ASC
)
go

/*==============================================================*/
/* Index: IX_TS_IsDown                                          */
/*==============================================================*/
create index IX_TS_IsDown on TeachSearch (
IsDown ASC
)
go

/*==============================================================*/
/* Index: IX_TSubject_SubjectId                                 */
/*==============================================================*/
create index IX_TSubject_SubjectId on TeachSubject (
SubjectId ASC
)
go

/*==============================================================*/
/* Index: IX_TSubject_CreateDate                                */
/*==============================================================*/
create index IX_TSubject_CreateDate on TeachSubject (
CreateDate ASC
)
go

/*==============================================================*/
/* Index: IX_TSubject_IsTop                                     */
/*==============================================================*/
create index IX_TSubject_IsTop on TeachSubject (
IsTop ASC
)
go

/*==============================================================*/
/* Index: IX_TTRecord_TeachId                                   */
/*==============================================================*/
create index IX_TTRecord_TeachId on TeachTopRecord (
TeachId ASC
)
go

/*==============================================================*/
/* Index: IX_TTRecord_TeachKind                                 */
/*==============================================================*/
create index IX_TTRecord_TeachKind on TeachTopRecord (
TeachKind ASC
)
go

/*==============================================================*/
/* Index: IX_TTRecord_CustomerGuid                              */
/*==============================================================*/
create index IX_TTRecord_CustomerGuid on TeachTopRecord (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_TeachVideo_TeachId                                 */
/*==============================================================*/
create index IX_TeachVideo_TeachId on TeachVideo (
TeachId ASC
)
go

/*==============================================================*/
/* Index: IX_Vod_VodId                                          */
/*==============================================================*/
create index IX_Vod_VodId on Vod (
VodId ASC
)
go

/*==============================================================*/
/* Index: IX_Vod_ColumnCode                                     */
/*==============================================================*/
create index IX_Vod_ColumnCode on Vod (
ColumnCode ASC
)
go

/*==============================================================*/
/* Index: IX_Vod_FirstId                                        */
/*==============================================================*/
create index IX_Vod_FirstId on Vod (
FirstId ASC
)
go

/*==============================================================*/
/* Index: IX_Vod_ThirdId                                        */
/*==============================================================*/
create index IX_Vod_ThirdId on Vod (
ThirdId ASC
)
go

/*==============================================================*/
/* Index: IX_Vod_ConEduCode                                     */
/*==============================================================*/
create index IX_Vod_ConEduCode on Vod (
ConEduCode ASC
)
go

/*==============================================================*/
/* Index: IX_Vod_Level                                          */
/*==============================================================*/
create index IX_Vod_Level on Vod (
Level ASC
)
go

/*==============================================================*/
/* Index: IX_Vod_KeyWord                                        */
/*==============================================================*/
create index IX_Vod_KeyWord on Vod (
KeyWord ASC
)
go

/*==============================================================*/
/* Index: IX_Vod_ECustomerGuid                                  */
/*==============================================================*/
create index IX_Vod_ECustomerGuid on Vod (
ExpertCustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_Vod_CustomerGuid                                   */
/*==============================================================*/
create index IX_Vod_CustomerGuid on Vod (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_Vod_ServiceCenterId                                */
/*==============================================================*/
create index IX_Vod_ServiceCenterId on Vod (
TeachCenterId ASC
)
go

/*==============================================================*/
/* Index: IX_Vod_PublishDate                                    */
/*==============================================================*/
create index IX_Vod_PublishDate on Vod (
PublishDate ASC
)
go

/*==============================================================*/
/* Index: IX_Vod_State                                          */
/*==============================================================*/
create index IX_Vod_State on Vod (
State ASC
)
go

/*==============================================================*/
/* Index: IX_Vod_IsPrivate                                      */
/*==============================================================*/
create index IX_Vod_IsPrivate on Vod (
IsPrivate ASC
)
go

/*==============================================================*/
/* Index: IX_Vod_IsAudit                                        */
/*==============================================================*/
create index IX_Vod_IsAudit on Vod (
IsAudit ASC
)
go

/*==============================================================*/
/* Index: IX_Vod_IsSend                                         */
/*==============================================================*/
create index IX_Vod_IsSend on Vod (
IsSend ASC
)
go

/*==============================================================*/
/* Index: IX_VEvaluate_VodId                                    */
/*==============================================================*/
create index IX_VEvaluate_VodId on VodEvaluate (
VodId ASC
)
go

/*==============================================================*/
/* Index: IX_VEvaluate_CustomerGuid                             */
/*==============================================================*/
create index IX_VEvaluate_CustomerGuid on VodEvaluate (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_VEvaluate_PublishDate                              */
/*==============================================================*/
create index IX_VEvaluate_PublishDate on VodEvaluate (
PublishDate ASC
)
go

/*==============================================================*/
/* Index: IX_VEvaluateR_EvaluateId                              */
/*==============================================================*/
create index IX_VEvaluateR_EvaluateId on VodEvaluateReply (
VodEvaluateId ASC
)
go

/*==============================================================*/
/* Index: IX_VEvaluateR_CustomerGuid                            */
/*==============================================================*/
create index IX_VEvaluateR_CustomerGuid on VodEvaluateReply (
ReplyCustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_VEvaluateR_PublishDate                             */
/*==============================================================*/
create index IX_VEvaluateR_PublishDate on VodEvaluateReply (
PublishDate ASC
)
go

/*==============================================================*/
/* Index: IX_VodKeyWord_VodId                                   */
/*==============================================================*/
create index IX_VodKeyWord_VodId on VodKeyWord (
VodId ASC
)
go

/*==============================================================*/
/* Index: IX_VoteR_CustomerGuid                                 */
/*==============================================================*/
create index IX_VoteR_CustomerGuid on VoteRecord (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_VoteR_TopicId                                      */
/*==============================================================*/
create index IX_VoteR_TopicId on VoteRecord (
TopicId ASC
)
go

