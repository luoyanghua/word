/*============================================================================================*/
/* eWorldMed ����ҽ�ƻ���Code                                                                 */
/* UpdateDate:2015-05-12                                                                      */
/* Author:Zhangj                                                                              */
/* Ϊ����hospitalIDΪ�գ�Ŀǰ�������id��ΪҽԺ�ı�ţ������ʵ�ʵ�ҽԺ��ţ��빤��ʦά��     */
/*============================================================================================*/

update Hospital set HospitalCode = Id where HospitalCode is null or HospitalCode = '';


--  ֱϽ�� �޸�
update Hospital set CountyName=CityName WHERE ProvinceName='�Ϻ���' AND CityName !='�Ϻ���';
update Hospital set CityName='�Ϻ���' WHERE ProvinceName='�Ϻ���' ;

update Hospital set CountyName=CityName WHERE ProvinceName='������' AND CityName !='������';
update Hospital set CityName='������' WHERE ProvinceName='������' ;

update Hospital set CountyName=CityName WHERE ProvinceName='������' AND CityName !='������';
update Hospital set CityName='������' WHERE ProvinceName='������' ;

update Hospital set CountyName=CityName WHERE ProvinceName='�����' AND CityName !='�����';
update Hospital set CityName='�����' WHERE ProvinceName='�����' ;


