/*============================================================================================*/
/* 数据初始化                                                                                 */
/* UpdateDate:2018-10-10                                                                      */
/* Author:Shentt                                                                              */
/* 共1项：数据字典                                                                            */
/* COMMON 数据库                                                                              */
/*============================================================================================*/


-- ******************** 数据字典类型 和 数据字典项 **********************

-- 公共
-- 医院性质
insert into DataDicType (LookupKey, TypeCode, TypeName) VALUES ( N'HospitalKind', N'1001', N'医院性质');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'HospitalKind', N'01', N'综合医院', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'HospitalKind', N'02', N'中医院', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'HospitalKind', N'03', N'中西医结合医院', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'HospitalKind', N'04', N'民族医院', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'HospitalKind', N'05', N'专科医院', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'HospitalKind', N'06', N'康复医院', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'HospitalKind', N'07', N'妇幼保健院', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'HospitalKind', N'08', N'社区卫生服务中心、社区卫生服务站', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'HospitalKind', N'09', N'中心卫生院、乡（镇）卫生院、街道卫生院', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'HospitalKind', N'10', N'疗养院', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'HospitalKind', N'11', N'门诊部', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'HospitalKind', N'12', N'诊所、卫生所、医务室、卫生保健所、卫生站', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'HospitalKind', N'13', N'村卫生室（所）', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'HospitalKind', N'14', N'急救中心、急救站', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'HospitalKind', N'15', N'临床检验中心', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'HospitalKind', N'16', N'专科疾病防治院、专科疾病防治所、专科疾病防治站', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'HospitalKind', N'17', N'护理院、护理站', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'HospitalKind', N'18', N'其他诊疗机构', NULL, NULL);

-- 医院等级
insert into DataDicType (LookupKey, TypeCode, TypeName) VALUES ( N'HospitalLevel', N'1002', N'医院等级');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'HospitalLevel', N'01', N'三甲', N'三甲', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'HospitalLevel', N'02', N'三乙', N'三乙', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'HospitalLevel', N'03', N'三级', N'三级', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'HospitalLevel', N'04', N'二甲', N'二甲', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'HospitalLevel', N'05', N'二乙', N'二乙', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'HospitalLevel', N'06', N'二级', N'二级', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'HospitalLevel', N'07', N'一甲', N'一甲', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'HospitalLevel', N'08', N'一乙', N'一乙', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'HospitalLevel', N'09', N'一级', N'一级', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'HospitalLevel', N'10', N'其他', N'其他', NULL);

-- 删除原来的医生职称定义，新增按照卫技人员分类 11.05
-- 医生职称
insert into DataDicType (LookupKey, TypeCode, TypeName) VALUES ( N'TitleKind', N'1003', N'卫生技术人员职称分类');
insert into DataDicType (LookupKey, TypeCode, TypeName) VALUES ( N'TitleForClinic', N'1004', N'卫生技术人员（医疗）职称');
insert into DataDicType (LookupKey, TypeCode, TypeName) VALUES ( N'TitleForPhar', N'1005', N'卫生技术人员（药剂）职称');
insert into DataDicType (LookupKey, TypeCode, TypeName) VALUES ( N'TitleForNurse', N'1006', N'卫生技术人员（护理）职称');
insert into DataDicType (LookupKey, TypeCode, TypeName) VALUES ( N'TitleForTech', N'1007', N'卫生技术人员（技师）职称');
insert into DataDicType (LookupKey, TypeCode, TypeName) VALUES ( N'TitleForLab', N'1008', N'卫生技术人员（检验）职称');

insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'TitleKind', N'TitleForClinic', N'医疗', N'卫生技术人员（医疗）职称', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'TitleKind', N'TitleForPhar', N'药剂', N'卫生技术人员（药剂）职称', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'TitleKind', N'TitleForNurse', N'护理', N'卫生技术人员（护理）职称', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'TitleKind', N'TitleForTech', N'技师', N'卫生技术人员（技师）职称', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'TitleKind', N'TitleForLab', N'检验', N'卫生技术人员（检验）职称', NULL);

insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'TitleForClinic', N'231', N'主任医师', N'卫生技术人员（医疗）职称', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'TitleForClinic', N'232', N'副主任医师', N'卫生技术人员（医疗）职称', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'TitleForClinic', N'233', N'主治医师', N'卫生技术人员（医疗）职称', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'TitleForClinic', N'234', N'医师', N'卫生技术人员（医疗）职称', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'TitleForClinic', N'235', N'医士', N'卫生技术人员（医疗）职称', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'TitleForPhar', N'241', N'主任药师', N'卫生技术人员（药剂）职称', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'TitleForPhar', N'242', N'副主任药师', N'卫生技术人员（药剂）职称', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'TitleForPhar', N'243', N'主管药师', N'卫生技术人员（药剂）职称', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'TitleForPhar', N'244', N'药师', N'卫生技术人员（药剂）职称', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'TitleForPhar', N'245', N'药士', N'卫生技术人员（药剂）职称', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'TitleForNurse', N'251', N'主任护师', N'卫生技术人员（护理）职称', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'TitleForNurse', N'252', N'副主任护师', N'卫生技术人员（护理）职称', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'TitleForNurse', N'253', N'主管护师', N'卫生技术人员（护理）职称', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'TitleForNurse', N'254', N'护师', N'卫生技术人员（护理）职称', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'TitleForNurse', N'255', N'护士', N'卫生技术人员（护理）职称', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'TitleForTech', N'261', N'主任技师', N'卫生技术人员（技师）职称', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'TitleForTech', N'262', N'副主任技师', N'卫生技术人员（技师）职称', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'TitleForTech', N'263', N'主管技师', N'卫生技术人员（技师）职称', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'TitleForTech', N'264', N'技师', N'卫生技术人员（技师）职称', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'TitleForTech', N'265', N'技士', N'卫生技术人员（技师）职称', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'TitleForLab', N'271', N'主任检验师', N'卫生技术人员（检验）职称', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'TitleForLab', N'272', N'副主任检验师', N'卫生技术人员（检验）职称', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'TitleForLab', N'273', N'主管检验师', N'卫生技术人员（检验）职称', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'TitleForLab', N'274', N'检验师', N'卫生技术人员（检验）职称', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'TitleForLab', N'275', N'检验士', N'卫生技术人员（检验）职称', NULL);

-- 新增职务的数据字典 11.07
-- 职务（新增）PostKind
insert into DataDicType (LookupKey, TypeCode, TypeName) VALUES ( N'PostKind', N'1009', N'职务');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'PostKind', N'410', N'高级', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'PostKind', N'411', N'正高级', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'PostKind', N'412', N'副高级', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'PostKind', N'420', N'中级', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'PostKind', N'430', N'初级', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'PostKind', N'434', N'助理级', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'PostKind', N'435', N'员级', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'PostKind', N'499', N'未定职级专业技术人员', NULL, NULL);

-- 学生类型
insert into DataDicType (LookUpKey, TypeCode, TypeName) VALUES ( N'StudentType', N'1010', N'学生类型');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'StudentType', N'01', N'医师', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'StudentType', N'02', N'技师', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'StudentType', N'03', N'药剂师', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'StudentType', N'04', N'检验师', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'StudentType', N'05', N'护士', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'StudentType', N'09', N'其他', NULL, NULL);

-- 行政职务
insert into DataDicType (LookupKey, TypeCode, TypeName) VALUES ( N'AdminRank', N'1011', N'行政职务');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AdminRank', N'1', N'院长', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AdminRank', N'2', N'副院长', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AdminRank', N'3', N'科室/部门主任', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AdminRank', N'4', N'科室/部门副主任', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AdminRank', N'5', N'普通医师/护士/药师/职员', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AdminRank', N'9', N'其他', NULL, NULL);

-- 学历
insert into DataDicType (LookupKey, TypeCode, TypeName) VALUES ( N'Education', N'1012', N'学历');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'Education', N'01', N'博士', N'博士', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'Education', N'02', N'研究生', N'研究生', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'Education', N'03', N'本科', N'本科', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'Education', N'04', N'专科', N'专科', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'Education', N'05', N'高中', N'高中', NULL);


-- 开通服务 
-- 医生服务类型
/*
insert into DataDicType (LookUpKey, TypeCode, TypeName) VALUES ( N'ServiceType', N'1013', N'医生服务类型');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ServiceType', N'PACSDiagnosis', N'影像诊断', N'影像诊断', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ServiceType', N'ECGDiagnosis', N'心电诊断', N'心电诊断', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ServiceType', N'XISDiagnosis', N'超声诊断', N'超声诊断', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ServiceType', N'PISDiagnosis', N'病理诊断', N'病理诊断', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ServiceType', N'PACSConsult', N'影像会诊', N'影像会诊', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ServiceType', N'ECGConsult', N'心电会诊', N'心电会诊', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ServiceType', N'PISConsult', N'病理会诊', N'病理会诊', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ServiceType', N'ClinicConsult', N'临床会诊', N'临床会诊', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ServiceType', N'RemoteClinic', N'远程门诊', N'远程门诊', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ServiceType', N'ConsultAllot', N'会诊调度', N'会诊调度', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ServiceType', N'RemoteTeach', N'远程教育', N'远程教育', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ServiceType', N'ApplyImage', N'影像咨询', N'影像咨询', '2');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ServiceType', N'ApplyAskByPicture', N'图文问诊', N'图文问诊', '2');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ServiceType', N'ApplyAskByPhone', N'电话问诊', N'电话问诊', '2');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ServiceType', N'ApplyAskByVideo', N'视频问诊', N'视频问诊', '2');
*/

-- 机构服务类型
-- DicComment - Kind 分类：11 机构业务服务 12 机构医疗服务  20 公众服务 30 医生服务
-- DicExtend - 系统: 100 远程医疗协同  200 公众医学影像  300 影像存储共享  400 远程医学教育  450 医疗资源库  500 影像质控系统  600 区域医技预约  700 云病理  900 影像大数据 1100 客户关系管理 1200 平台运营管理
insert into DataDicType (LookUpKey, TypeCode, TypeName) VALUES ( N'InstitutionOpen', N'1014', N'机构服务类型');
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
 
/*
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'InstitutionOpen', N'ApplyImage', N'影像咨询', '2', '1');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'InstitutionOpen', N'ApplyAskByPicture', N'图文问诊', '2', '1');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'InstitutionOpen', N'ApplyAskByPhone', N'电话问诊', '2', '1');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'InstitutionOpen', N'ApplyAskByVideo', N'视频问诊', '2', '1');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'InstitutionOpen', N'OutpatientReferral', N'门诊转诊', '1', '1');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'InstitutionOpen', N'EmergencyReferral', N'急诊转诊', '1', '1');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'InstitutionOpen', N'InpatientReferral', N'住院转诊', '1', '1');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'InstitutionOpen', N'ExamReferral', N'检查转诊', '1', '1');
*/


-- APP功能菜单
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


-- 质控服务类型
insert into DataDicType (LookUpKey, TypeCode, TypeName) VALUES ( N'QualityServiceType', N'1015', N'质控服务类型');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'QualityServiceType', N'PACSQuality', N'影像质控', N'影像质控', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'QualityServiceType', N'UISQuality', N'超声质控', N'超声质控', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'QualityServiceType', N'EISQuality', N'内镜质控', N'内镜质控', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'QualityServiceType', N'PISQuality', N'病理质控', N'病理质控', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'QualityServiceType', N'ECGQuality', N'心电质控', N'心电质控', NULL);


-- 搜索时间段
insert into DataDicType (LookUpKey, TypeCode, TypeName) VALUES ( N'SearchDate', N'1016', N'搜索时间段');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'SearchDate', N'week', N'一周内', N'一周内', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'SearchDate', N'month', N'一月内', N'一月内', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'SearchDate', N'tmonth', N'三月内', N'三月内', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'SearchDate', N'hmonth', N'半年内', N'半年内', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'SearchDate', N'year', N'一年内', N'一年内', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'SearchDate', N'self', N'自定义', N'自定义', NULL);

-- 默认行政区域分区（用户自己新增字典项）
insert into DataDicType (LookupKey, TypeCode, TypeName) VALUES ( N'DefaultArea', N'1017', N'默认行政区域分区');

-- 健康卡号类型
insert into DataDicType (LookUpKey, TypeCode, TypeName) VALUES ( N'HealthCardType', N'1018', N'健康卡号类型');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'HealthCardType', N'0', N'社保卡', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'HealthCardType', N'1', N'医保磁卡', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'HealthCardType', N'2', N'统一自费就诊卡', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'HealthCardType', N'3', N'非统一自费就诊卡', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'HealthCardType', N'9', N'其他卡', NULL, NULL);


-- 检查类型：云诊断、影像咨询     就诊类别：云诊断
-- 检查类型
insert into DataDicType (LookUpKey, TypeCode, TypeName) VALUES ( N'ExamineType', N'1019', N'检查类型');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ExamineType', N'CR', N'CR', 'X线', 'DR,DX,CR');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ExamineType', N'DX', N'DX', 'X线', 'DR,DX,CR');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ExamineType', N'DR', N'DR', 'X线', 'DR,DX,CR');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ExamineType', N'XA', N'XA', '光血管造影', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ExamineType', N'RF', N'RF', '胃肠 无线荧光透视', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ExamineType', N'CT', N'CT', 'CT', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ExamineType', N'MR', N'MR', '磁共振', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ExamineType', N'MG', N'MG', '乳腺', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ExamineType', N'NM', N'NM', '核子医学', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ExamineType', N'US', N'US', '超声', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ExamineType', N'ES', N'ES', '内镜', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ExamineType', N'ECG', N'ECG', '心电', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ExamineType', N'PS', N'PS','病理', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ExamineType', N'OT', N'OT','其他', NULL);

-- 就诊类别
insert into DataDicType (LookUpKey, TypeCode, TypeName) VALUES ( N'StayInsu', N'1020', N'就诊类别');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'StayInsu', N'1000', N'门诊', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'StayInsu', N'2000', N'住院', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'StayInsu', N'3000', N'急诊', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'StayInsu', N'4000', N'体检', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'StayInsu', N'5000', N'VIP', NULL, NULL);




-- 远程会诊相关
insert into DataDicType (LookupKey, TypeCode, TypeName) VALUES ( N'ConsultKind', N'1021', N'会诊类型');
insert into DataDicType (LookupKey, TypeCode, TypeName) VALUES ( N'ConsultClass', N'1022', N'会诊方式');
insert into DataDicType (LookupKey, TypeCode, TypeName) VALUES ( N'ConsultTypeImage', N'1023', N'影像会诊检查项目');
insert into DataDicType (LookupKey, TypeCode, TypeName) VALUES ( N'ConsultTypeECG', N'1024', N'心电会诊检查项目');
insert into DataDicType (LookupKey, TypeCode, TypeName) VALUES ( N'ConsultTypePS', N'1025', N'病理会诊检查项目');
insert into DataDicType (LookUpKey, TypeCode, TypeName) VALUES ( N'SpecialistDisease', N'1026', N'专科专病');
insert into DataDicType (LookUpKey, TypeCode, TypeName) VALUES ( N'ConsultData', N'1027', N'会诊资料类型');

-- 会诊类型
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ConsultKind', N'PACS', N'影像会诊', N'影像会诊（包括超声）', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ConsultKind', N'ECG', N'心电会诊', N'心电会诊', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ConsultKind', N'PIS', N'病理会诊', N'病理会诊', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ConsultKind', N'CIS', N'临床会诊', N'临床会诊', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ConsultKind', N'SPECIALTY', N'专科专病', N'专科专病', NULL);
-- 会诊方式
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ConsultClass', N'InteractiveConsultation', N'交互式会诊', N'视频（交互式会诊）', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ConsultClass', N'Non-InteractiveConsultation', N'非交互式会诊', N'书面（非交互式会诊）', NULL);

-- 影像会诊检查项目
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ConsultTypeImage', N'01', N'CT', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ConsultTypeImage', N'02', N'MR', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ConsultTypeImage', N'03', N'DR', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ConsultTypeImage', N'04', N'DX', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ConsultTypeImage', N'05', N'CR', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ConsultTypeImage', N'06', N'XA', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ConsultTypeImage', N'07', N'RF', NULL, NULL);
-- 心电会诊检查项目
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ConsultTypeECG', N'01', N'ECG', NULL, NULL);
-- 病理会诊检查项目
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ConsultTypePS', N'01', N'PS', NULL, NULL);
-- 专科专病
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'SpecialistDisease', N'1001', N'糖尿病', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'SpecialistDisease', N'1002', N'高血压', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'SpecialistDisease', N'1003', N'冠心病', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'SpecialistDisease', N'1004', N'肾脏病', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'SpecialistDisease', N'1005', N'肝病', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'SpecialistDisease', N'1006', N'呼吸内科', NULL, NULL);
-- 会诊资料类型
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ConsultData', N'1001', N'病历资料', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ConsultData', N'1002', N'血液检查', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ConsultData', N'1003', N'辅助科室检查', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ConsultData', N'9999', N'其他', NULL, NULL);


-- 远程门诊相关
-- 日时间段
insert into DataDicType (LookupKey, TypeCode, TypeName) VALUES ( N'TimeQuantum', N'1028', N'日时间段');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'TimeQuantum', N'a.m', N'上午', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'TimeQuantum', N'p.m', N'下午', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'TimeQuantum', N'n.m', N'晚上', NULL, NULL);

-- 远程教学相关
-- 教学栏目
insert into DataDicType (LookupKey, TypeCode, TypeName) VALUES ( N'TeachColumn', N'1029', N'教学栏目');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'TeachColumn', N'21', N'专题讲座', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'TeachColumn', N'22', N'多学科病例讨论', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'TeachColumn', N'12', N'手术示教', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'TeachColumn', N'13', N'教学查房', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'TeachColumn', N'11', N'读片示教', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'TeachColumn', N'23', N'护理园地', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'TeachColumn', N'24', N'案例教学', NULL, NULL);
-- 继续教育类型
insert into DataDicType (LookUpKey, TypeCode, TypeName) VALUES ( N'ContinuingEducationType', N'1030', N'继续教育类型');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ContinuingEducationType', N'00', N'不属于继教项目', N'0', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ContinuingEducationType', N'01', N'市级继教项目', N'1', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ContinuingEducationType', N'02', N'院内学习项目', N'0.5', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ContinuingEducationType', N'03', N'科室学习项目', N'0.2', NULL);

-- 职业
INSERT INTO DataDicType (LookupKey, TypeCode, TypeName) VALUES ('Profession', '1031', '职业');
INSERT INTO DataDicInfo (LookupKey, DicName, DicCode, DicComment, DicExtend) VALUES ('Profession', '职员', '01', NULL, NULL);

-- 检查系统
insert into DataDicType (LookUpKey, TypeCode, TypeName) VALUES ( N'ExamClass', N'1036', N'检查系统');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ExamClass', N'RIS', N'放射', NULL, N'CT,MR,CR,DR,DX');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ExamClass', N'UIS', N'超声', NULL, N'US');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ExamClass', N'EIS', N'内镜', NULL, N'ES');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ExamClass', N'XIS', N'特检', NULL, N'XS');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ExamClass', N'PIS', N'病理', NULL, N'PS');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ExamClass', N'ECG', N'心电', NULL, N'ECG');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ExamClass', N'FGN', N'肺功能', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ExamClass', N'GMD', N'骨髓', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ExamClass', N'JD', N'肌电', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ExamClass', N'ND', N'脑电', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ExamClass', N'TCD', N'多普勒', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ExamClass', N'LIS', N'检验', NULL, NULL);

-- 云诊断指派参数
insert into DataDicType (LookUpKey, TypeCode, TypeName) VALUES ( N'CloudDiagnosisConfig', N'1037', N'云诊断指派参数');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'CloudDiagnosisConfig', N'DiagnosisTimeout', N'诊断超时', N'领取后指定时间内未完成诊断则视为诊断超时（单位：小时）', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'CloudDiagnosisConfig', N'AssignTimeout', N'指派超时', N'指派后规定时间内未领取则视为超时（单位：小时）', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'CloudDiagnosisConfig', N'AutoAssignTime', N'自动指派时间', N'申请方提交后一定时间内未有人处理，则按照此时间系统开始自动指派（单位：小时）', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'CloudDiagnosisConfig', N'AutoOccupy', N'指派自动领取', N'设置任务指派至某一专家后，是否自动领取 1：自动领取，即指派后直接设置专家已领取 0：专家手动领取，即指派后需要专家手工领取', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'CloudDiagnosisConfig', N'IsOpenAutoAssign', N'是否开启自动指派', N'0 否 1 是', NULL);


-- 可信任站点（TypeCode填写主机名Host） 需要运营人员进行维护
insert into DataDicType (LookUpKey, TypeCode, TypeName) VALUES ( N'TrustedSites', N'1038', N'可信任站点（TypeCode填写主机名Host）');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'TrustedSites', N'localhost', N'localhost', N'允许localhost本地登录', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'TrustedSites', N'127.0.0.1', N'127.0.0.1', N'允许127.0.0.1本地登录', NULL);
 


-- 平台给机构/诊断中心/个人提供的服务项目

/* 2017-04-11 新增  */
-- 所有制形式  OwnerShipCode
insert into DataDicType (LookUpKey, TypeCode, TypeName) VALUES ( N'OwnerShip', N'1039', N'所有制形式');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'OwnerShip', N'01', N'全民', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'OwnerShip', N'02', N'集体', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'OwnerShip', N'03', N'私人', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'OwnerShip', N'04', N'中外合资', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'OwnerShip', N'05', N'其它', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'OwnerShip', N'06', N'股份制', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'OwnerShip', N'07', N'股份合作制', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'OwnerShip', N'08', N'合伙制', NULL, NULL);

-- 服务对象 Target
insert into DataDicType (LookUpKey, TypeCode, TypeName) VALUES ( N'Target', N'1040', N'服务对象');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'Target', N'01', N'社会', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'Target', N'02', N'内部', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'Target', N'03', N'境外人员', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'Target', N'04', N'社会 + 境外人员', NULL, NULL);


/* 2017-05-23 新增  */
-- 协议文案
insert into DataDicType (LookUpKey, TypeCode, TypeName) VALUES ( N'Protocol', N'1041', N'协议文案');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'Protocol', N'01', N'用户使用协议',  N'公众用户注册时显示的协议', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'Protocol', N'02', N'签约医生协议',  N'签约医生/医生注册时显示的协议', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'Protocol', N'03', N'机构入驻协议',  N'机构注册时显示的协议', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'Protocol', N'04', N'影像云服务协议',  N'影像云服务协议', NULL);

/* 2017-06-23 新增  */
-- 心电检查类型
insert into DataDicType (LookUpKey, TypeCode, TypeName) VALUES ( N'ECGExamineType', N'1042', N'心电检查类型');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ECGExamineType', N'1000', N'静息心电',  N'静息心电', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ECGExamineType', N'1001', N'动态心电',  N'动态心电', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ECGExamineType', N'1002', N'运动心电',  N'运动心电', NULL);

-- 极光推送秘钥和分类 DicCode = mac   DicComment = 极光推送AppKey,极光推送Master Secret    DicExtend: 1 患者  2 医生
insert into DataDicType (LookUpKey, TypeCode, TypeName) VALUES ( N'JPushKeyAndKind', N'1043', N'极光推送秘钥和分类');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'JPushKeyAndKind', N'b2cb04ba-1790-424d-94f9-262588095d7f', N'医网云医生',  N'da1aa0b689a2847c7c62b519,44c407597f681baa56256d9c', 2);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'JPushKeyAndKind', N'0198e5b2-3276-43dd-8e0c-8582818a9e47', N'影像云公众端',  N'7712c5d8f7486a266fa390ef,00a4321177e984a63352a4d4', 1);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'JPushKeyAndKind', N'5b896925-c617-4808-80e5-286e75a05aef', N'影像云医生端',  N'30d1b4c89d0223530fff962e,a3cfe19f10f10eedf23ab75b', 2);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'JPushKeyAndKind', N'068e1979-3c44-4115-bc49-845af8682f74', N'知识库',  N'da1aa0b689a2847c7c62b519,44c407597f681baa56256d9c', NULL);


-- 影像咨询携带的资料类型 ImageReviewDataType
insert into DataDicType (LookUpKey, TypeCode, TypeName) VALUES ( N'ImageReviewDataType', N'1044', N'影像咨询携带的资料类型');
INSERT INTO DataDicInfo (LookupKey, DicName, DicCode, DicComment, DicExtend) VALUES ('ImageReviewDataType', 'CT', '10', 'CT', '1');
INSERT INTO DataDicInfo (LookupKey, DicName, DicCode, DicComment, DicExtend) VALUES ('ImageReviewDataType', 'MR核磁共振', '11', 'MR核磁共振', '1');
INSERT INTO DataDicInfo (LookupKey, DicName, DicCode, DicComment, DicExtend) VALUES ('ImageReviewDataType', 'X线', '12', 'X线', '1');
INSERT INTO DataDicInfo (LookupKey, DicName, DicCode, DicComment, DicExtend) VALUES ('ImageReviewDataType', '其它影像', '13', '其它影像类型', '1');
INSERT INTO DataDicInfo (LookupKey, DicName, DicCode, DicComment, DicExtend) VALUES ('ImageReviewDataType', '胶片', '20', '胶片', '1');
INSERT INTO DataDicInfo (LookupKey, DicName, DicCode, DicComment, DicExtend) VALUES ('ImageReviewDataType', '光盘', '21', '光盘', '1');
INSERT INTO DataDicInfo (LookupKey, DicName, DicCode, DicComment, DicExtend) VALUES ('ImageReviewDataType', 'U盘', '22', 'U盘', '1');
INSERT INTO DataDicInfo (LookupKey, DicName, DicCode, DicComment, DicExtend) VALUES ('ImageReviewDataType', '检查报告', '30', '检查报告', '2');
INSERT INTO DataDicInfo (LookupKey, DicName, DicCode, DicComment, DicExtend) VALUES ('ImageReviewDataType', '门诊病历', '31', '门诊病历', '2');
INSERT INTO DataDicInfo (LookupKey, DicName, DicCode, DicComment, DicExtend) VALUES ('ImageReviewDataType', '有效证件（例如：身份证、医保卡、护照、驾驶证等）', '40','有效证件（例如：身份证、医保卡、护照、驾驶证等）', '2');
INSERT INTO DataDicInfo (LookupKey, DicName, DicCode, DicComment, DicExtend) VALUES ('ImageReviewDataType', '检验报告', '50', '检验报告', '3');
INSERT INTO DataDicInfo (LookupKey, DicName, DicCode, DicComment, DicExtend) VALUES ('ImageReviewDataType', '病理报告', '51', '病理报告', '3');
INSERT INTO DataDicInfo (LookupKey, DicName, DicCode, DicComment, DicExtend) VALUES ('ImageReviewDataType', '住院小结', '54', '住院小结', '3');
INSERT INTO DataDicInfo (LookupKey, DicName, DicCode, DicComment, DicExtend) VALUES ('ImageReviewDataType', '心电图报告', '52', '心电图报告', '3');
INSERT INTO DataDicInfo (LookupKey, DicName, DicCode, DicComment, DicExtend) VALUES ('ImageReviewDataType', '内窥镜检测报告', '53', '内窥镜检测报告', '3');

-- 检查系统
insert into DataDicType (LookUpKey, TypeCode, TypeName) VALUES ( N'ExamDept', N'1045', N'检查科室');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ExamDept', N'RIS', N'放射科', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ExamDept', N'UIS', N'超声科', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ExamDept', N'EIS', N'内镜科', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ExamDept', N'XIS', N'特检科', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ExamDept', N'PIS', N'病理科', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ExamDept', N'ECG', N'心电科', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ExamDept', N'ECT', N'核医学科', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ExamDept', N'Other', N'其他科室', NULL, NULL);

/* 2017-07-17 新增  */
-- 咨询目的 PurposeKind
insert into DataDicType (LookUpKey, TypeCode, TypeName) VALUES ( N'PurposeKind', N'1046', N'咨询目的');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'PurposeKind', N'01', N'头部', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'PurposeKind', N'02', N'胸部', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'PurposeKind', N'03', N'腹部', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'PurposeKind', N'04', N'神经', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'PurposeKind', N'05', N'四肢', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'PurposeKind', N'06', N'骨科', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'PurposeKind', N'07', N'乳腺', NULL, NULL);


/* 2017-07-18 新增  */
-- 移动转诊平台 ReferralCase
insert into DataDicType (LookUpKey, TypeCode, TypeName) VALUES ( N'ReferralCase', N'1047', N'移动转诊平台');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ReferralCase', N'AppKey', NULL, '移动转诊平台Key', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ReferralCase', N'AppSecret', NULL, '移动转诊平台Secret', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ReferralCase', N'ApiUrl', NULL, '移动转正平台接口地址', NULL);


/* 2017-08-28 新增  */
-- MDT会诊类型 MDTConsultKind
insert into DataDicType (LookUpKey, TypeCode, TypeName) VALUES ( N'MDTConsultKind', N'1048', N'MDT会诊类型');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'MDTConsultKind', N'MDTGeneral', '全科会诊', '全科会诊(MDT)', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'MDTConsultKind', N'MDTCIS', '临床会诊', '临床会诊(MDT)', NULL);

-- 医生收入等级 DoctorInComeLevel
insert into DataDicType (LookUpKey, TypeCode, TypeName) VALUES ( N'DoctorInComeLevel', N'1049', N'医生收入等级');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'DoctorInComeLevel', N'10', '黄金级', '黄金级', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'DoctorInComeLevel', N'20', '红宝石级', '红宝石级', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'DoctorInComeLevel', N'30', '翡翠级', '翡翠级', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'DoctorInComeLevel', N'40', '钻石级', '钻石级', NULL);



/* 2017-09-04 新增  */
-- 服务中心自身诊断制度 ServiceCenterDiagnosisRule
insert into DataDicType (LookUpKey, TypeCode, TypeName) VALUES ( 'ServiceCenterDiagnosisRule', '1051', '诊断制度');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( 'ServiceCenterDiagnosisRule', 'DoubleSignature', '双签名', '双签名', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( 'ServiceCenterDiagnosisRule', 'FinalJudgment', '终审制', '终审制', NULL);


-- 服务中心工作方式 ServiceCenterWorkingMode
insert into DataDicType (LookUpKey, TypeCode, TypeName) VALUES ( 'ServiceCenterWorkingMode', '1052', '工作方式');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( 'ServiceCenterWorkingMode', 'OnDuty', '坐班制', '坐班制（固定排班模式）', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( 'ServiceCenterWorkingMode', 'OrderTaking', '接单制', '接单制（上线开始接单）', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( 'ServiceCenterWorkingMode', 'Receive', '领取制', '领取制（医生主动领取任务）', NULL);



/* 2017-11-07 新增  */
-- 疾病分类 DiseasesClass
insert into DataDicType (LookUpKey, TypeCode, TypeName) VALUES ( 'DiseasesClass', '1057', N'疾病分类');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( 'DiseasesClass', '1001', N'未见异常', N'未见异常', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( 'DiseasesClass', '1002', N'疑似陈旧性肺结核', N'疑似陈旧性肺结核', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( 'DiseasesClass', '1003', N'疑似活动性肺结核', N'疑似活动性肺结核', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( 'DiseasesClass', '1004', N'疑似肺癌', N'疑似肺癌', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( 'DiseasesClass', '1005', N'肺炎', N'肺炎', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( 'DiseasesClass', '1006', N'其他异常', N'其他异常', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( 'DiseasesClass', '1007', N'不详', N'不详', NULL);

-- 采集服务来源 CollectionServiceDataSource
insert into DataDicType (LookUpKey, TypeCode, TypeName) VALUES ( 'CollectionServiceDataSource', '1058', '采集服务来源');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( 'CollectionServiceDataSource', 'IMCIS', '临床信息集成融合平台', '临床信息集成融合平台', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( 'CollectionServiceDataSource', 'IDCAS', '云归档', 'IDCAS', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( 'CollectionServiceDataSource', 'eWorldRISV4.5', 'eWorldRISV4.5', '放射4.5', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( 'CollectionServiceDataSource', 'eWorldXIS3.2', 'eWorldXIS3.2', '特检3.2', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( 'CollectionServiceDataSource', 'SMP', 'SMP采集服务', 'SMP采集工具', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( 'CollectionServiceDataSource', 'Other', '其他', '其他', NULL);


-- 代理IP映射 AgentIpMapping
insert into DataDicType (LookUpKey, TypeCode, TypeName) VALUES ( 'AgentIpMapping', 'AgentIpMapping', '代理IP映射');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( 'AgentIpMapping', '192.168.2.153', '192.168.1.202', '代理IP转换', NULL);

/* 2018-01-02 新增  转诊相关的参数 */
-- 性别 SexKind
insert into DataDicType (LookUpKey, TypeCode, TypeName) VALUES ( 'SexKind', 'SexKind', '性别');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( 'SexKind', '0', '未知', '未知的性别', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( 'SexKind', '1', '男性', '男性', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( 'SexKind', '2', '女性', '女性', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( 'SexKind', '5', '女性改（变）为男性', '女性改（变）为男性', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( 'SexKind', '6', '男性改（变）为女性', '男性改（变）为女性', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( 'SexKind', '9', '未说明', '未说明的性别', NULL);

-- 年龄单位 AgeUnitKind
insert into DataDicType (LookUpKey, TypeCode, TypeName) VALUES ( 'AgeUnitKind', 'AgeUnitKind', '年龄单位');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( 'AgeUnitKind', 'Year', '岁', '岁', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( 'AgeUnitKind', 'Month', '月', '月', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( 'AgeUnitKind', 'Week', '周', '周', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( 'AgeUnitKind', 'Day', '天', '天', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( 'AgeUnitKind', 'Hour', '时', '时', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( 'AgeUnitKind', 'Minute', '分', '分', NULL);

-- 婚姻状况 MarryKind
insert into DataDicType (LookUpKey, TypeCode, TypeName) VALUES ( 'MarryKind', 'MarryKind', '婚姻状况');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( 'MarryKind', '1', '未婚', '未婚', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( 'MarryKind', '2', '已婚', '已婚', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( 'MarryKind', '3', '丧偶', '丧偶', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( 'MarryKind', '4', '离异', '离异', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( 'MarryKind', '5', '其他', '其他', NULL);

-- 门诊类型 ClinicKind
insert into DataDicType (LookUpKey, TypeCode, TypeName) VALUES ( 'ClinicKind', 'ClinicKind', '门诊类型');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( 'ClinicKind', '100', '普通门诊', '普通门诊', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( 'ClinicKind', '101', '专科门诊', '专科门诊', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( 'ClinicKind', '102', '专家门诊', '专家门诊', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( 'ClinicKind', '103', '特需门诊', '特需门诊', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( 'ClinicKind', '104', '专病门诊', '专病门诊', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( 'ClinicKind', '999', '其他', '其他', NULL);

-- 费用类别 FeeKind
insert into DataDicType (LookUpKey, TypeCode, TypeName) VALUES ( 'FeeKind', 'FeeKind', '费用类别');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( 'FeeKind', '1', '自费', '自费', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( 'FeeKind', '2', '医保', '医保', NULL);


-- 病情分级 DiseaseLevel   (包括了等级、标准、病情严重程度 急诊分区)
insert into DataDicType (LookUpKey, TypeCode, TypeName) VALUES ( 'DiseaseLevel', 'DiseaseLevel', '病情分级');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( 'DiseaseLevel', 'A', '1级', '濒危病人', '红色');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( 'DiseaseLevel', 'B', '2级', '危重病人', '红色');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( 'DiseaseLevel', 'C', '3级', '急症病人', '黄色');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( 'DiseaseLevel', 'D', '4级', '非急症病人', '绿色');

/*  ************************************************************** */

-- 问题分类 ProblemType  
insert into DataDicType (LookUpKey, TypeCode, TypeName) VALUES ( 'ProblemType', 'ProblemType', '问题分类');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( 'ProblemType', N'UserRegister', N'用户注册', N'用户注册', 'option_01');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( 'ProblemType', N'ServiceOpen', N'开通服务', N'开通服务', 'option_02');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( 'ProblemType', N'BusinessOverview', N'业务概述', N'业务概述', 'option_03');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( 'ProblemType', N'Instruction', N'使用帮助', N'使用帮助', 'option_04');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( 'ProblemType', N'FAQ', N'常见问题', N'常见问题', 'option_05');


-- 20180326
-- 报告回退原因增加数据字典；报告回退给上一个医生；影像回科、重新摄片、追加摄片增加原因数据字典

insert into DataDicType (LookUpKey, TypeCode, TypeName) VALUES ( 'BackToDeptReason', N'BackToDeptReason', N'回科原因');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( 'BackToDeptReason', N'01', N'回科原因1', N'需要患者回科咨询病史', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( 'BackToDeptReason', N'02', N'回科原因2', N'需要患者回科咨询用药记录', NULL);

insert into DataDicType (LookUpKey, TypeCode, TypeName) VALUES ( 'RePhotoReason', N'RePhotoReason', N'重摄原因');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( 'RePhotoReason', N'01', N'重摄原因1', N'图像不清晰', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( 'RePhotoReason', N'02', N'重摄原因2', N'摄片部位不正确', NULL);

insert into DataDicType (LookUpKey, TypeCode, TypeName) VALUES ( 'AddPhotoReason', N'AddPhotoReason', N'追摄原因');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( 'AddPhotoReason', N'01', N'追摄原因1', N'影像序列不完整', NULL);


-- 20180423
-- 新增云诊断的类型和对应的检查类型
-- 111 影像诊断  112 超声诊断 113 心电诊断  114 病理诊断 115 眼底诊断

insert into DataDicType (LookUpKey, TypeCode, TypeName) VALUES ( 'CloudDiagnosisType', N'CloudDiagnosisType', N'云诊断类型');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( 'CloudDiagnosisType', N'111', N'影像诊断', N'影像诊断和对应检查类型', N'CT,MR,CR,DR,DX,XA,RF' );
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( 'CloudDiagnosisType', N'112', N'超声诊断', N'超声诊断和对应检查类型', N'US,ES,XS' );
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( 'CloudDiagnosisType', N'113', N'心电诊断', N'心电诊断和对应检查类型', N'ECG' );
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( 'CloudDiagnosisType', N'114', N'病理诊断', N'病理诊断和对应检查类型', N'PS' );
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( 'CloudDiagnosisType', N'115', N'眼底诊断', N'眼底诊断和对应检查类型', N'OP' );


-- 20180514
-- 报告回退原因
insert into DataDicType (LookUpKey, TypeCode, TypeName) VALUES ( 'ReoortBackReason', N'ReoortBackReason', N'回退原因');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( 'ReoortBackReason', N'1', N'回退原因1', N'结论中存在错别字', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( 'ReoortBackReason', N'2', N'回退原因2', N'诊断结论与影像不符合', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( 'ReoortBackReason', N'3', N'回退原因3', N'诊断结论内容不完整', NULL);


-- 20180721
-- 证件类型
insert into DataDicType (LookUpKey, TypeCode, TypeName) VALUES ( N'IDCardType', N'IDCardType', N'证件类型');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'IDCardType', N'1', N'身份证', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'IDCardType', N'2', N'居民户口簿', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'IDCardType', N'3', N'护照', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'IDCardType', N'4', N'军官证', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'IDCardType', N'5', N'驾驶证', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'IDCardType', N'6', N'港澳居民来往内地通行证', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'IDCardType', N'7', N'台湾居民往来大陆通行证', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'IDCardType', N'99', N'其它证件', NULL, NULL);


--  ****************************  双向转诊 **************************************
-- 20180724
-- 转诊原因 ReferralPurpose
insert into DataDicType (LookUpKey, TypeCode, TypeName) VALUES ( N'ReferralPurpose', N'ReferralPurpose', N'转诊原因');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ReferralPurpose', N'1', N'患者要求转', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ReferralPurpose', N'2', N'药品资源不足', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ReferralPurpose', N'3', N'床位不足', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'ReferralPurpose', N'99', N'其它', NULL, NULL);

-- 20180731
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
/*
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'patientMedicalCardType', N'0', N'省医保', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'patientMedicalCardType', N'1', N'市医保', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'patientMedicalCardType', N'2', N'市民卡', NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'patientMedicalCardType', N'3', N'农保', NULL, NULL);
*/

--  ****************************  双向转诊 以上 **************************************


--  **********************************  云病理  **************************************
/* 2018-08-16 新增  */

-- 云病理相关的数据字典
-- 病理会诊大类代码
-- DicComment 为 1 即为院内， 2为院外
insert into DataDicType (LookUpKey, TypeCode, TypeName) VALUES ( N'PConsultKind', N'PConsultKind', N'病理会诊大类代码');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'PConsultKind', N'SpecailConsultation', N'院内特需',  N'1', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'PConsultKind', N'DifficultConsultation', N'院内疑难',  N'1', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'PConsultKind', N'OuterConsultation', N'院外会诊',  N'2', NULL);

-- 病理会诊项目代码
insert into DataDicType (LookUpKey, TypeCode, TypeName) VALUES ( N'PConsultProject', N'PConsultProject', N'病理会诊项目代码');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'PConsultProject', N'SectionConsultation', N'切片会诊',  NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'PConsultProject', N'Immunohistochemistry', N'免疫组化',  NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'PConsultProject', N'MolecularPathology', N'分子病理',  NULL, NULL);

-- 病理会诊类别代码
insert into DataDicType (LookUpKey, TypeCode, TypeName) VALUES ( N'PConsultType', N'PConsultType', N'病理会诊类别代码');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'PConsultType', N'GeneralConsultation', N'普通会诊',  NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'PConsultType', N'IntraoperativeFreezing', N'术中冰冻',  NULL, NULL);

-- 病理采集方式代码
insert into DataDicType (LookUpKey, TypeCode, TypeName) VALUES ( N'CollectionMode', N'CollectionMode', N'病理采集方式代码');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'CollectionMode', N'Operation', N'手术',  NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'CollectionMode', N'Puncture', N'穿刺',  NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'CollectionMode', N'Biopsy', N'活检',  NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'CollectionMode', N'Drainage', N'引流',  NULL, NULL);

-- 病理样本类型代码
insert into DataDicType (LookUpKey, TypeCode, TypeName) VALUES ( N'SampleKind', N'SampleKind', N'病理样本类型代码');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'SampleKind', N'FreshTissue', N'新鲜组织',  NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'SampleKind', N'ParaffinBlock', N'包埋蜡块',  NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'SampleKind', N'WhiteFilm', N'白片',  NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'SampleKind', N'DetachedCells', N'脱离细胞',  NULL, NULL);

-- 病理样本类型代码
insert into DataDicType (LookUpKey, TypeCode, TypeName) VALUES ( N'FocusCode', N'FocusCode', N'病理病灶代码');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'FocusCode', N'PrimaryFocus', N'原发灶',  NULL, NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'FocusCode', N'SecondaryFocus', N'继发灶',  NULL, NULL);

--  *******************************  云病理  以上 **************************************

--  *******************************  开发者开放平台  **************************************
-- 2018-09-21
/*
AbilityCode ：
1 可见开放能力：   100 远程医疗协同  200 公众医学影像  300 影像存储共享  400 远程医学教育  450 医疗资源库  500 影像质控系统  600 区域医技预约  700 云病理  900 影像大数据 
2 隐含开放能力：0 授权服务  1100 客户关系管理 1200 平台运营管理  2100 公共服务  3100 支付服务

SubAbilityCode：
100 远程医疗协同：111 影像诊断  112 超声诊断 113 心电诊断  114 病理诊断 115 眼底诊断 121 影像会诊 122 心电会诊 123 病理会诊 124 临床会诊 125 多学科会诊 131 远程门诊 141 双向转诊
200 公众医学影像：210 远程问诊 220 网络门诊 
300 影像存储共享：310 数据存储  320 影像档案  330 影像质控  340 数据校验
400 远程医学教育：410 直播课程 420 点播课程
450 医疗资源库：451 典型病例库 452 Teaching File 453 文档库 454 知识库 455 试题库 
500 影像质控系统：
600 区域医技预约：
700 云病理：710 病理咨询 720 病理会诊
900 影像大数据：

1100 客户关系管理：1111 用户注册  1112 第三方注册  1121 用户信息修改  1122 用户签约  1123 用户信息   1124 医生信息  1131 机构信息修改  1132 机构签约  1133 机构信息  1134 服务中心  
1200 平台运营管理：
2100 公共服务：2110 媒体服务  2121 短信服务  2122 消息服务  2123 会议服务  2130 数据字典  2140 业务信息  2150 云朵信息
3100 支付服务：3110 订单管理   3120 支付管理  3130 对账管理
*/
insert into DataDicType (LookUpKey, TypeCode, TypeName) VALUES ( N'AbilityType', N'AbilityType', N'开发者能力代码');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AbilityType', N'100', N'远程医疗协同',  N'1', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AbilityType', N'111', N'影像诊断', NULL, N'100');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AbilityType', N'112', N'超声诊断', NULL, N'100');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AbilityType', N'113', N'心电诊断', NULL, N'100');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AbilityType', N'114', N'病理诊断', NULL, N'100');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AbilityType', N'115', N'眼底诊断', NULL, N'100');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AbilityType', N'121', N'影像会诊', NULL, N'100');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AbilityType', N'122', N'心电会诊', NULL, N'100');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AbilityType', N'123', N'病理会诊', NULL, N'100');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AbilityType', N'124', N'临床会诊', NULL, N'100');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AbilityType', N'125', N'多学科会诊', NULL, N'100');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AbilityType', N'131', N'远程门诊', NULL, N'100');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AbilityType', N'141', N'双向转诊', NULL, N'100');

insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AbilityType', N'200', N'公众医学影像',  N'1', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AbilityType', N'210', N'远程问诊',  NULL, N'200');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AbilityType', N'220', N'网络门诊',  NULL, N'200');

insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AbilityType', N'300', N'影像存储共享',  N'1', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AbilityType', N'310', N'远程问诊',  NULL, N'300');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AbilityType', N'320', N'影像档案',  NULL, N'300');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AbilityType', N'330', N'影像质控',  NULL, N'300');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AbilityType', N'340', N'数据校验',  NULL, N'300');

insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AbilityType', N'400', N'远程医学教育',  N'1', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AbilityType', N'410', N'直播课程',  NULL, N'300');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AbilityType', N'420', N'点播课程',  NULL, N'300');

insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AbilityType', N'450', N'医疗资源库',  N'1', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AbilityType', N'451', N'典型病例库',  NULL, N'500');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AbilityType', N'452', N'Teaching File',  NULL, N'500');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AbilityType', N'453', N'文档库',  NULL, N'500');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AbilityType', N'454', N'知识库',  NULL, N'500');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AbilityType', N'455', N'试题库',  NULL, N'500');

insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AbilityType', N'500', N'影像质控系统',  N'1', NULL);

insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AbilityType', N'600', N'区域医技预约',  N'1', NULL);

insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AbilityType', N'700', N'云病理',  N'1', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AbilityType', N'710', N'病理咨询',  NULL, N'700');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AbilityType', N'720', N'病理会诊',  NULL, N'700');

insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AbilityType', N'900', N'影像大数据',  N'1', NULL);

insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AbilityType', N'0', N'授权服务',  N'2', NULL);

insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AbilityType', N'1100', N'客户关系管理',  N'2', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AbilityType', N'1111', N'用户注册', NULL, N'1100');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AbilityType', N'1112', N'第三方注册', NULL, N'1100');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AbilityType', N'1121', N'用户信息修改', NULL, N'1100');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AbilityType', N'1122', N'用户签约', NULL, N'1100');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AbilityType', N'1123', N'用户信息', NULL, N'1100');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AbilityType', N'1124', N'医生信息', NULL, N'1100');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AbilityType', N'1131', N'机构信息修改', NULL, N'1100');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AbilityType', N'1132', N'机构签约', NULL, N'1100');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AbilityType', N'1133', N'机构信息', NULL, N'1100');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AbilityType', N'1134', N'服务中心', NULL, N'1100');

insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AbilityType', N'1200', N'平台运营管理',  N'2', NULL);

insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AbilityType', N'2100', N'公共服务',  N'2', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AbilityType', N'2110', N'媒体服务', NULL, N'2100');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AbilityType', N'2121', N'短信服务', NULL, N'2100');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AbilityType', N'2122', N'消息服务', NULL, N'2100');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AbilityType', N'2123', N'会议服务', NULL, N'2100');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AbilityType', N'2130', N'数据字典', NULL, N'2100');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AbilityType', N'2140', N'业务信息', NULL, N'2100');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AbilityType', N'2150', N'云朵信息', NULL, N'2100');

insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AbilityType', N'3100', N'支付服务',  N'2', NULL);
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AbilityType', N'3110', N'订单管理', NULL, N'3100');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AbilityType', N'3120', N'支付管理', NULL, N'3100');
insert into DataDicInfo (  LookUpKey, DicCode, DicName, DicComment, DicExtend) VALUES ( N'AbilityType', N'3130', N'对账管理', NULL, N'3100');


--  *******************************  开发者开放平台  以上 **************************************
