/*============================================================================================*/
/* Setting 数据新增                                                                           */
/* UpdateDate:2018-05-30                                                                      */
/* Author:Shentt                                                                              */
/*============================================================================================*/


/*============================================== Setting表==============================================*/


/*======================================= 公共部分 相关的参数设置 ======================================*/

-- 2017-10-24
-- 增加 websiteinformationsettings.defaultwebSitethemefordesktops 
-- Tomtaw：医网版本	；eWord：明天科技版本 ；空或者Fullway：全程版本    Wonder：万达版本

INSERT INTO Common.Setting(`Name`,`Value`,`WebSiteId`)
SELECT 'websiteinformationsettings.defaultwebSitethemefordesktops','Tomtaw' ,0
FROM DUAL 
WHERE NOT EXISTS(SELECT `Name` FROM Common.Setting WHERE `Name`='websiteinformationsettings.defaultwebSitethemefordesktops');

-- 2017-10-25
-- 增加 servicemanagesettings.storagemode
-- local：存在本地    server：存在媒体服务器
INSERT INTO Common.Setting(`Name`,`Value`,`WebSiteId`)
SELECT 'servicemanagesettings.storagemode','local' ,0
FROM DUAL 
WHERE NOT EXISTS(SELECT `Name` FROM Common.Setting WHERE `Name`='servicemanagesettings.storagemode');

/*======================================= CRM 相关的参数设置 ===========================================*/

-- 新增是否支持第三方登录(控制显示QQ、微信等第三方登录按钮)   默认为False 不显示
INSERT INTO Common.Setting(`Name`,`Value`,`WebSiteId`)
SELECT 'crmsettings.isenablethirdlogin','False' ,0
FROM DUAL 
WHERE NOT EXISTS(SELECT `Name` FROM Common.Setting WHERE `Name`='crmsettings.isenablethirdlogin');

-- 2017-08-22
-- 增加 crmsettings.SendMobileCodeValidateCaptcha 当为true时，加入图片验证码验证后方可发送短信验证码
INSERT INTO Common.Setting(`Name`,`Value`,`WebSiteId`)
SELECT 'crmsettings.sendmobilecodevalidatecaptcha','False' ,0
FROM DUAL 
WHERE NOT EXISTS(SELECT `Name` FROM Common.Setting WHERE `Name`='crmsettings.sendmobilecodevalidatecaptcha');

-- 2018-01-23 
-- 登录密码加密传输  True 启用功能， False 不启用   默认为False
INSERT INTO Common.Setting(`Name`,`Value`,`WebSiteId`)
SELECT 'crmsettings.loginenablersaencrypt','False' ,0
FROM DUAL 
WHERE NOT EXISTS(SELECT `Name` FROM Common.Setting WHERE `Name`='crmsettings.loginenablersaencrypt'); 

-- 2018-04-10
-- CRM登录时 是否强制用户修改密码   True 启用强制修改密码的功能， False 不启用  默认为False
INSERT INTO Common.Setting(`Name`,`Value`,`WebSiteId`)
SELECT 'crmsettings.isenabledpasswordforcerevise','False' ,0
FROM DUAL 
WHERE NOT EXISTS(SELECT `Name` FROM Common.Setting WHERE `Name`='crmsettings.isenabledpasswordforcerevise'); 

-- 是否显示公众注册按钮  默认为False 不显示
INSERT INTO Common.Setting(`Name`,`Value`,`WebSiteId`)
SELECT 'crmsettings.isenablepatientregister','False' ,0
FROM DUAL 
WHERE NOT EXISTS(SELECT `Name` FROM Common.Setting WHERE `Name`='crmsettings.isenablepatientregister'); 

-- 是否显示医生注册按钮  默认为True 显示
INSERT INTO Common.Setting(`Name`,`Value`,`WebSiteId`)
SELECT 'crmsettings.isenabledoctorregister','False' ,0
FROM DUAL 
WHERE NOT EXISTS(SELECT `Name` FROM Common.Setting WHERE `Name`='crmsettings.isenabledoctorregister'); 

-- 是否显示机构注册按钮  默认为True 显示
INSERT INTO Common.Setting(`Name`,`Value`,`WebSiteId`)
SELECT 'crmsettings.isenableinstitutionapply','False' ,0
FROM DUAL 
WHERE NOT EXISTS(SELECT `Name` FROM Common.Setting WHERE `Name`='crmsettings.isenableinstitutionapply'); 

-- 是否在CRM登录页显示 记住密码 按钮  默认为True 显示
INSERT INTO Common.Setting(`Name`,`Value`,`WebSiteId`)
SELECT 'crmsettings.isenabledrealname','False' ,0
FROM DUAL 
WHERE NOT EXISTS(SELECT `Name` FROM Common.Setting WHERE `Name`='crmsettings.isenabledrealname'); 

-- 登录方式  可以切换Session登录还是Cookie登录
INSERT INTO Common.Setting(`Name`,`Value`,`WebSiteId`)
SELECT 'crmsettings.keeploginmode','cookie' ,0
FROM DUAL 
WHERE NOT EXISTS(SELECT `Name` FROM Common.Setting WHERE `Name`='crmsettings.keeploginmode'); 

-- 是否隐藏验证码的参数  NULL 或者 FALSE 默认显示， TRUE 隐藏
INSERT INTO Common.Setting(`Name`,`Value`,`WebSiteId`)
SELECT 'crmsettings.disableimageverifycode','False' ,0
FROM DUAL 
WHERE NOT EXISTS(SELECT `Name` FROM Common.Setting WHERE `Name`='crmsettings.disableimageverifycode'); 



/*======================================= 远程协同 相关的参数设置 ======================================*/

-- 2017-10-10 协同的相关参数
/*调用公众接口时所需mac参数*/
INSERT INTO `Common`.`Setting` (`Name`, `Value`, `WebSiteId`) 
SELECT 'medicinesettings.publicwebapimac', '5b896925-c617-4808-80e5-286e75a05aef', '0' FROM DUAL 
WHERE NOT EXISTS(SELECT `Name` FROM `Common`.`Setting` WHERE Name = 'medicinesettings.publicwebapimac');
/*app消息推送，0：不推送，1：推送*/
INSERT INTO `Common`.`Setting` (`Name`, `Value`, `WebSiteId`)  
SELECT 'medicinesettings.isrequestsendsms', 'True', '0' FROM DUAL 
WHERE NOT EXISTS(SELECT Id FROM `Common`.`Setting` WHERE Name = 'medicinesettings.isrequestsendsms');
/*医联体电子病历接口*/
INSERT INTO `Common`.`Setting` (`Name`, `Value`, `WebSiteId`) 
SELECT 'medicinesettings.thirdarchivesurl', NULL, '0' FROM DUAL 
WHERE NOT EXISTS(SELECT Id FROM `Common`.`Setting` WHERE Name = 'medicinesettings.thirdarchivesurl');
/*会诊消息通知目标配置，0：不通知，1：通知医联体，2：通知移动转诊平台*/
INSERT INTO `Common`.`Setting` (`Name`, `Value`, `WebSiteId`) 
SELECT 'medicinesettings.messagenoticetarget', '0', '0' FROM DUAL 
WHERE NOT EXISTS(SELECT Id FROM `Common`.`Setting` WHERE Name = 'medicinesettings.messagenoticetarget');
/*昌平人口健康档案接口*/
INSERT INTO `Common`.`Setting` (`Name`, `Value`, `WebSiteId`) 
SELECT 'medicinesettings.healthrecordurl', NULL, '0' FROM DUAL 
WHERE NOT EXISTS(SELECT Id FROM `Common`.`Setting` WHERE Name = 'medicinesettings.healthrecordurl');
/*项目版本控制*/
INSERT INTO `Common`.`Setting` (`Name`, `Value`, `WebSiteId`) 
SELECT 'medicinesettings.productcode', NULL, '0' FROM DUAL 
WHERE NOT EXISTS(SELECT Id FROM `Common`.`Setting` WHERE Name = 'medicinesettings.productcode');
/*产品风格颜色*/
INSERT INTO `Common`.`Setting` (`Name`, `Value`, `WebSiteId`) 
SELECT 'medicinesettings.productcolorstyle', NULL, '0' FROM DUAL 
WHERE NOT EXISTS(SELECT Id FROM `Common`.`Setting` WHERE Name = 'medicinesettings.productcolorstyle');
/*是否开启调试模式*/
INSERT INTO `Common`.`Setting` (`Name`, `Value`, `WebSiteId`) 
SELECT 'medicinesettings.isopendebug', 'false', '0' FROM DUAL 
WHERE NOT EXISTS(SELECT Id FROM `Common`.`Setting` WHERE Name = 'medicinesettings.isopendebug');
/*影像操作协同接口地址*/
INSERT INTO `Common`.`Setting` (`Name`, `Value`, `WebSiteId`) 
SELECT 'medicinesettings.imagesyncurl', NULL, '0' FROM DUAL 
WHERE NOT EXISTS(SELECT Id FROM `Common`.`Setting` WHERE Name = 'medicinesettings.imagesyncurl');
/*是否显示头部菜单，常用于第三方系统集成时使用*/
INSERT INTO `Common`.`Setting` (`Name`, `Value`, `WebSiteId`) 
SELECT 'medicinesettings.isshowheader', NULL, '0' FROM DUAL 
WHERE NOT EXISTS(SELECT Id FROM `Common`.`Setting` WHERE Name = 'medicinesettings.isshowheader');


-- 2017-10-25
-- 增加 medicinesettings.isopenreportwriteback 是否开启第三方报告回写
-- 增加 medicinesettings.reportwritebackapiurl 第三方报告回写api地址

INSERT INTO Common.Setting(`Name`,`Value`,`WebSiteId`)
SELECT 'medicinesettings.isopenreportwriteback','False' ,0
FROM DUAL 
WHERE NOT EXISTS(SELECT `Name` FROM Common.Setting WHERE `Name`='medicinesettings.isopenreportwriteback');

INSERT INTO Common.Setting(`Name`,`Value`,`WebSiteId`)
SELECT 'medicinesettings.reportwritebackapiurl','' ,0
FROM DUAL 
WHERE NOT EXISTS(SELECT `Name` FROM Common.Setting WHERE `Name`='medicinesettings.reportwritebackapiurl');


-- 2017-12-26 嘉兴项目 健康档案
INSERT INTO Common.Setting(`Name`,`Value`,`WebSiteId`)
SELECT 'medicinesettings.healthrecordarea','jiaxing' ,0
FROM DUAL 
WHERE NOT EXISTS(SELECT `Name` FROM Common.Setting WHERE `Name`='medicinesettings.healthrecordarea');

INSERT INTO Common.Setting(`Name`,`Value`,`WebSiteId`)
SELECT 'medicinesettings.healthrecordtitle','健康档案' ,0
FROM DUAL 
WHERE NOT EXISTS(SELECT `Name` FROM Common.Setting WHERE `Name`='medicinesettings.healthrecordtitle'); 


-- 百度语音

INSERT INTO Common.Setting(`Name`,`Value`,`WebSiteId`)
SELECT 'medicinesettings.baiduvoiceappid','inputSplit' ,0
FROM DUAL 
WHERE NOT EXISTS(SELECT `Name` FROM Common.Setting WHERE `Name`='medicinesettings.baiduvoiceappid'); 

INSERT INTO Common.Setting(`Name`,`Value`,`WebSiteId`)
SELECT 'medicinesettings.baiduvoiceappkey','0IlylQ6jzs8yGm91qabUHZoTUXmrpaZ3' ,0
FROM DUAL 
WHERE NOT EXISTS(SELECT `Name` FROM Common.Setting WHERE `Name`='medicinesettings.baiduvoiceappkey'); 

INSERT INTO Common.Setting(`Name`,`Value`,`WebSiteId`)
SELECT 'medicinesettings.baiduvoicesecretkey','9kxkjk5Y7DYnk7X0UZpuFd4hAfwm4vM9' ,0
FROM DUAL 
WHERE NOT EXISTS(SELECT `Name` FROM Common.Setting WHERE `Name`='medicinesettings.baiduvoicesecretkey'); 


-- 检查转诊的医技科室
INSERT INTO Common.Setting(`Name`,`Value`,`WebSiteId`)
SELECT 'medicinesettings.referralexamoffice','RIS,UIS,EIS,PIS,ECG' ,0
FROM DUAL 
WHERE NOT EXISTS(SELECT `Name` FROM Common.Setting WHERE `Name`='medicinesettings.referralexamoffice'); 


/*======================================= 公众服务 相关的参数设置 ======================================*/
-- 2017-09-01
-- 新增影像咨询预约成功是否发送短信
INSERT INTO Common.Setting(`Name`,`Value`,`WebSiteId`)
SELECT 'publichealthsettings.imageconsultationissendsmsafterpay','0' ,0
FROM DUAL 
WHERE NOT EXISTS(SELECT `Name` FROM Common.Setting WHERE `Name`='publichealthsettings.imageconsultationissendsmsafterpay');

/*======================================= 远程教育 相关的参数设置 ======================================*/
-- 2017-09-01
-- 新增远程教育的消息推送地址
INSERT INTO Common.Setting(`Name`,`Value`,`WebSiteId`)
SELECT 'teachsettings.messagepushurlbyapp','http://192.168.1.202:9001/Api/common/Notice/PostNotice?mac=b2cb04ba-1790-424d-94f9-262588095d7f' ,0
FROM DUAL 
WHERE NOT EXISTS(SELECT `Name` FROM Common.Setting WHERE `Name`='teachsettings.messagepushurlbyapp');

/*======================================= 数据挖掘 相关的参数设置 ======================================*/
-- 2018-05-18
-- 数据挖掘 新增内网地址的配置项
INSERT INTO Common.Setting(`Name`,`Value`,`WebSiteId`)
SELECT 'ricsssettings.intraneturl','' ,0
FROM DUAL 
WHERE NOT EXISTS(SELECT `Name` FROM Common.Setting WHERE `Name`='ricsssettings.intraneturl'); 


/*======================================= 质控 相关的参数设置 ======================================*/
-- 2018-06-22
/* 是否显示机构首页 */
INSERT INTO Common.Setting(`Name`,`Value`,`WebSiteId`)
SELECT 'qualitysettings.portalcenterenabled','False' ,0
FROM DUAL 
WHERE NOT EXISTS(SELECT `Name` FROM Common.Setting WHERE `Name`='qualitysettings.portalcenterenabled'); 
/* 配置需要显示机构首页的机构id */
INSERT INTO Common.Setting(`Name`,`Value`,`WebSiteId`)
SELECT 'qualitysettings.portalcenterid','' ,0
FROM DUAL 
WHERE NOT EXISTS(SELECT `Name` FROM Common.Setting WHERE `Name`='qualitysettings.portalcenterid'); 
/*
qualitysettings.grademode   
值=1,集中质控（不包括视频质控）则评分人员都可以执行评分操作，视频质控还是由评估人员来打分 值!=1默认还是走原来的模式由评估人员来打分
*/
INSERT INTO Common.Setting(`Name`,`Value`,`WebSiteId`)
SELECT 'qualitysettings.grademode','1' ,0
FROM DUAL 
WHERE NOT EXISTS(SELECT `Name` FROM Common.Setting WHERE `Name`='qualitysettings.grademode'); 
/* 
qualitysettings.summarymode 
值=1 评分汇总是按去除最高最低分后来计算平均值，值!=1则默认还是平均分
*/
INSERT INTO Common.Setting(`Name`,`Value`,`WebSiteId`)
SELECT 'qualitysettings.summarymode','1' ,0
FROM DUAL 
WHERE NOT EXISTS(SELECT `Name` FROM Common.Setting WHERE `Name`='qualitysettings.summarymode'); 
/*
qualitysettings.singlepagecreatetask 
值=true设置创建集中或视频质控时,不按1.2.3步骤创建,用单页操作（类似修改的页面）来创建质控任务,值=false还是跟原来一样的创建页面
*/
INSERT INTO Common.Setting(`Name`,`Value`,`WebSiteId`)
SELECT 'qualitysettings.singlepagecreatetask','true' ,0
FROM DUAL 
WHERE NOT EXISTS(SELECT `Name` FROM Common.Setting WHERE `Name`='qualitysettings.singlepagecreatetask'); 


/*======================================= 监控 相关的参数设置 ======================================*/
INSERT INTO Common.Setting(`Name`,`Value`,`WebSiteId`)
SELECT 'monitorsettings.name','在线监控系统' ,0
FROM DUAL 
WHERE NOT EXISTS(SELECT `Name` FROM Common.Setting WHERE `Name`='monitorsettings.name'); 

INSERT INTO Common.Setting(`Name`,`Value`,`WebSiteId`)
SELECT 'monitorsettings.pagetitle','在线监控系统' ,0
FROM DUAL 
WHERE NOT EXISTS(SELECT `Name` FROM Common.Setting WHERE `Name`='monitorsettings.pagetitle'); 

INSERT INTO Common.Setting(`Name`,`Value`,`WebSiteId`)
SELECT 'monitorsettings.url','' ,0
FROM DUAL 
WHERE NOT EXISTS(SELECT `Name` FROM Common.Setting WHERE `Name`='monitorsettings.url'); 

INSERT INTO Common.Setting(`Name`,`Value`,`WebSiteId`)
SELECT 'monitorsettings.webapiurl','' ,0
FROM DUAL 
WHERE NOT EXISTS(SELECT `Name` FROM Common.Setting WHERE `Name`='monitorsettings.webapiurl'); 

INSERT INTO Common.Setting(`Name`,`Value`,`WebSiteId`)
SELECT 'monitorsettings.isenablespymode','False' ,0
FROM DUAL 
WHERE NOT EXISTS(SELECT `Name` FROM Common.Setting WHERE `Name`='monitorsettings.isenablespymode'); 

INSERT INTO Common.Setting(`Name`,`Value`,`WebSiteId`)
SELECT 'monitorsettings.enabletoken','False' ,0
FROM DUAL 
WHERE NOT EXISTS(SELECT `Name` FROM Common.Setting WHERE `Name`='monitorsettings.enabletoken'); 


/*======================================= 菊风视频 相关的参数设置 ======================================*/
-- 是否启用菊风视频会议，true=启用，false=不启用
INSERT INTO Common.Setting(`Name`,`Value`,`WebSiteId`)
SELECT 'meetcommonsettings.enablejuphoonvideo','false',0
FROM DUAL 
WHERE NOT EXISTS(SELECT `Name` FROM Common.Setting WHERE `Name`='meetcommonsettings.enablejuphoonvideo'); 

-- 菊风视频会议服务器地址
INSERT INTO Common.Setting(`Name`,`Value`,`WebSiteId`)
SELECT 'meetcommonsettings.juphoonserverurl',NULL,0
FROM DUAL 
WHERE NOT EXISTS(SELECT `Name` FROM Common.Setting WHERE `Name`='meetcommonsettings.juphoonserverurl'); 

