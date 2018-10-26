/*==============================================================*/
/* Table: MMIS_DIC_MED_TYPE                                     */
/*==============================================================*/
create table MMIS_DIC_MED_TYPE
(
   id                   int not null,
   branch_code          varchar(12),
   name                 varchar(32) not null,
   type                 varchar(2),
   acc_id               int not null,
   fee_id               int,
   ord                  varchar(8),
   state                smallint not null default 1,
   primary key (id)
);

alter table MMIS_DIC_MED_TYPE comment 'id：机构ID 3位+3位流水号
type：Y：西药，Z：成药，C：草药，A：试剂，R：原材料，M：材料，O';