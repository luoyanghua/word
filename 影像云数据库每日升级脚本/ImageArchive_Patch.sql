/*==============================================================*/
/* 2018-08-31

ExamCheckData���������У�ԣ�ɾ��ԭ���ĸ�������������id������������ɾ������Ҫ�������������µľۺ�����

*/
/*==============================================================*/
# �����ű���������־��
alter table examcheckdata drop primary key;
alter table examcheckdata add id int(12) first;
alter table examcheckdata change id id int not null auto_increment primary key; 
drop index IX_ECD_RegistFlag on examcheckdata;
drop index IX_ECD_UploadReportFlag on examcheckdata;
drop index IX_ECD_UploadImageFlag on examcheckdata;
drop index IX_ECD_UploadFilmFlag on examcheckdata;
drop index IX_ECD_CollectionTime on examcheckdata;
create index IX_ECD_HospitalCode on examcheckdata(HospitalCode);
create index IX_ECD_DataSource on examcheckdata(DataSource);
create index IX_ECD_ExamineType on examcheckdata(ExamineType);
create index IX_ECD_PerformTime on examcheckdata(PerformTime);
