
/*============================================================================================*/
/* 数据初始化                                                                                 */
/* UpdateDate:2017-06-29                                                                      */
/* Author:Shentt                                                                              */
/* 共1项：访问控制表   AccessControl                                                          */
/* CRM 数据库                                                                                 */
/*============================================================================================*/

INSERT INTO AccessControl (ClientId, ClientSecret, ClientKind, ClientSystem) VALUES ('publichealth', '0139FE698142877D227DFAA7300638C3', 0, 200);
INSERT INTO AccessControl (ClientId, ClientSecret, ClientKind, ClientSystem) VALUES ('crm', 'B3A707A5054A74E5369062CCBD917E30', 0, 1100);
INSERT INTO AccessControl (ClientId, ClientSecret, ClientKind, ClientSystem) VALUES ('app', '2D812578F93BE288135CE828AA1FBEFC', 1, 200);
INSERT INTO AccessControl (ClientId, ClientSecret, ClientKind, ClientSystem) VALUES ('diagnosis', '120E8A8F5687C7677BB5931979D97144', 0, 100);
INSERT INTO AccessControl (ClientId, ClientSecret, ClientKind, ClientSystem) VALUES ('idcas', '35601B332BFE17E5E13BD4DA62BD9FE8', 0, 300);
INSERT INTO AccessControl (ClientId, ClientSecret, ClientKind, ClientSystem) VALUES ('teach', 'B86F1401DFDF4D13155C1BA677C747FC', 0, 400);
INSERT INTO AccessControl (ClientId, ClientSecret, ClientKind, ClientSystem) VALUES ('quality', 'D49E546DBE558AA02C3DC35E3DCBFAC6', 0, 500);
INSERT INTO AccessControl (ClientId, ClientSecret, ClientKind, ClientSystem) VALUES ('wonderfullway', '34601B332BFE22E5E13BD4DA62BD9FE9', 0, 500);
INSERT INTO AccessControl (ClientId, ClientSecret, ClientKind, ClientSystem) VALUES ('thirdsystem', '4E555870468F8F4A41B28C303D4D7A4F', 0, 500);
INSERT INTO AccessControl (ClientId, ClientSecret, ClientKind, ClientSystem) VALUES ('reserve', '6927F7BB4C3D88A7EF9157F96AC4B737', 0, 600);