/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2017/3/13 14:37:15                           */
/*==============================================================*/


/*==============================================================*/
/* Index: IX_Adv_AdviseSource                                   */
/*==============================================================*/
create index IX_Adv_AdviseSource on Advise
(
   AdviseSource
);

/*==============================================================*/
/* Index: IX_Adv_AdviseTarget                                   */
/*==============================================================*/
create index IX_Adv_AdviseTarget on Advise
(
   AdviseTarget
);

/*==============================================================*/
/* Index: IX_Adv_TargetGuid                                     */
/*==============================================================*/
create index IX_Adv_TargetGuid on Advise
(
   TargetGuid
);

/*==============================================================*/
/* Index: IX_Adv_BusinessId                                     */
/*==============================================================*/
create index IX_Adv_BusinessId on Advise
(
   BusinessId
);

/*==============================================================*/
/* Index: IX_Adv_CustomerGuid                                   */
/*==============================================================*/
create index IX_Adv_CustomerGuid on Advise
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_Adv_Phone                                          */
/*==============================================================*/
create index IX_Adv_Phone on Advise
(
   Phone
);

/*==============================================================*/
/* Index: IX_Adv_AdviseTime                                     */
/*==============================================================*/
create index IX_Adv_AdviseTime on Advise
(
   AdviseTime
);

/*==============================================================*/
/* Index: IX_Adv_AcceptGuid                                     */
/*==============================================================*/
create index IX_Adv_AcceptGuid on Advise
(
   AcceptGuid
);

/*==============================================================*/
/* Index: IX_Adv_AcceptTime                                     */
/*==============================================================*/
create index IX_Adv_AcceptTime on Advise
(
   AcceptTime
);

/*==============================================================*/
/* Index: IX_Adv_State                                          */
/*==============================================================*/
create index IX_Adv_State on Advise
(
   State
);

/*==============================================================*/
/* Index: IX_BAsk_AskSource                                     */
/*==============================================================*/
create index IX_BAsk_AskSource on BusinessAsk
(
   AskSource
);

/*==============================================================*/
/* Index: IX_BAsk_AskTarget                                     */
/*==============================================================*/
create index IX_BAsk_AskTarget on BusinessAsk
(
   AskTarget
);

/*==============================================================*/
/* Index: IX_BAsk_TargetGuid                                    */
/*==============================================================*/
create index IX_BAsk_TargetGuid on BusinessAsk
(
   TargetGuid
);

/*==============================================================*/
/* Index: IX_BAsk_Kind                                          */
/*==============================================================*/
create index IX_BAsk_Kind on BusinessAsk
(
   Kind
);

/*==============================================================*/
/* Index: IX_BAsk_CustomerGuid                                  */
/*==============================================================*/
create index IX_BAsk_CustomerGuid on BusinessAsk
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_BAsk_Phone                                         */
/*==============================================================*/
create index IX_BAsk_Phone on BusinessAsk
(
   Phone
);

/*==============================================================*/
/* Index: IX_BAsk_AcceptGuid                                    */
/*==============================================================*/
create index IX_BAsk_AcceptGuid on BusinessAsk
(
   AcceptGuid
);

/*==============================================================*/
/* Index: IX_BAsk_AskTime                                       */
/*==============================================================*/
create index IX_BAsk_AskTime on BusinessAsk
(
   AskTime
);

/*==============================================================*/
/* Index: IX_BAsk_AcceptTime                                    */
/*==============================================================*/
create index IX_BAsk_AcceptTime on BusinessAsk
(
   AcceptTime
);

/*==============================================================*/
/* Index: IX_BAsk_State                                         */
/*==============================================================*/
create index IX_BAsk_State on BusinessAsk
(
   State
);

/*==============================================================*/
/* Index: IX_CRe_Kind                                           */
/*==============================================================*/
create index IX_CRe_Kind on ClientReview
(
   Kind
);

/*==============================================================*/
/* Index: IX_CRe_BusinessId                                     */
/*==============================================================*/
create index IX_CRe_BusinessId on ClientReview
(
   BusinessId
);

/*==============================================================*/
/* Index: IX_CRe_CustomerGuid                                   */
/*==============================================================*/
create index IX_CRe_CustomerGuid on ClientReview
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_CRe_Phone                                          */
/*==============================================================*/
create index IX_CRe_Phone on ClientReview
(
   Phone
);

/*==============================================================*/
/* Index: IX_CRe_AdviseTime                                     */
/*==============================================================*/
create index IX_CRe_AdviseTime on ClientReview
(
   AdviseTime
);

/*==============================================================*/
/* Index: IX_CRe_AcceptGuid                                     */
/*==============================================================*/
create index IX_CRe_AcceptGuid on ClientReview
(
   AcceptGuid
);

/*==============================================================*/
/* Index: IX_CRe_AcceptTime                                     */
/*==============================================================*/
create index IX_CRe_AcceptTime on ClientReview
(
   AcceptTime
);

/*==============================================================*/
/* Index: IX_CRe_State                                          */
/*==============================================================*/
create index IX_CRe_State on ClientReview
(
   State
);

/*==============================================================*/
/* Index: IX_Comp_ComplaintSource                               */
/*==============================================================*/
create index IX_Comp_ComplaintSource on Complaint
(
   ComplaintSource
);

/*==============================================================*/
/* Index: IX_Comp_ComplaintTarget                               */
/*==============================================================*/
create index IX_Comp_ComplaintTarget on Complaint
(
   ComplaintTarget
);

/*==============================================================*/
/* Index: IX_Comp_TargetGuid                                    */
/*==============================================================*/
create index IX_Comp_TargetGuid on Complaint
(
   TargetGuid
);

/*==============================================================*/
/* Index: IX_Comp_BusinessId                                    */
/*==============================================================*/
create index IX_Comp_BusinessId on Complaint
(
   BusinessId
);

/*==============================================================*/
/* Index: IX_Comp_CustomerGuid                                  */
/*==============================================================*/
create index IX_Comp_CustomerGuid on Complaint
(
   CustomerGuid
);

/*==============================================================*/
/* Index: IX_Comp_Phone                                         */
/*==============================================================*/
create index IX_Comp_Phone on Complaint
(
   Phone
);

/*==============================================================*/
/* Index: IX_Comp_ComplaintTime                                 */
/*==============================================================*/
create index IX_Comp_ComplaintTime on Complaint
(
   ComplaintTime
);

/*==============================================================*/
/* Index: IX_Comp_AcceptGuid                                    */
/*==============================================================*/
create index IX_Comp_AcceptGuid on Complaint
(
   AcceptGuid
);

/*==============================================================*/
/* Index: IX_Comp_AcceptTime                                    */
/*==============================================================*/
create index IX_Comp_AcceptTime on Complaint
(
   AcceptTime
);

/*==============================================================*/
/* Index: IX_Comp_State                                         */
/*==============================================================*/
create index IX_Comp_State on Complaint
(
   State
);

