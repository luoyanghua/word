/*==============================================================*/
/* Table: CIS_DIC_EXEC_FREQ                                     */
/*==============================================================*/
create table CIS_DIC_EXEC_FREQ
(
   id                   int not null,
   branch_code          varchar(10) not null,
   code                 varchar(8),
   name                 varchar(32),
   days                 int,
   times                int,
   long_term_used       TINYINT (1) not null,
   temp_used            TINYINT (1) not null,
   out_med_used         TINYINT (1) not null,
   is_spare             TINYINT (1) not null,
   is_continuous        TINYINT (1) not null,
   state                smallint not null,
   ord                  varchar(8),
   modify_empid         int,
   modify_time          datetime,
   remark               varchar(128),
   freq_id_c            int,
   primary key (id)
);

alter table CIS_DIC_EXEC_FREQ comment 'long_term_used：0=否/1=是
temp_used：0=否/1=是
out_med';
