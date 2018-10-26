/*==============================================================*/
/* Table: MMIS_DIC_FORM                                         */
/*==============================================================*/
create table MMIS_DIC_FORM
(
   id                   int not null,
   branch_code          varchar(12) not null,
   form_id_c            int,
   code                 varchar(12) not null,
   name                 varchar(32) not null,
   sname                varchar(12),
   dosage_class         smallint default 0,
   can_dosage           TINYINT (1) default 0,
   ord                  varchar(8),
   inputcode1           varchar(8),
   inputcode2           varchar(8),
   state                smallint not null default 1,
   create_empid         int not null,
   create_time          datetime not null,
   modify_empid         int not null,
   modify_time          datetime not null,
   print_type           TINYINT (1) default 1,
   primary key (id)
);

alter table MMIS_DIC_FORM comment 'id：机构ID 3位+4位流水号
dosage_class：0：针剂，1：片剂，2：其他
can';
