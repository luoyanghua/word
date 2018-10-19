/*============================================================================================*/
/* EWORLDMED 更新医疗机构CODE                                                                 */
/* UPDATEDATE:2015-05-12                                                                      */
/* AUTHOR:ZHANGJ                                                                              */
/* 为避免HOSPITALID为空，目前是以序号ID作为医院的编号，如果有实际的医院编号，请工程师维护     */
/*============================================================================================*/

UPDATE HOSPITAL SET HOSPITALCODE = ID WHERE HOSPITALCODE IS NULL OR HOSPITALCODE = '';


--  直辖市 修改
UPDATE HOSPITAL SET COUNTYNAME=CITYNAME WHERE PROVINCENAME='上海市' AND CITYNAME !='上海市';
UPDATE HOSPITAL SET CITYNAME='上海市' WHERE PROVINCENAME='上海市' ;

UPDATE HOSPITAL SET COUNTYNAME=CITYNAME WHERE PROVINCENAME='北京市' AND CITYNAME !='北京市';
UPDATE HOSPITAL SET CITYNAME='北京市' WHERE PROVINCENAME='北京市' ;

UPDATE HOSPITAL SET COUNTYNAME=CITYNAME WHERE PROVINCENAME='重庆市' AND CITYNAME !='重庆市';
UPDATE HOSPITAL SET CITYNAME='重庆市' WHERE PROVINCENAME='重庆市' ;

UPDATE HOSPITAL SET COUNTYNAME=CITYNAME WHERE PROVINCENAME='天津市' AND CITYNAME !='天津市';
UPDATE HOSPITAL SET CITYNAME='天津市' WHERE PROVINCENAME='天津市' ;


COMMIT;