/*============================================================================================*/
/* 数据字典表数据新增                                                                         */
/* UpdateDate:2018-10-10                                                                      */
/* Author:Shentt                                                                              */
/*============================================================================================*/


/*==============================================  数据字典 表 ==============================================*/

-- InstitutionOpen 机构开通的服务 新增 云胶片CloudFilm
INSERT INTO Common.DataDicInfo(  LookUpKey, DicCode, DicName, DicComment, DicExtend)
SELECT 'InstitutionOpen', 'CloudFilm', '影像档案', '影像档案', '1'
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey,DicCode FROM Common.DataDicInfo WHERE LookUpKey='InstitutionOpen' AND DicCode='CloudFilm');

-- InstitutionOpen 机构开通的服务 新增 会诊调度ConsultAllot
INSERT INTO Common.DataDicInfo(  LookUpKey, DicCode, DicName, DicComment, DicExtend)
SELECT 'InstitutionOpen', 'ConsultAllot', '会诊调度', '会诊调度', '1'
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey,DicCode FROM Common.DataDicInfo WHERE LookUpKey='InstitutionOpen' AND DicCode='ConsultAllot');


/* 2017-08-28 新增  */
-- MDT会诊类型 MDTConsultKind
INSERT INTO Common.DataDicType (LookUpKey, TypeCode, TypeName)
SELECT 'MDTConsultKind', '1048', 'MDT会诊类型'
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey FROM Common.DataDicType WHERE LookUpKey='MDTConsultKind');

INSERT INTO Common.DataDicInfo(  LookUpKey, DicCode, DicName, DicComment, DicExtend)
SELECT 'MDTConsultKind', 'MDTGeneral', '全科会诊', '全科会诊(MDT)', NULL
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey,DicCode FROM Common.DataDicInfo WHERE LookUpKey='MDTConsultKind' AND DicCode='MDTGeneral');

INSERT INTO Common.DataDicInfo(  LookUpKey, DicCode, DicName, DicComment, DicExtend)
SELECT 'MDTConsultKind', 'MDTCIS', '临床会诊', '临床会诊(MDT)', NULL
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey,DicCode FROM Common.DataDicInfo WHERE LookUpKey='MDTConsultKind' AND DicCode='MDTCIS');


-- 医生收入等级 DoctorInComeLevel
INSERT INTO Common.DataDicType (LookUpKey, TypeCode, TypeName)
SELECT 'DoctorInComeLevel', '1049', '医生收入等级'
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey FROM Common.DataDicType WHERE LookUpKey='DoctorInComeLevel');

INSERT INTO Common.DataDicInfo(  LookUpKey, DicCode, DicName, DicComment, DicExtend)
SELECT 'DoctorInComeLevel', '10', '黄金级', '黄金级', NULL
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey,DicCode FROM Common.DataDicInfo WHERE LookUpKey='DoctorInComeLevel' AND DicCode='10');

INSERT INTO Common.DataDicInfo(  LookUpKey, DicCode, DicName, DicComment, DicExtend)
SELECT 'DoctorInComeLevel', '20', '红宝石级', '红宝石级', NULL
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey,DicCode FROM Common.DataDicInfo WHERE LookUpKey='DoctorInComeLevel' AND DicCode='20');

INSERT INTO Common.DataDicInfo(  LookUpKey, DicCode, DicName, DicComment, DicExtend)
SELECT 'DoctorInComeLevel', '30', '翡翠级', '翡翠级', NULL
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey,DicCode FROM Common.DataDicInfo WHERE LookUpKey='DoctorInComeLevel' AND DicCode='30');

INSERT INTO Common.DataDicInfo(  LookUpKey, DicCode, DicName, DicComment, DicExtend)
SELECT 'DoctorInComeLevel', '40', '钻石级', '钻石级', NULL
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey,DicCode FROM Common.DataDicInfo WHERE LookUpKey='DoctorInComeLevel' AND DicCode='40');

/* 2017-09-04 新增  */
-- 服务中心自身诊断制度 ServiceCenterDiagnosisRule
INSERT INTO Common.DataDicType (LookUpKey, TypeCode, TypeName)
SELECT 'ServiceCenterDiagnosisRule', '1051', '服务中心自身诊断制度'
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey FROM Common.DataDicType WHERE LookUpKey='ServiceCenterDiagnosisRule');

INSERT INTO Common.DataDicInfo(  LookUpKey, DicCode, DicName, DicComment, DicExtend)
SELECT 'ServiceCenterDiagnosisRule', 'DoubleSignature', '双签名', '双签名', NULL
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey,DicCode FROM Common.DataDicInfo WHERE LookUpKey='ServiceCenterDiagnosisRule' AND DicCode='DoubleSignature');

INSERT INTO Common.DataDicInfo(  LookUpKey, DicCode, DicName, DicComment, DicExtend)
SELECT 'ServiceCenterDiagnosisRule', 'FinalJudgment', '终审制', '终审制', NULL
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey,DicCode FROM Common.DataDicInfo WHERE LookUpKey='ServiceCenterDiagnosisRule' AND DicCode='FinalJudgment');


-- 服务中心工作方式 ServiceCenterWorkingMode
INSERT INTO Common.DataDicType (LookUpKey, TypeCode, TypeName)
SELECT 'ServiceCenterWorkingMode', '1052', '服务中心工作方式'
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey FROM Common.DataDicType WHERE LookUpKey='ServiceCenterWorkingMode');

INSERT INTO Common.DataDicInfo(  LookUpKey, DicCode, DicName, DicComment, DicExtend)
SELECT 'ServiceCenterWorkingMode', 'OnDuty', '坐班制', '坐班制（固定排班模式）', NULL
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey,DicCode FROM Common.DataDicInfo WHERE LookUpKey='ServiceCenterWorkingMode' AND DicCode='OnDuty');

INSERT INTO Common.DataDicInfo(  LookUpKey, DicCode, DicName, DicComment, DicExtend)
SELECT 'ServiceCenterWorkingMode', 'OrderTaking', '接单制', '接单制（上线开始接单）', NULL
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey,DicCode FROM Common.DataDicInfo WHERE LookUpKey='ServiceCenterWorkingMode' AND DicCode='OrderTaking');

INSERT INTO Common.DataDicInfo(  LookUpKey, DicCode, DicName, DicComment, DicExtend)
SELECT 'ServiceCenterWorkingMode', 'Receive', '领取制', '领取制（医生主动领取任务）', NULL
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey,DicCode FROM Common.DataDicInfo WHERE LookUpKey='ServiceCenterWorkingMode' AND DicCode='Receive');



/* 2017-09-20 新增  */
-- 极光推送秘钥和分类  JPushKeyAndKind
-- DicComment存放了JPush的key和secret  具体项目对应的DicComment
INSERT INTO Common.DataDicType (LookUpKey, TypeCode, TypeName)
SELECT 'JPushKeyAndKind', '1043', '极光推送秘钥和分类'
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey FROM Common.DataDicType WHERE LookUpKey='JPushKeyAndKind');

INSERT INTO Common.DataDicInfo(  LookUpKey, DicCode, DicName, DicComment, DicExtend)
SELECT 'JPushKeyAndKind', 'b2cb04ba-1790-424d-94f9-262588095d7f', '医网云医生',  'da1aa0b689a2847c7c62b519,44c407597f681baa56256d9c', 1
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey,DicCode FROM Common.DataDicInfo WHERE LookUpKey='JPushKeyAndKind' AND DicCode='b2cb04ba-1790-424d-94f9-262588095d7f');

INSERT INTO Common.DataDicInfo(  LookUpKey, DicCode, DicName, DicComment, DicExtend)
SELECT 'JPushKeyAndKind', '0198e5b2-3276-43dd-8e0c-8582818a9e47', '影像云公众端',  '7712c5d8f7486a266fa390ef,00a4321177e984a63352a4d4', 1
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey,DicCode FROM Common.DataDicInfo WHERE LookUpKey='JPushKeyAndKind' AND DicCode='0198e5b2-3276-43dd-8e0c-8582818a9e47');

INSERT INTO Common.DataDicInfo(  LookUpKey, DicCode, DicName, DicComment, DicExtend)
SELECT 'JPushKeyAndKind', '5b896925-c617-4808-80e5-286e75a05aef', '影像云医生端',  '30d1b4c89d0223530fff962e,a3cfe19f10f10eedf23ab75b', 2
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey,DicCode FROM Common.DataDicInfo WHERE LookUpKey='JPushKeyAndKind' AND DicCode='5b896925-c617-4808-80e5-286e75a05aef');

INSERT INTO Common.DataDicInfo(  LookUpKey, DicCode, DicName, DicComment, DicExtend)
SELECT 'JPushKeyAndKind', '068e1979-3c44-4115-bc49-845af8682f74', '知识库',  'da1aa0b689a2847c7c62b519,44c407597f681baa56256d9c', NULL
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey,DicCode FROM Common.DataDicInfo WHERE LookUpKey='JPushKeyAndKind' AND DicCode='068e1979-3c44-4115-bc49-845af8682f74');


/* 2017-11-07 新增  */
-- 疾病分类 DiseasesClass
INSERT INTO Common.DataDicType (LookUpKey, TypeCode, TypeName)
SELECT 'DiseasesClass', '1057', '疾病分类'
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey FROM Common.DataDicType WHERE LookUpKey='DiseasesClass');

INSERT INTO Common.DataDicInfo(  LookUpKey, DicCode, DicName, DicComment, DicExtend)
SELECT 'DiseasesClass', '1001', '癌', '癌', NULL
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey,DicCode FROM Common.DataDicInfo WHERE LookUpKey='DiseasesClass' AND DicCode='1001');
INSERT INTO Common.DataDicInfo(  LookUpKey, DicCode, DicName, DicComment, DicExtend)
SELECT 'DiseasesClass', '1002', '结核', '结核', NULL
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey,DicCode FROM Common.DataDicInfo WHERE LookUpKey='DiseasesClass' AND DicCode='1002');
INSERT INTO Common.DataDicInfo(  LookUpKey, DicCode, DicName, DicComment, DicExtend)
SELECT 'DiseasesClass', '1003', '肺结核', '肺结核', NULL
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey,DicCode FROM Common.DataDicInfo WHERE LookUpKey='DiseasesClass' AND DicCode='1003');


-- 采集服务来源 CollectionServiceDataSource
INSERT INTO Common.DataDicType (LookUpKey, TypeCode, TypeName)
SELECT 'CollectionServiceDataSource', '1058', '采集服务来源'
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey FROM Common.DataDicType WHERE LookUpKey='CollectionServiceDataSource');

INSERT INTO Common.DataDicInfo(  LookUpKey, DicCode, DicName, DicComment, DicExtend)
SELECT 'CollectionServiceDataSource', 'IMCIS', '临床信息集成融合平台', '临床信息集成融合平台', NULL
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey,DicCode FROM Common.DataDicInfo WHERE LookUpKey='CollectionServiceDataSource' AND DicCode='IMCIS');
INSERT INTO Common.DataDicInfo(  LookUpKey, DicCode, DicName, DicComment, DicExtend)
SELECT 'CollectionServiceDataSource', 'IDCAS', '云归档', 'IDCAS', NULL
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey,DicCode FROM Common.DataDicInfo WHERE LookUpKey='CollectionServiceDataSource' AND DicCode='IDCAS');
INSERT INTO Common.DataDicInfo(  LookUpKey, DicCode, DicName, DicComment, DicExtend)
SELECT 'CollectionServiceDataSource', 'eWorldRISV4.5', 'eWorldRISV4.5', '放射4.5', NULL
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey,DicCode FROM Common.DataDicInfo WHERE LookUpKey='CollectionServiceDataSource' AND DicCode='eWorldRISV4.5');
INSERT INTO Common.DataDicInfo(  LookUpKey, DicCode, DicName, DicComment, DicExtend)
SELECT 'CollectionServiceDataSource', 'eWorldXIS3.2', 'eWorldXIS3.2', '特检3.2', NULL
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey,DicCode FROM Common.DataDicInfo WHERE LookUpKey='CollectionServiceDataSource' AND DicCode='eWorldXIS3.2');
INSERT INTO Common.DataDicInfo(  LookUpKey, DicCode, DicName, DicComment, DicExtend)
SELECT 'CollectionServiceDataSource', 'SMP', 'SMP采集服务', 'SMP采集工具', NULL
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey,DicCode FROM Common.DataDicInfo WHERE LookUpKey='CollectionServiceDataSource' AND DicCode='SMP');
INSERT INTO Common.DataDicInfo(  LookUpKey, DicCode, DicName, DicComment, DicExtend)
SELECT 'CollectionServiceDataSource', 'Other', '其他', '其他', NULL
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey,DicCode FROM Common.DataDicInfo WHERE LookUpKey='CollectionServiceDataSource' AND DicCode='Other');


/* 2017-11-23 新增  */
-- 代理IP映射 AgentIpMapping

INSERT INTO Common.DataDicType (LookUpKey, TypeCode, TypeName)
SELECT 'AgentIpMapping', 'AgentIpMapping', '代理IP映射'
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey FROM Common.DataDicType WHERE LookUpKey='AgentIpMapping');

INSERT INTO Common.DataDicInfo(  LookUpKey, DicCode, DicName, DicComment, DicExtend)
SELECT 'AgentIpMapping', '192.168.2.153', '192.168.1.202', '代理IP转换', NULL
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey,DicCode FROM Common.DataDicInfo WHERE LookUpKey='AgentIpMapping' AND DicCode='192.168.2.153');


/* 2018-01-02 新增  */

-- 性别 SexKind
INSERT INTO Common.DataDicType (LookUpKey, TypeCode, TypeName)
SELECT 'SexKind', 'SexKind', '性别'
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey FROM Common.DataDicType WHERE LookUpKey='SexKind');

INSERT INTO Common.DataDicInfo(  LookUpKey, DicCode, DicName, DicComment, DicExtend)
SELECT 'SexKind', '0', '未知', '未知的性别', NULL
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey,DicCode FROM Common.DataDicInfo WHERE LookUpKey='SexKind' AND DicCode='0');
INSERT INTO Common.DataDicInfo(  LookUpKey, DicCode, DicName, DicComment, DicExtend)
SELECT 'SexKind', '1', '男性', '男性', NULL
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey,DicCode FROM Common.DataDicInfo WHERE LookUpKey='SexKind' AND DicCode='1');
INSERT INTO Common.DataDicInfo(  LookUpKey, DicCode, DicName, DicComment, DicExtend)
SELECT 'SexKind', '2', '女性', '女性', NULL
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey,DicCode FROM Common.DataDicInfo WHERE LookUpKey='SexKind' AND DicCode='2');
INSERT INTO Common.DataDicInfo(  LookUpKey, DicCode, DicName, DicComment, DicExtend)
SELECT 'SexKind', '5', '女性改（变）为男性', '女性改（变）为男性', NULL
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey,DicCode FROM Common.DataDicInfo WHERE LookUpKey='SexKind' AND DicCode='5');
INSERT INTO Common.DataDicInfo(  LookUpKey, DicCode, DicName, DicComment, DicExtend)
SELECT 'SexKind', '6', '男性改（变）为女性', '男性改（变）为女性', NULL
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey,DicCode FROM Common.DataDicInfo WHERE LookUpKey='SexKind' AND DicCode='6');
INSERT INTO Common.DataDicInfo(  LookUpKey, DicCode, DicName, DicComment, DicExtend)
SELECT 'SexKind', '9', '未说明', '未说明的性别', NULL
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey,DicCode FROM Common.DataDicInfo WHERE LookUpKey='SexKind' AND DicCode='9');


-- 年龄单位 AgeUnitKind
INSERT INTO Common.DataDicType (LookUpKey, TypeCode, TypeName)
SELECT 'AgeUnitKind', 'AgeUnitKind', '年龄单位'
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey FROM Common.DataDicType WHERE LookUpKey='AgeUnitKind');

INSERT INTO Common.DataDicInfo(  LookUpKey, DicCode, DicName, DicComment, DicExtend)
SELECT 'AgeUnitKind', 'Year', '岁', '岁', NULL
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey,DicCode FROM Common.DataDicInfo WHERE LookUpKey='AgeUnitKind' AND DicCode='Year');
INSERT INTO Common.DataDicInfo(  LookUpKey, DicCode, DicName, DicComment, DicExtend)
SELECT 'AgeUnitKind', 'Month', '月', '月', NULL
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey,DicCode FROM Common.DataDicInfo WHERE LookUpKey='AgeUnitKind' AND DicCode='Month');
INSERT INTO Common.DataDicInfo(  LookUpKey, DicCode, DicName, DicComment, DicExtend)
SELECT 'AgeUnitKind', 'Week', '周', '周', NULL
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey,DicCode FROM Common.DataDicInfo WHERE LookUpKey='AgeUnitKind' AND DicCode='Week');
INSERT INTO Common.DataDicInfo(  LookUpKey, DicCode, DicName, DicComment, DicExtend)
SELECT 'AgeUnitKind', 'Day', '天', '天', NULL
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey,DicCode FROM Common.DataDicInfo WHERE LookUpKey='AgeUnitKind' AND DicCode='Day');
INSERT INTO Common.DataDicInfo(  LookUpKey, DicCode, DicName, DicComment, DicExtend)
SELECT 'AgeUnitKind', 'Hour', '时', '时', NULL
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey,DicCode FROM Common.DataDicInfo WHERE LookUpKey='AgeUnitKind' AND DicCode='Hour');
INSERT INTO Common.DataDicInfo(  LookUpKey, DicCode, DicName, DicComment, DicExtend)
SELECT 'AgeUnitKind', 'Minute', '分', '分', NULL
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey,DicCode FROM Common.DataDicInfo WHERE LookUpKey='AgeUnitKind' AND DicCode='Minute');

-- 婚姻状况 MarryKind
INSERT INTO Common.DataDicType (LookUpKey, TypeCode, TypeName)
SELECT 'MarryKind', 'MarryKind', '婚姻状况'
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey FROM Common.DataDicType WHERE LookUpKey='MarryKind');

INSERT INTO Common.DataDicInfo(  LookUpKey, DicCode, DicName, DicComment, DicExtend)
SELECT 'MarryKind', '1', '未婚', '未婚', NULL
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey,DicCode FROM Common.DataDicInfo WHERE LookUpKey='MarryKind' AND DicCode='1');
INSERT INTO Common.DataDicInfo(  LookUpKey, DicCode, DicName, DicComment, DicExtend)
SELECT 'MarryKind', '2', '已婚', '已婚', NULL
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey,DicCode FROM Common.DataDicInfo WHERE LookUpKey='MarryKind' AND DicCode='2');
INSERT INTO Common.DataDicInfo(  LookUpKey, DicCode, DicName, DicComment, DicExtend)
SELECT 'MarryKind', '3', '丧偶', '丧偶', NULL
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey,DicCode FROM Common.DataDicInfo WHERE LookUpKey='MarryKind' AND DicCode='3');
INSERT INTO Common.DataDicInfo(  LookUpKey, DicCode, DicName, DicComment, DicExtend)
SELECT 'MarryKind', '4', '离异', '离异', NULL
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey,DicCode FROM Common.DataDicInfo WHERE LookUpKey='MarryKind' AND DicCode='4');
INSERT INTO Common.DataDicInfo(  LookUpKey, DicCode, DicName, DicComment, DicExtend)
SELECT 'MarryKind', '5', '其他', '其他', NULL
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey,DicCode FROM Common.DataDicInfo WHERE LookUpKey='MarryKind' AND DicCode='5');


-- 门诊类型 ClinicKind
INSERT INTO Common.DataDicType (LookUpKey, TypeCode, TypeName)
SELECT 'ClinicKind', 'ClinicKind', '门诊类型'
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey FROM Common.DataDicType WHERE LookUpKey='ClinicKind');

INSERT INTO Common.DataDicInfo(  LookUpKey, DicCode, DicName, DicComment, DicExtend)
SELECT 'ClinicKind', '100', '普通门诊', '普通门诊', NULL
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey,DicCode FROM Common.DataDicInfo WHERE LookUpKey='ClinicKind' AND DicCode='100');
INSERT INTO Common.DataDicInfo(  LookUpKey, DicCode, DicName, DicComment, DicExtend)
SELECT 'ClinicKind', '101', '专科门诊', '专科门诊', NULL
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey,DicCode FROM Common.DataDicInfo WHERE LookUpKey='ClinicKind' AND DicCode='101');
INSERT INTO Common.DataDicInfo(  LookUpKey, DicCode, DicName, DicComment, DicExtend)
SELECT 'ClinicKind', '102', '专家门诊', '专家门诊', NULL
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey,DicCode FROM Common.DataDicInfo WHERE LookUpKey='ClinicKind' AND DicCode='102');
INSERT INTO Common.DataDicInfo(  LookUpKey, DicCode, DicName, DicComment, DicExtend)
SELECT 'ClinicKind', '103', '特需门诊', '特需门诊', NULL
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey,DicCode FROM Common.DataDicInfo WHERE LookUpKey='ClinicKind' AND DicCode='103');
INSERT INTO Common.DataDicInfo(  LookUpKey, DicCode, DicName, DicComment, DicExtend)
SELECT 'ClinicKind', '104', '专病门诊', '专病门诊', NULL
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey,DicCode FROM Common.DataDicInfo WHERE LookUpKey='ClinicKind' AND DicCode='104');
INSERT INTO Common.DataDicInfo(  LookUpKey, DicCode, DicName, DicComment, DicExtend)
SELECT 'ClinicKind', '999', '其他', '其他', NULL
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey,DicCode FROM Common.DataDicInfo WHERE LookUpKey='ClinicKind' AND DicCode='999');


-- 费用类别 FeeKind
INSERT INTO Common.DataDicType (LookUpKey, TypeCode, TypeName)
SELECT 'FeeKind', 'FeeKind', '费用类别'
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey FROM Common.DataDicType WHERE LookUpKey='ClinicKind');

INSERT INTO Common.DataDicInfo(  LookUpKey, DicCode, DicName, DicComment, DicExtend)
SELECT 'FeeKind', '1', '自费', '自费', NULL
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey,DicCode FROM Common.DataDicInfo WHERE LookUpKey='FeeKind' AND DicCode='1');
INSERT INTO Common.DataDicInfo(  LookUpKey, DicCode, DicName, DicComment, DicExtend)
SELECT 'FeeKind', '2', '医保', '医保', NULL
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey,DicCode FROM Common.DataDicInfo WHERE LookUpKey='FeeKind' AND DicCode='2');


-- 病情分级 DiseaseLevel   (包括了等级、标准、病情严重程度 急诊分区)
INSERT INTO Common.DataDicType (LookUpKey, TypeCode, TypeName)
SELECT 'DiseaseLevel', 'DiseaseLevel', '病情分级'
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey FROM Common.DataDicType WHERE LookUpKey='DiseaseLevel');

INSERT INTO Common.DataDicInfo(  LookUpKey, DicCode, DicName, DicComment, DicExtend)
SELECT 'DiseaseLevel', 'A', '1级', '濒危病人', '红色'
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey,DicCode FROM Common.DataDicInfo WHERE LookUpKey='DiseaseLevel' AND DicCode='A');
INSERT INTO Common.DataDicInfo(  LookUpKey, DicCode, DicName, DicComment, DicExtend)
SELECT 'DiseaseLevel', 'B', '2级', '危重病人', '红色'
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey,DicCode FROM Common.DataDicInfo WHERE LookUpKey='DiseaseLevel' AND DicCode='B');
INSERT INTO Common.DataDicInfo(  LookUpKey, DicCode, DicName, DicComment, DicExtend)
SELECT 'DiseaseLevel', 'C', '3级', '急症病人', '黄色'
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey,DicCode FROM Common.DataDicInfo WHERE LookUpKey='DiseaseLevel' AND DicCode='C');
INSERT INTO Common.DataDicInfo(  LookUpKey, DicCode, DicName, DicComment, DicExtend)
SELECT 'DiseaseLevel', 'D', '4级', '非急症病人', '绿色'
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey,DicCode FROM Common.DataDicInfo WHERE LookUpKey='DiseaseLevel' AND DicCode='D');


-- 20180326
-- 报告回退原因增加数据字典；报告回退给上一个医生；影像回科、重新摄片、追加摄片增加原因数据字典
INSERT INTO Common.DataDicType(  LookUpKey, TypeCode, TypeName )
SELECT 'BackToDeptReason', N'BackToDeptReason', N'回科原因'
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey FROM Common.DataDicType WHERE LookUpKey='BackToDeptReason' );

INSERT INTO Common.DataDicInfo(  LookUpKey, DicCode, DicName, DicComment, DicExtend)
SELECT 'BackToDeptReason',N'01', N'回科原因1', N'需要患者回科咨询病史', NULL
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey,DicCode FROM Common.DataDicInfo WHERE LookUpKey='BackToDeptReason' AND DicCode='01');
INSERT INTO Common.DataDicInfo(  LookUpKey, DicCode, DicName, DicComment, DicExtend)
SELECT 'BackToDeptReason',N'02', N'回科原因2', N'需要患者回科咨询用药记录', NULL
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey,DicCode FROM Common.DataDicInfo WHERE LookUpKey='BackToDeptReason' AND DicCode='02');

INSERT INTO Common.DataDicType(  LookUpKey, TypeCode, TypeName )
SELECT 'RePhotoReason', N'RePhotoReason', N'重摄原因'
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey FROM Common.DataDicType WHERE LookUpKey='RePhotoReason' );

INSERT INTO Common.DataDicInfo(  LookUpKey, DicCode, DicName, DicComment, DicExtend)
SELECT 'RePhotoReason',N'01', N'重摄原因1', N'图像不清晰', NULL
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey,DicCode FROM Common.DataDicInfo WHERE LookUpKey='RePhotoReason' AND DicCode='01');
INSERT INTO Common.DataDicInfo(  LookUpKey, DicCode, DicName, DicComment, DicExtend)
SELECT 'RePhotoReason',N'02', N'重摄原因2', N'摄片部位不正确', NULL
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey,DicCode FROM Common.DataDicInfo WHERE LookUpKey='RePhotoReason' AND DicCode='02');


INSERT INTO Common.DataDicType(  LookUpKey, TypeCode, TypeName )
SELECT 'AddPhotoReason', N'AddPhotoReason', N'追摄原因'
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey FROM Common.DataDicType WHERE LookUpKey='AddPhotoReason' );

INSERT INTO Common.DataDicInfo(  LookUpKey, DicCode, DicName, DicComment, DicExtend)
SELECT 'AddPhotoReason',N'01', N'追摄原因1', N'影像序列不完整', NULL
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey,DicCode FROM Common.DataDicInfo WHERE LookUpKey='AddPhotoReason' AND DicCode='01');



-- 20180423
-- 新增云诊断的类型和对应的检查类型
-- 111 影像诊断  112 超声诊断 113 心电诊断  114 病理诊断 115 眼底诊断
INSERT INTO Common.DataDicType(  LookUpKey, TypeCode, TypeName )
SELECT 'CloudDiagnosisType', N'CloudDiagnosisType', N'云诊断类型'
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey FROM Common.DataDicType WHERE LookUpKey='CloudDiagnosisType' );

INSERT INTO Common.DataDicInfo(  LookUpKey, DicCode, DicName, DicComment, DicExtend)
SELECT 'CloudDiagnosisType', N'111', N'影像诊断', N'影像诊断和对应检查类型', N'CT,MR,CR,DR,DX,XA,RF'
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey,DicCode FROM Common.DataDicInfo WHERE LookUpKey='CloudDiagnosisType' AND DicCode='111');

INSERT INTO Common.DataDicInfo(  LookUpKey, DicCode, DicName, DicComment, DicExtend)
SELECT 'CloudDiagnosisType', N'112', N'超声诊断', N'超声诊断和对应检查类型', N'US,ES,XS'
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey,DicCode FROM Common.DataDicInfo WHERE LookUpKey='CloudDiagnosisType' AND DicCode='112');

INSERT INTO Common.DataDicInfo(  LookUpKey, DicCode, DicName, DicComment, DicExtend)
SELECT 'CloudDiagnosisType', N'113', N'心电诊断', N'心电诊断和对应检查类型', N'ECG'
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey,DicCode FROM Common.DataDicInfo WHERE LookUpKey='CloudDiagnosisType' AND DicCode='113');

INSERT INTO Common.DataDicInfo(  LookUpKey, DicCode, DicName, DicComment, DicExtend)
SELECT 'CloudDiagnosisType', N'114', N'病理诊断', N'病理诊断和对应检查类型', N'PS'
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey,DicCode FROM Common.DataDicInfo WHERE LookUpKey='CloudDiagnosisType' AND DicCode='114');

INSERT INTO Common.DataDicInfo(  LookUpKey, DicCode, DicName, DicComment, DicExtend)
SELECT 'CloudDiagnosisType', N'115', N'眼底诊断', N'眼底诊断和对应检查类型', N'OP'
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey,DicCode FROM Common.DataDicInfo WHERE LookUpKey='CloudDiagnosisType' AND DicCode='115');


-- 20180514
-- 检查类型

UPDATE DataDicInfo SET DicExtend = 'DR,DX,CR' WHERE LookUpKey = 'ExamineType' AND DicCode = 'CR';
UPDATE DataDicInfo SET DicExtend = 'DR,DX,CR' WHERE LookUpKey = 'ExamineType' AND DicCode = 'DX';
UPDATE DataDicInfo SET DicExtend = 'DR,DX,CR' WHERE LookUpKey = 'ExamineType' AND DicCode = 'DR';

-- 20180514
-- 报告回退原因
INSERT INTO Common.DataDicType(  LookUpKey, TypeCode, TypeName )
SELECT 'ReoortBackReason', N'ReoortBackReason', N'回退原因'
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey FROM Common.DataDicType WHERE LookUpKey='ReoortBackReason' );

INSERT INTO Common.DataDicInfo(  LookUpKey, DicCode, DicName, DicComment, DicExtend)
SELECT 'ReoortBackReason',N'1', N'回退原因1', N'结论中存在错别字', NULL
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey,DicCode FROM Common.DataDicInfo WHERE LookUpKey='ReoortBackReason' AND DicCode='1');
INSERT INTO Common.DataDicInfo(  LookUpKey, DicCode, DicName, DicComment, DicExtend)
SELECT 'ReoortBackReason',N'2', N'回退原因2', N'诊断结论与影像不符合', NULL
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey,DicCode FROM Common.DataDicInfo WHERE LookUpKey='ReoortBackReason' AND DicCode='2');
INSERT INTO Common.DataDicInfo(  LookUpKey, DicCode, DicName, DicComment, DicExtend)
SELECT 'ReoortBackReason',N'3', N'回退原因3', N'诊断结论内容不完整', NULL
FROM DUAL 
WHERE NOT EXISTS(SELECT LookUpKey,DicCode FROM Common.DataDicInfo WHERE LookUpKey='ReoortBackReason' AND DicCode='3');


-- 20180530  AppFunctionMenu app菜单
-- 删除原来AppFunctionMenu的数据字典
DELETE FROM Common.DataDicType where LookUpKey ='AppFunctionMenu';
DELETE FROM Common.DataDicInfo where LookUpKey ='AppFunctionMenu';

-- DicComment：1为医生端APP  2为公众端APP
-- DicComment：1为医生端APP 
-- DicExtend:  1为数据共享服务  2为公众服务 3为远程医疗服务
insert into DataDicType (LookUpKey, TypeCode, TypeName) VALUES ( N'AppFunctionMenu', N'AppFunctionMenu', N'APP功能菜单');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AppFunctionMenu', N'ImageReading', N'影像调阅','1', '1');      
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AppFunctionMenu', N'CaseSharing', N'病例分享','1', '1'); 
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AppFunctionMenu', N'CaseTalking', N'病例讨论','1', '1');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AppFunctionMenu', N'InHospitalImage', N'院内影像','1', '1');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AppFunctionMenu', N'SharingApproval', N'分享审批','1', '1');   
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AppFunctionMenu', N'RemoteAsk', N'在线问诊','1', '2');      
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AppFunctionMenu', N'NetClinic', N'网络门诊','1', '2');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AppFunctionMenu', N'RemoteDiagnosis', N'远程诊断','1', '3');      
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AppFunctionMenu', N'RemoteConsult', N'远程会诊','1', '3');    
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AppFunctionMenu', N'RemoteClinic', N'远程门诊','1', '3'); 
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AppFunctionMenu', N'TwowayReferral', N'双向转诊','1', '3'); 
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AppFunctionMenu', N'DiagnosisApplication', N'诊断申请','1', '3');      
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AppFunctionMenu', N'ConsultApplication', N'会诊申请','1', '3');      
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AppFunctionMenu', N'ClinicApplication', N'门诊申请','1', '3'); 
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AppFunctionMenu', N'ReferralApplication', N'转诊申请','1', '3'); 
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AppFunctionMenu', N'InstantConsultation', N'即时咨询','1', '3'); 
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AppFunctionMenu', N'Tribune', N'论坛','1', '3'); 
-- DicComment：2为公众端APP  
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AppFunctionMenu', N'CloudFilm', N'影像档案','2', NULL);      
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AppFunctionMenu', N'RemoteAskPublic', N'在线问诊','2', NULL);      
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AppFunctionMenu', N'NetClinicPublic', N'网络门诊','2', NULL);


--  ****************************  双向转诊 数据字典  **************************************
-- 删除双向转诊原来的数据字典
DELETE FROM Common.DataDicType where LookUpKey ='ReferralPurpose';
DELETE FROM Common.DataDicInfo where LookUpKey ='ReferralPurpose';
DELETE FROM Common.DataDicType where LookUpKey ='patientCertificateType';
DELETE FROM Common.DataDicInfo where LookUpKey ='patientCertificateType';
DELETE FROM Common.DataDicType where LookUpKey ='patientMedicalCardType';
DELETE FROM Common.DataDicInfo where LookUpKey ='patientMedicalCardType';

-- 转诊原因 ReferralPurpose
insert into DataDicType (LookUpKey, TypeCode, TypeName) VALUES ( N'ReferralPurpose', N'ReferralPurpose', N'转诊原因');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ReferralPurpose', N'1', N'患者要求转', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ReferralPurpose', N'2', N'药品资源不足', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ReferralPurpose', N'3', N'床位不足', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ReferralPurpose', N'99', N'其它', NULL, NULL);

-- 患者证件类型 （双向转诊专用）
insert into DataDicType (LookUpKey, TypeCode, TypeName) VALUES ( N'patientCertificateType', N'patientCertificateType', N'患者证件类型（转诊）');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'patientCertificateType', N'0', N'身份证', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'patientCertificateType', N'1', N'军官证', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'patientCertificateType', N'2', N'驾驶证', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'patientCertificateType', N'3', N'护照', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'patientCertificateType', N'4', N'台胞证', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'patientCertificateType', N'5', N'港澳证', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'patientCertificateType', N'99', N'其它', NULL, NULL);

-- 患者医保卡类型 （双向转诊专用）
insert into DataDicType (LookUpKey, TypeCode, TypeName) VALUES ( N'patientMedicalCardType', N'patientMedicalCardType', N'患者医保卡类型（转诊）');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'patientMedicalCardType', N'4', N'武汉市医保', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'patientMedicalCardType', N'2', N'就诊卡', NULL, NULL);



--  ****************************   InstitutionOpen 机构开通的服务   **************************************
--  20180909  
-- 删除原来 机构开通的服务 InstitutionOpen 的数据字典
DELETE FROM DataDicInfo where LookUpKey ='InstitutionOpen';

-- 机构服务类型
-- DicComment - Kind 分类：11 机构业务服务 12 机构医疗服务  20 公众服务 30 医生服务
-- DicExtend - 系统: 100 远程医疗协同  200 公众医学影像  300 影像存储共享  400 远程医学教育  450 医疗资源库  500 影像质控系统  600 区域医技预约  700 云病理  900 影像大数据 1100 客户关系管理 1200 平台运营管理
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'InstitutionOpen', N'DataStore', N'数据存储', '11', '300');  
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'InstitutionOpen', N'CloudFilm', N'影像档案', '11', '300');      
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'InstitutionOpen', N'PACSDiagnosis', N'影像诊断', '12', '100');   
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'InstitutionOpen', N'ECGDiagnosis', N'心电诊断', '12', '100');     
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'InstitutionOpen', N'XISDiagnosis', N'超声诊断', '12', '100');     
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'InstitutionOpen', N'PISDiagnosis', N'病理诊断', '12', '100');  
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'InstitutionOpen', N'OPDiagnosis', N'眼底诊断', '12', '100');  
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'InstitutionOpen', N'PACSConsult', N'影像会诊', '12', '100');     
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'InstitutionOpen', N'ECGConsult', N'心电会诊', '12', '100');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'InstitutionOpen', N'PISConsult', N'病理会诊', '12', '100');       
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'InstitutionOpen', N'ClinicConsult', N'临床会诊', '12', '100');  
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'InstitutionOpen', N'MDT', N'多学科会诊', '12', '100');  
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'InstitutionOpen', N'RemoteClinic', N'远程门诊','12', '100');      
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'InstitutionOpen', N'RemoteTeach', N'远程教育', '12', '400'); 
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'InstitutionOpen', N'TwowayReferral', N'转诊服务', '12', '100');  
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'InstitutionOpen', N'ExamReservation', N'检查预约', '12', '600');  
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'InstitutionOpen', N'ApplyAsk', N'远程问诊','20', '200');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'InstitutionOpen', N'NetClinic', N'网络门诊','20', '200');
-- 云病理相关
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'InstitutionOpen', N'CPSAsk', N'病理咨询','12', '700');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'InstitutionOpen', N'CPSConsult', N'病理会诊','12', '700');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'InstitutionOpen', N'CPSTeach', N'远程教育','12', '700');
-- 协同目前没把会诊调度 放在权限中，暂时保留
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'InstitutionOpen', N'ConsultAllot', N'会诊调度', '30', '100');  

