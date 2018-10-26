/*==============================================================*/
/* Table: MMIS_DIC_MED_CERT                                     */
/*==============================================================*/
create table MMIS_DIC_MED_CERT
(
   med_id               int not null,
   reg_trade_mark       varchar(64),
   reg_appr_no          varchar(64),
   reg_appr_exp         datetime,
   gmp_no               varchar(64),
   gmp_cert_date        datetime,
   gmp_exp              datetime,
   purc_exame_rep_no    varchar(64),
   purc_exame_rep_batch_no varchar(64),
   imp_reg_cert_no      varchar(64),
   imp_reg_cert_exp     datetime,
   imp_qc_no            varchar(64),
   imp_qc_exp           datetime,
   imp_rep_batch_no     varchar(64),
   imp_rep_exp          datetime,
   proxy_exp            datetime,
   exp_month            int,
   prod_lic_no          varchar(64),
   prod_lic_appr_date   datetime,
   prod_lic_exp         datetime,
   biol_prod_cert_no    varchar(64),
   biol_prod_cert_batch_no varchar(64),
   biol_prod_cert_exp   datetime,
   reg_cert_no          varchar(64),
   reg_cert_exp         datetime,
   create_empid         int not null,
   create_time          datetime not null,
   modify_empid         int not null,
   modify_time          datetime not null,
   primary key (med_id)
);

alter table MMIS_DIC_MED_CERT comment '药品证书字典';