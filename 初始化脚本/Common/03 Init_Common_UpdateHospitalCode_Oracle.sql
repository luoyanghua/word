/*============================================================================================*/
/* EWORLDMED ����ҽ�ƻ���CODE                                                                 */
/* UPDATEDATE:2015-05-12                                                                      */
/* AUTHOR:ZHANGJ                                                                              */
/* Ϊ����HOSPITALIDΪ�գ�Ŀǰ�������ID��ΪҽԺ�ı�ţ������ʵ�ʵ�ҽԺ��ţ��빤��ʦά��     */
/*============================================================================================*/

UPDATE HOSPITAL SET HOSPITALCODE = ID WHERE HOSPITALCODE IS NULL OR HOSPITALCODE = '';


--  ֱϽ�� �޸�
UPDATE HOSPITAL SET COUNTYNAME=CITYNAME WHERE PROVINCENAME='�Ϻ���' AND CITYNAME !='�Ϻ���';
UPDATE HOSPITAL SET CITYNAME='�Ϻ���' WHERE PROVINCENAME='�Ϻ���' ;

UPDATE HOSPITAL SET COUNTYNAME=CITYNAME WHERE PROVINCENAME='������' AND CITYNAME !='������';
UPDATE HOSPITAL SET CITYNAME='������' WHERE PROVINCENAME='������' ;

UPDATE HOSPITAL SET COUNTYNAME=CITYNAME WHERE PROVINCENAME='������' AND CITYNAME !='������';
UPDATE HOSPITAL SET CITYNAME='������' WHERE PROVINCENAME='������' ;

UPDATE HOSPITAL SET COUNTYNAME=CITYNAME WHERE PROVINCENAME='�����' AND CITYNAME !='�����';
UPDATE HOSPITAL SET CITYNAME='�����' WHERE PROVINCENAME='�����' ;


COMMIT;