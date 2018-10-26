/*==============================================================*/
/* Table: MMIS_DIC_FACTORY_C                                    */
/*==============================================================*/
create table MMIS_DIC_FACTORY_C
(
   id                   int not null,
   code                 varchar(8) not null,
   name                 varchar(64) not null,
   sname                varchar(16) not null,
   legal_person         varchar(32),
   contact              varchar(32),
   telephone            varchar(16),
   address              varchar(64),
   zipcode              varchar(8),
   email                varchar(64),
   ord                  varchar(8) not null,
   inputcode1           varchar(8),
   inputcode2           varchar(8),
   remark               varchar(128),
   state                smallint not null default 1,
   create_empid         int not null,
   create_time          datetime not null,
   modify_empid         int not null,
   modify_time          datetime not null,
   appr_state           int,
   submit_empid         int,
   submit_time          datetime,
   appr_empid           int,
   appr_time            datetime,
   branch_code          varchar(12),
   primary key (id)
);

alter table MMIS_DIC_FACTORY_C comment 'state：0：停用，1：在用，2：删除
appr_state： 0：初始，10：提交审批，20：审批退回，';