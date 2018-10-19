/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2000                    */
/* Created on:     2017/10/10 14:47:07                          */
/*==============================================================*/


/*==============================================================*/
/* Index: IX_Adv_AdviseSource                                   */
/*==============================================================*/
create index IX_Adv_AdviseSource on Advise (
AdviseSource ASC
)
go

/*==============================================================*/
/* Index: IX_Adv_AdviseTarget                                   */
/*==============================================================*/
create index IX_Adv_AdviseTarget on Advise (
AdviseTarget ASC
)
go

/*==============================================================*/
/* Index: IX_Adv_TargetGuid                                     */
/*==============================================================*/
create index IX_Adv_TargetGuid on Advise (
TargetGuid ASC
)
go

/*==============================================================*/
/* Index: IX_Adv_BusinessId                                     */
/*==============================================================*/
create index IX_Adv_BusinessId on Advise (
BusinessId ASC
)
go

/*==============================================================*/
/* Index: IX_Adv_CustomerGuid                                   */
/*==============================================================*/
create index IX_Adv_CustomerGuid on Advise (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_Adv_Phone                                          */
/*==============================================================*/
create index IX_Adv_Phone on Advise (
Phone ASC
)
go

/*==============================================================*/
/* Index: IX_Adv_AdviseTime                                     */
/*==============================================================*/
create index IX_Adv_AdviseTime on Advise (
AdviseTime ASC
)
go

/*==============================================================*/
/* Index: IX_Adv_AcceptGuid                                     */
/*==============================================================*/
create index IX_Adv_AcceptGuid on Advise (
AcceptGuid ASC
)
go

/*==============================================================*/
/* Index: IX_Adv_AcceptTime                                     */
/*==============================================================*/
create index IX_Adv_AcceptTime on Advise (
AcceptTime ASC
)
go

/*==============================================================*/
/* Index: IX_Adv_State                                          */
/*==============================================================*/
create index IX_Adv_State on Advise (
State ASC
)
go

/*==============================================================*/
/* Index: IX_BAsk_AskSource                                     */
/*==============================================================*/
create index IX_BAsk_AskSource on BusinessAsk (
AskSource ASC
)
go

/*==============================================================*/
/* Index: IX_BAsk_AskTarget                                     */
/*==============================================================*/
create index IX_BAsk_AskTarget on BusinessAsk (
AskTarget ASC
)
go

/*==============================================================*/
/* Index: IX_BAsk_TargetGuid                                    */
/*==============================================================*/
create index IX_BAsk_TargetGuid on BusinessAsk (
TargetGuid ASC
)
go

/*==============================================================*/
/* Index: IX_BAsk_Kind                                          */
/*==============================================================*/
create index IX_BAsk_Kind on BusinessAsk (
Kind ASC
)
go

/*==============================================================*/
/* Index: IX_BAsk_CustomerGuid                                  */
/*==============================================================*/
create index IX_BAsk_CustomerGuid on BusinessAsk (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_BAsk_Phone                                         */
/*==============================================================*/
create index IX_BAsk_Phone on BusinessAsk (
Phone ASC
)
go

/*==============================================================*/
/* Index: IX_BAsk_AcceptGuid                                    */
/*==============================================================*/
create index IX_BAsk_AcceptGuid on BusinessAsk (
AcceptGuid ASC
)
go

/*==============================================================*/
/* Index: IX_BAsk_AskTime                                       */
/*==============================================================*/
create index IX_BAsk_AskTime on BusinessAsk (
AskTime ASC
)
go

/*==============================================================*/
/* Index: IX_BAsk_AcceptTime                                    */
/*==============================================================*/
create index IX_BAsk_AcceptTime on BusinessAsk (
AcceptTime ASC
)
go

/*==============================================================*/
/* Index: IX_BAsk_State                                         */
/*==============================================================*/
create index IX_BAsk_State on BusinessAsk (
State ASC
)
go

/*==============================================================*/
/* Index: IX_CRe_Kind                                           */
/*==============================================================*/
create index IX_CRe_Kind on ClientReview (
Kind ASC
)
go

/*==============================================================*/
/* Index: IX_CRe_BusinessId                                     */
/*==============================================================*/
create index IX_CRe_BusinessId on ClientReview (
BusinessId ASC
)
go

/*==============================================================*/
/* Index: IX_CRe_CustomerGuid                                   */
/*==============================================================*/
create index IX_CRe_CustomerGuid on ClientReview (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_CRe_Phone                                          */
/*==============================================================*/
create index IX_CRe_Phone on ClientReview (
Phone ASC
)
go

/*==============================================================*/
/* Index: IX_CRe_AdviseTime                                     */
/*==============================================================*/
create index IX_CRe_AdviseTime on ClientReview (
AdviseTime ASC
)
go

/*==============================================================*/
/* Index: IX_CRe_AcceptGuid                                     */
/*==============================================================*/
create index IX_CRe_AcceptGuid on ClientReview (
AcceptGuid ASC
)
go

/*==============================================================*/
/* Index: IX_CRe_AcceptTime                                     */
/*==============================================================*/
create index IX_CRe_AcceptTime on ClientReview (
AcceptTime ASC
)
go

/*==============================================================*/
/* Index: IX_CRe_State                                          */
/*==============================================================*/
create index IX_CRe_State on ClientReview (
State ASC
)
go

/*==============================================================*/
/* Index: IX_Comp_ComplaintSource                               */
/*==============================================================*/
create index IX_Comp_ComplaintSource on Complaint (
ComplaintSource ASC
)
go

/*==============================================================*/
/* Index: IX_Comp_ComplaintTarget                               */
/*==============================================================*/
create index IX_Comp_ComplaintTarget on Complaint (
ComplaintTarget ASC
)
go

/*==============================================================*/
/* Index: IX_Comp_TargetGuid                                    */
/*==============================================================*/
create index IX_Comp_TargetGuid on Complaint (
TargetGuid ASC
)
go

/*==============================================================*/
/* Index: IX_Comp_BusinessId                                    */
/*==============================================================*/
create index IX_Comp_BusinessId on Complaint (
BusinessId ASC
)
go

/*==============================================================*/
/* Index: IX_Comp_CustomerGuid                                  */
/*==============================================================*/
create index IX_Comp_CustomerGuid on Complaint (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_Comp_Phone                                         */
/*==============================================================*/
create index IX_Comp_Phone on Complaint (
Phone ASC
)
go

/*==============================================================*/
/* Index: IX_Comp_ComplaintTime                                 */
/*==============================================================*/
create index IX_Comp_ComplaintTime on Complaint (
ComplaintTime ASC
)
go

/*==============================================================*/
/* Index: IX_Comp_AcceptGuid                                    */
/*==============================================================*/
create index IX_Comp_AcceptGuid on Complaint (
AcceptGuid ASC
)
go

/*==============================================================*/
/* Index: IX_Comp_AcceptTime                                    */
/*==============================================================*/
create index IX_Comp_AcceptTime on Complaint (
AcceptTime ASC
)
go

/*==============================================================*/
/* Index: IX_Comp_State                                         */
/*==============================================================*/
create index IX_Comp_State on Complaint (
State ASC
)
go

