/*============================================================================================*/
/* CRM 数据库                                                                                 */
/* UpdateDate:2018-07-09                                                                      */
/* Author:Shentt                                                                              */
/*============================================================================================*/

update  a set  a.SubjectFirstId=b.officeid,
a.SubjectFirstName=b.office from DoctorOffice a join DoctorMember b on a.CustomerGuid=b.CustomerGuid where a.SubjectFirstId is null and a.SubjectFirstName is null;


DELETE  from  DoctorOffice  where CustomerGuid not in (select CustomerGuid from DoctorMember );

insert into  DoctorOffice(CustomerGuid,SubjectFirstId,SubjectFirstName) 
select a.CustomerGuid,a.Officeid,a.Office from DoctorMember a left join (select distinct CustomerGuid from DoctorOffice)b on a.CustomerGuid=b.CustomerGuid where b.CustomerGuid is null;
