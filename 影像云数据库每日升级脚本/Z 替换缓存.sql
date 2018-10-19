create table Developer
(
   Id                   int not null auto_increment,
   CustomerGuid         char(36),
   WorkUnit             varchar(250),
   BusinessProject      varchar(250),
   primary key (Id)
);