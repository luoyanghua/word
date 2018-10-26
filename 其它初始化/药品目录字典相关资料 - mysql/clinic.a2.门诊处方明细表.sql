/*==============================================================*/
/* Table: OIS_PRES_DETAIL                                       */
/*==============================================================*/
create table OIS_PRES_DETAIL
(
   pres_id              bigint not null,
   seq                  int not null,
   serv_id              char(36),
   sto_id               int,
   group_no             int default 1,
   times                int,
   med_id               int,
   dosage               decimal(10,4),
   dose                 decimal(10,4),
   `usage`              int,
   drug_way             int,
   remark               varchar(128),
   quantity             decimal(10,4),
   skin_test            char(1),
   med_ins_mark         TINYINT (1) default 0,
   detail_dose_flag     TINYINT (1) default 0,
   emp_id               int,
   byo                  TINYINT (1) default 0,
   med_name             varchar(128),
   returntimes          int,
   returnquantity       decimal(10,4),
   minquantity          decimal(10,4),
   primary key (pres_id, seq)
);

alter table OIS_PRES_DETAIL comment 'skin_test：+/-/W/M/T 阳/阴/未/免/脱敏
byo：0:非自备/1:自备';