
/*==============================================================*/
/* Table: OIS_PRESCRIPTION                                      */
/*==============================================================*/
create table OIS_PRESCRIPTION
(
   pres_id              bigint not null,
   serial_number        bigint,
   serv_id              char(36),
   type                 smallint,
   category             smallint,
   bm_day               int,
   demand               varchar(128),
   out_no               int,
   emp_id               int,
   create_time          datetime,
   biz_no               bigint,
   diags                varchar(256),
   source_type          smallint,
   branch_code          varchar(10),
   bill_id              bigint,
   state                smallint,
   biz_type             smallint,
   overview             varchar(2000),
   center_pres_id       varchar(20),
   obs_check_time       datetime,
   obs_check_emp        int,
   primary key (pres_id)
);

alter table OIS_PRESCRIPTION comment 'type： 1:西药,2:成药,3:中药,4:免煎中药
bill_id：年月日6+机构ID3+流水号6';

/*==============================================================*/
/* Index: IDX_BILL_ID                                           */
/*==============================================================*/
create index IDX_BILL_ID on OIS_PRESCRIPTION
(
   bill_id
);


