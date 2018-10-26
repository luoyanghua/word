/*==============================================================*/
/* Table: CIS_DIC_EXEC_WAY                                      */
/*==============================================================*/
create table CIS_DIC_EXEC_WAY
(
   id                   int not null,
   branch_code          varchar(10) not null,
   code                 varchar(8) not null,
   way_id_c             int,
   name                 varchar(32) not null,
   short_name           varchar(16),
   wm_used              TINYINT (1) not null,
   cpm_used             TINYINT (1) not null,
   cm_used              TINYINT (1) not null,
   other_used           TINYINT (1) not null,
   type_id              smallint not null,
   ord                  varchar(8),
   state                smallint not null,
   create_empid         int,
   create_time          datetime,
   modify_empid         int,
   modify_time          datetime,
   primary key (id)
);

alter table CIS_DIC_EXEC_WAY comment 'way_id_c：CIS_DIC_EXEC_WAY_C.ID
wm_used：0=否,1=是';