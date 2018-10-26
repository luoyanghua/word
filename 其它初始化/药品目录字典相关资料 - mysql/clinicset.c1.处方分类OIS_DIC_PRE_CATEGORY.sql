/*==============================================================*/
/* Table: OIS_DIC_PRE_CATEGORY                                  */
/*==============================================================*/
create table OIS_DIC_PRE_CATEGORY
(
   id                   int not null,
   name                 varchar(32) not null,
   short_name           varchar(4),
   title                varchar(64),
   hint                 smallint default 0,
   pres_type            varchar(25) not null,
   assos_reg_dept       varchar(256),
   assos_nature         varchar(256),
   is_default           TINYINT (1) not null default 0,
   state                smallint not null default 1,
   branch_code          varchar(10) not null,
   med_limit            varchar(50),
   type                 smallint not null default 1,
   code                 varchar(6),
   tag                  varchar(2),
   independent_seq      varchar(100),
   sign_grade           varchar(6),
   primary key (id)
);

alter table OIS_DIC_PRE_CATEGORY comment 'pres_type：可多个, assos_nature：允许多个';