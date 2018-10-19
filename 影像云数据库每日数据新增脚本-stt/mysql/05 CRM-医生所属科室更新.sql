/*============================================================================================*/
/* CRM 数据库                                                                                 */
/* UpdateDate:2018-07-09                                                                      */
/* Author:Shentt                                                                              */
/*============================================================================================*/

update  DoctorOffice a join DoctorMember b on a.CustomerGuid=b.CustomerGuid set a.SubjectFirstId=b.Officeid,
a.SubjectFirstName=b.OFfice where a.SubjectFirstId is null and a.SubjectFirstName is null;

DELETE  from  DoctorOffice  where CustomerGuid not in (select CustomerGuid from DoctorMember );

insert into  DoctorOffice(CustomerGuid,SubjectFirstId,SubjectFirstName) 
select a.CustomerGuid,a.Officeid,a.Office from DoctorMember a left join (select distinct CustomerGuid from DoctorOffice)b on a.CustomerGuid=b.CustomerGuid where b.CustomerGuid is null;
