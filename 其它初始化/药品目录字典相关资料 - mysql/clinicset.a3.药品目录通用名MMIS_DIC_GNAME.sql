/*==============================================================*/
/* Table: MMIS_DIC_GNAME                                        */
/*==============================================================*/
create table MMIS_DIC_GNAME
(
   id                   int not null,
   code                 varchar(12) not null,
   name                 varchar(128) not null,
   ename                varchar(64),
   che_name             varchar(64),
   phar_id              int,
   form_id              varchar(64) not null,
   spec                 varchar(64) not null,
   type                 varchar(2) not null,
   inputcode1           varchar(8),
   inputcode2           varchar(8),
   remark               varchar(256),
   state                smallint not null default 1,
   create_empid         int not null,
   create_time          datetime not null,
   modify_empid         int not null,
   modify_time          datetime not null,
   primary key (id),
   key MMIS_DIC_GNAME_U_NAME_SPEC (name, spec)
);

alter table MMIS_DIC_GNAME comment 'type：Y西药、Z成药、C草药、A试剂、R原材料、M材料类、O其他
state：0=停用,1=在用,2=删';