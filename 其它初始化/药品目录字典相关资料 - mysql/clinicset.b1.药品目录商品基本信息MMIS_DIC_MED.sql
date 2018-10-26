/*==============================================================*/
/* Table: MMIS_DIC_MED                                          */
/*==============================================================*/
create table MMIS_DIC_MED
(
   id                   int not null,
   branch_code          varchar(12) not null,
   code                 varchar(12) not null,
   med_id_c             int,
   gname_id             int,
   name                 varchar(128) not null,
   ename                varchar(64),
   phar_id              int,
   form_id              int not null,
   spec                 varchar(64) not null,
   type                 varchar(2) not null,
   med_type_id          int not null,
   factory_id           int,
   origin               varchar(32),
   factory_class        smallint,
   efid                 varchar(32),
   min_pack_unit        varchar(8) not null,
   retail_price         decimal(12,4) not null,
   reta_price_unit      varchar(8) not null,
   reta_ratio           int not null,
   trade_price          decimal(12,4) default 0,
   bid_price            decimal(12,4),
   top_price            decimal(12,4),
   national_price       decimal(12,4),
   pur_price            decimal(12,4) default 0,
   price_level          smallint,
   pur_unit             varchar(8) not null,
   pur_ratio            int not null,
   stor_temp_id         int,
   stor_humidity        varchar(32),
   is_shading           TINYINT (1) not null,
   is_self_produc       TINYINT (1) not null,
   can_byo              TINYINT (1) not null,
   is_pivas             TINYINT (1) not null,
   can_osp              TINYINT (1) default 0,
   is_reject_return     TINYINT (1),
   reject_ret_msg       varchar(32),
   spec_msg             varchar(128),
   out_used             TINYINT (1) not null,
   in_used              TINYINT (1) not null,
   other_used           TINYINT (1) not null,
   remark               varchar(256),
   state                smallint not null default 1,
   create_empid         int not null,
   create_time          datetime not null,
   modify_empid         int not null,
   modify_time          datetime not null,
   pur_cust_id          int,
   next_seq             int,
   biz_permit           varchar(60),
   reta_price_rule_id   int not null,
   state_sn             bigint,
   primary key (id)
);

alter table MMIS_DIC_MED comment 'type：Y：西药，Z：成药，C：草药，A：试剂，R：原材料，M：材料类，O：其他
form_id：机构ID';

/*==============================================================*/
/* Index: IDX_MED_ID_C                                          */
/*==============================================================*/
create index IDX_MED_ID_C on MMIS_DIC_MED
(
   med_id_c
);

/*==============================================================*/
/* Index: IDX_MMIS_DIC_MED_BRANCHCODE                           */
/*==============================================================*/
create index IDX_MMIS_DIC_MED_BRANCHCODE on MMIS_DIC_MED
(
   branch_code
);