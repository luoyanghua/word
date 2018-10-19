/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2000                    */
/* Created on:     2017/10/10 14:46:49                          */
/*==============================================================*/


/*==============================================================*/
/* Index: IX_Cert_CustomerGuid                                  */
/*==============================================================*/
create index IX_Cert_CustomerGuid on Certificate (
CustomerGuid ASC
)
go

/*==============================================================*/
/* Index: IX_Media_MediaServerId                                */
/*==============================================================*/
create index IX_Media_MediaServerId on Media (
MediaServerId ASC
)
go

/*==============================================================*/
/* Index: IX_Media_IsValid                                      */
/*==============================================================*/
create index IX_Media_IsValid on Media (
IsValid ASC
)
go

