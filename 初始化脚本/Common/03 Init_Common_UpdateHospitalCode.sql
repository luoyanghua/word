/*============================================================================================*/
/* eWorldMed 更新医疗机构Code                                                                 */
/* UpdateDate:2015-05-12                                                                      */
/* Author:Zhangj                                                                              */
/* 为避免hospitalID为空，目前是以序号id作为医院的编号，如果有实际的医院编号，请工程师维护     */
/*============================================================================================*/

update Hospital set HospitalCode = Id where HospitalCode is null or HospitalCode = '';


--  直辖市 修改
update Hospital set CountyName=CityName WHERE ProvinceName='上海市' AND CityName !='上海市';
update Hospital set CityName='上海市' WHERE ProvinceName='上海市' ;

update Hospital set CountyName=CityName WHERE ProvinceName='北京市' AND CityName !='北京市';
update Hospital set CityName='北京市' WHERE ProvinceName='北京市' ;

update Hospital set CountyName=CityName WHERE ProvinceName='重庆市' AND CityName !='重庆市';
update Hospital set CityName='重庆市' WHERE ProvinceName='重庆市' ;

update Hospital set CountyName=CityName WHERE ProvinceName='天津市' AND CityName !='天津市';
update Hospital set CityName='天津市' WHERE ProvinceName='天津市' ;


