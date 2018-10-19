﻿/*============================================================================================*/
/* 数据初始化                                                                                 */
/* UpdateDate:2017-06-29                                                                      */
/* Author:Shentt                                                                              */
/* 共4项：科室和教学学科                                                        */
/* COMMON 数据库                                                                              */
/*============================================================================================*/




-- *********************** 科室和疾病 *********************

insert into SubjectFirst (FirstName, Instruction, PicGuid, IsPortal, `Order`) VALUES (N'预防保健科', NULL, NULL, 0, '1');
insert into SubjectFirst (FirstName, Instruction, PicGuid, IsPortal, `Order`) VALUES (N'全科医疗科', NULL, NULL, 0, '2');

insert into SubjectFirst (FirstName, Instruction, PicGuid, IsPortal, `Order`) VALUES (N'内科', NULL, NULL, 1, '3');
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'呼吸内科', NULL, 1, '1' FROM SubjectFirst WHERE FirstName ='内科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'消化内科', NULL, 1, '2' FROM SubjectFirst WHERE FirstName ='内科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'神经内科', NULL, 1, '3' FROM SubjectFirst WHERE FirstName ='内科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'心血管内科', NULL, 1, '4' FROM SubjectFirst WHERE FirstName ='内科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'血液内科', NULL, 1, '5' FROM SubjectFirst WHERE FirstName ='内科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'肾病科', NULL, 1, '6' FROM SubjectFirst WHERE FirstName ='内科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'内分泌科', NULL, 1, '7' FROM SubjectFirst WHERE FirstName ='内科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'免疫科', NULL, 1, '8' FROM SubjectFirst WHERE FirstName ='内科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'变态反应科', NULL, 1, '9' FROM SubjectFirst WHERE FirstName ='内科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'老年病科', NULL, 1, '10' FROM SubjectFirst WHERE FirstName ='内科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'其他', NULL, 1, '11' FROM SubjectFirst WHERE FirstName ='内科';

insert into SubjectFirst (FirstName, Instruction, PicGuid, IsPortal, `Order`) VALUES (N'外科', NULL, NULL, 1, '4');
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'普通外科', NULL, 1, '1' FROM SubjectFirst WHERE FirstName ='外科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'神经外科', NULL, 1, '2' FROM SubjectFirst WHERE FirstName ='外科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'骨科', NULL, 1, '3' FROM SubjectFirst WHERE FirstName ='外科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'泌尿外科', NULL, 1, '4' FROM SubjectFirst WHERE FirstName ='外科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'胸外科', NULL, 1, '5' FROM SubjectFirst WHERE FirstName ='外科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'心脏大血管外科', NULL, 1, '6' FROM SubjectFirst WHERE FirstName ='外科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'烧伤科', NULL, 1, '7' FROM SubjectFirst WHERE FirstName ='外科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'整形外科', NULL, 1, '8' FROM SubjectFirst WHERE FirstName ='外科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'其他', NULL, 1, '9' FROM SubjectFirst WHERE FirstName ='外科';

insert into SubjectFirst (FirstName, Instruction, PicGuid, IsPortal, `Order`) VALUES (N'妇产科', NULL, NULL, 1, '5');
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'妇科', NULL, 1, '1' FROM SubjectFirst WHERE FirstName ='妇产科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'产科', NULL, 1, '2' FROM SubjectFirst WHERE FirstName ='妇产科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'计划生育', NULL, 1, '3' FROM SubjectFirst WHERE FirstName ='妇产科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'优生学', NULL, 1, '4' FROM SubjectFirst WHERE FirstName ='妇产科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'生殖健康与不孕症', NULL, 1, '5' FROM SubjectFirst WHERE FirstName ='妇产科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'其他', NULL, 1, '6' FROM SubjectFirst WHERE FirstName ='妇产科';

insert into SubjectFirst (FirstName, Instruction, PicGuid, IsPortal, `Order`) VALUES (N'妇女保健科', NULL, NULL, 0, '6');
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'青春期保健', NULL, 1, '1' FROM SubjectFirst WHERE FirstName ='妇女保健科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'围产期保健', NULL, 1, '2' FROM SubjectFirst WHERE FirstName ='妇女保健科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'更年期保健', NULL, 1, '3' FROM SubjectFirst WHERE FirstName ='妇女保健科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'妇女心理卫生', NULL, 1, '4' FROM SubjectFirst WHERE FirstName ='妇女保健科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'妇女营养', NULL, 1, '5' FROM SubjectFirst WHERE FirstName ='妇女保健科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'其他', NULL, 1, '6' FROM SubjectFirst WHERE FirstName ='妇女保健科';

insert into SubjectFirst (FirstName, Instruction, PicGuid, IsPortal, `Order`) VALUES (N'儿科', NULL, NULL, 1, '7');
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'新生儿科', NULL, 1, '1' FROM SubjectFirst WHERE FirstName ='儿科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'小儿传染病科', NULL, 1, '2' FROM SubjectFirst WHERE FirstName ='儿科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'小儿消化科', NULL, 1, '3' FROM SubjectFirst WHERE FirstName ='儿科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'小儿呼吸科', NULL, 1, '4' FROM SubjectFirst WHERE FirstName ='儿科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'小儿心脏病科', NULL, 1, '5' FROM SubjectFirst WHERE FirstName ='儿科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'小儿肾病科', NULL, 1, '6' FROM SubjectFirst WHERE FirstName ='儿科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'小儿血液病科', NULL, 1, '7' FROM SubjectFirst WHERE FirstName ='儿科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'小儿神经病学科', NULL, 1, '8' FROM SubjectFirst WHERE FirstName ='儿科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'小儿内分泌科', NULL, 1, '9' FROM SubjectFirst WHERE FirstName ='儿科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'小儿遗传病科', NULL, 1, '10' FROM SubjectFirst WHERE FirstName ='儿科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'小儿免疫科', NULL, 1, '11' FROM SubjectFirst WHERE FirstName ='儿科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'其他', NULL, 1, '12' FROM SubjectFirst WHERE FirstName ='儿科';

insert into SubjectFirst (FirstName, Instruction, PicGuid, IsPortal, `Order`) VALUES (N'小儿外科', NULL, NULL, 1, '8');
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'小儿普通外科', NULL, 1, '1' FROM SubjectFirst WHERE FirstName ='小儿外科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'小儿骨科', NULL, 1, '2' FROM SubjectFirst WHERE FirstName ='小儿外科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'小儿泌尿外科', NULL, 1, '3' FROM SubjectFirst WHERE FirstName ='小儿外科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'小儿胸心外科', NULL, 1, '4' FROM SubjectFirst WHERE FirstName ='小儿外科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'小儿神经外科', NULL, 1, '5' FROM SubjectFirst WHERE FirstName ='小儿外科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'其他', NULL, 1, '6' FROM SubjectFirst WHERE FirstName ='小儿外科';

insert into SubjectFirst (FirstName, Instruction, PicGuid, IsPortal, `Order`) VALUES (N'儿童保健科', NULL, NULL, 0, '9');
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'儿童生长发育', NULL, 1, '1' FROM SubjectFirst WHERE FirstName ='儿童保健科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'儿童营养', NULL, 1, '2' FROM SubjectFirst WHERE FirstName ='儿童保健科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'儿童心理卫生', NULL, 1, '3' FROM SubjectFirst WHERE FirstName ='儿童保健科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'儿童五官保健', NULL, 1, '4' FROM SubjectFirst WHERE FirstName ='儿童保健科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'儿童康复', NULL, 1, '5' FROM SubjectFirst WHERE FirstName ='儿童保健科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'其他', NULL, 1, '6' FROM SubjectFirst WHERE FirstName ='儿童保健科';

insert into SubjectFirst (FirstName, Instruction, PicGuid, IsPortal, `Order`) VALUES (N'眼科', NULL, NULL, 1, '10');

insert into SubjectFirst (FirstName, Instruction, PicGuid, IsPortal, `Order`) VALUES (N'耳鼻咽喉科', NULL, NULL, 1, '11');
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'耳科', NULL, 1, '1' FROM SubjectFirst WHERE FirstName ='耳鼻咽喉科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'鼻科', NULL, 1, '2' FROM SubjectFirst WHERE FirstName ='耳鼻咽喉科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'咽喉科', NULL, 1, '3' FROM SubjectFirst WHERE FirstName ='耳鼻咽喉科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'其他', NULL, 1, '4' FROM SubjectFirst WHERE FirstName ='耳鼻咽喉科';

insert into SubjectFirst (FirstName, Instruction, PicGuid, IsPortal, `Order`) VALUES (N'口腔科', NULL, NULL, 1, '12');
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'牙体牙髓病', NULL, 1, '1' FROM SubjectFirst WHERE FirstName ='口腔科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'牙周病', NULL, 1, '2' FROM SubjectFirst WHERE FirstName ='口腔科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'口腔粘膜病', NULL, 1, '3' FROM SubjectFirst WHERE FirstName ='口腔科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'儿童口腔', NULL, 1, '4' FROM SubjectFirst WHERE FirstName ='口腔科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'口腔颌面外科', NULL, 1, '5' FROM SubjectFirst WHERE FirstName ='口腔科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'口腔修复', NULL, 1, '6' FROM SubjectFirst WHERE FirstName ='口腔科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'口腔正畸', NULL, 1, '7' FROM SubjectFirst WHERE FirstName ='口腔科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'口腔种植', NULL, 1, '8' FROM SubjectFirst WHERE FirstName ='口腔科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'口腔麻醉', NULL, 1, '9' FROM SubjectFirst WHERE FirstName ='口腔科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'口腔颌面医学影像', NULL, 1, '10' FROM SubjectFirst WHERE FirstName ='口腔科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'口腔病理', NULL, 1, '11' FROM SubjectFirst WHERE FirstName ='口腔科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'预防口腔', NULL, 1, '12' FROM SubjectFirst WHERE FirstName ='口腔科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'其他', NULL, 1, '13' FROM SubjectFirst WHERE FirstName ='口腔科';

insert into SubjectFirst (FirstName, Instruction, PicGuid, IsPortal, `Order`) VALUES (N'皮肤科', NULL, NULL, 1, '13');
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'皮肤病科', NULL, 1, '1' FROM SubjectFirst WHERE FirstName ='皮肤性病科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'性传播疾病科', NULL, 1, '2' FROM SubjectFirst WHERE FirstName ='皮肤性病科';

insert into SubjectFirst (FirstName, Instruction, PicGuid, IsPortal, `Order`) VALUES (N'医疗美容科', NULL, NULL, 0, '14');

insert into SubjectFirst (FirstName, Instruction, PicGuid, IsPortal, `Order`) VALUES (N'精神科', NULL, NULL, 0,'15');
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'精神病专业', NULL, 1, '1' FROM SubjectFirst WHERE FirstName ='精神科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'精神卫生专业', NULL, 1, '2' FROM SubjectFirst WHERE FirstName ='精神科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'药物依赖专业', NULL, 1, '3' FROM SubjectFirst WHERE FirstName ='精神科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'精神康复专业', NULL, 1, '4' FROM SubjectFirst WHERE FirstName ='精神科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'社区防治专业', NULL, 1, '5' FROM SubjectFirst WHERE FirstName ='精神科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'临床心理专业', NULL, 1, '6' FROM SubjectFirst WHERE FirstName ='精神科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'司法精神专业', NULL, 1, '7' FROM SubjectFirst WHERE FirstName ='精神科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'其他', NULL, 1, '8' FROM SubjectFirst WHERE FirstName ='精神科';

insert into SubjectFirst (FirstName, Instruction, PicGuid, IsPortal, `Order`) VALUES (N'传染科', NULL, NULL, 0,'16');
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'肠道传染病专业', NULL, 1, '1' FROM SubjectFirst WHERE FirstName ='传染科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'呼吸道传染病专业', NULL, 1, '2' FROM SubjectFirst WHERE FirstName ='传染科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'肝炎专业', NULL, 1, '3' FROM SubjectFirst WHERE FirstName ='传染科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'虫媒传染病专业', NULL, 1, '4' FROM SubjectFirst WHERE FirstName ='传染科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'动物源性传染病专业', NULL, 1, '5' FROM SubjectFirst WHERE FirstName ='传染科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'蠕虫病专业', NULL, 1, '6' FROM SubjectFirst WHERE FirstName ='传染科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'其他', NULL, 1, '7' FROM SubjectFirst WHERE FirstName ='传染科';

insert into SubjectFirst (FirstName, Instruction, PicGuid, IsPortal, `Order`) VALUES (N'结核病科', NULL, NULL, 0,'17');
insert into SubjectFirst (FirstName, Instruction, PicGuid, IsPortal, `Order`) VALUES (N'地方病科', NULL, NULL, 0,'18');
insert into SubjectFirst (FirstName, Instruction, PicGuid, IsPortal, `Order`) VALUES (N'肿瘤科', NULL, NULL, 0,'19');
insert into SubjectFirst (FirstName, Instruction, PicGuid, IsPortal, `Order`) VALUES (N'急诊医学科', NULL, NULL, 0,'20');
insert into SubjectFirst (FirstName, Instruction, PicGuid, IsPortal, `Order`) VALUES (N'康复医学科', NULL, NULL, 0,'21');
insert into SubjectFirst (FirstName, Instruction, PicGuid, IsPortal, `Order`) VALUES (N'运动医学科', NULL, NULL, 0,'22');

insert into SubjectFirst (FirstName, Instruction, PicGuid, IsPortal, `Order`) VALUES (N'职业病科', NULL, NULL, 0,'23');
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'职业中毒专业', NULL, 1, '1' FROM SubjectFirst WHERE FirstName ='职业病科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'尘肺专业', NULL, 1, '2' FROM SubjectFirst WHERE FirstName ='职业病科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'放射病专业', NULL, 1, '3' FROM SubjectFirst WHERE FirstName ='职业病科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'物理因素损伤专业', NULL, 1, '4' FROM SubjectFirst WHERE FirstName ='职业病科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'职业健康监护专业', NULL, 1, '5' FROM SubjectFirst WHERE FirstName ='职业病科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'其他', NULL, 1, '6' FROM SubjectFirst WHERE FirstName ='职业病科';

insert into SubjectFirst (FirstName, Instruction, PicGuid, IsPortal, `Order`) VALUES (N'临终关怀科', NULL, NULL, 0,'24');
insert into SubjectFirst (FirstName, Instruction, PicGuid, IsPortal, `Order`) VALUES (N'特种医学与军事医学科', NULL, NULL, 0,'25');
insert into SubjectFirst (FirstName, Instruction, PicGuid, IsPortal, `Order`) VALUES (N'麻醉科', NULL, NULL, 0,'26');
insert into SubjectFirst (FirstName, Instruction, PicGuid, IsPortal, `Order`) VALUES (N'疼痛科', NULL, NULL, 0,'27');
insert into SubjectFirst (FirstName, Instruction, PicGuid, IsPortal, `Order`) VALUES (N'重症医学科', NULL, NULL, 0,'28');
insert into SubjectFirst (FirstName, Instruction, PicGuid, IsPortal, `Order`) VALUES (N'医学检验科', NULL, NULL, 0,'30');
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'临床体液、血液专业', NULL, 1, '1' FROM SubjectFirst WHERE FirstName ='医学检验科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'临床微生物学专业', NULL, 1, '2' FROM SubjectFirst WHERE FirstName ='医学检验科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'临床化学检验专业', NULL, 1, '3' FROM SubjectFirst WHERE FirstName ='医学检验科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'临床免疫、血清学专业', NULL, 1, '4' FROM SubjectFirst WHERE FirstName ='医学检验科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'临床细胞分子遗传学专业', NULL, 1, '5' FROM SubjectFirst WHERE FirstName ='医学检验科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'其他', NULL, 1, '6' FROM SubjectFirst WHERE FirstName ='医学检验科';

insert into SubjectFirst (FirstName, Instruction, PicGuid, IsPortal, `Order`) VALUES (N'病理科', NULL, NULL, 0,'31');

insert into SubjectFirst (FirstName, Instruction, PicGuid, IsPortal, `Order`) VALUES (N'医学影像科', NULL, NULL, 0,'32');
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'X线诊断专业', NULL, 1, '1' FROM SubjectFirst WHERE FirstName ='医学影像科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'CT诊断专业', NULL, 1, '2' FROM SubjectFirst WHERE FirstName ='医学影像科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'磁共振成像诊断专业', NULL, 1, '3' FROM SubjectFirst WHERE FirstName ='医学影像科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'核医学专业', NULL, 1, '4' FROM SubjectFirst WHERE FirstName ='医学影像科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'超声诊断专业', NULL, 1, '5' FROM SubjectFirst WHERE FirstName ='医学影像科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'心电诊断专业', NULL, 1, '6' FROM SubjectFirst WHERE FirstName ='医学影像科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'脑电及脑血流图诊断专业', NULL, 1, '7' FROM SubjectFirst WHERE FirstName ='医学影像科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'神经肌肉电图专业', NULL, 1, '8' FROM SubjectFirst WHERE FirstName ='医学影像科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'介入放射学专业', NULL, 1, '9' FROM SubjectFirst WHERE FirstName ='医学影像科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'放射治疗专业', NULL, 1, '10' FROM SubjectFirst WHERE FirstName ='医学影像科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'其他', NULL, 1, '11' FROM SubjectFirst WHERE FirstName ='医学影像科';

insert into SubjectFirst (FirstName, Instruction, PicGuid, IsPortal, `Order`) VALUES (N'中医科', NULL, NULL, 1, '50');
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'中医内科', NULL, 1, '1' FROM SubjectFirst WHERE FirstName ='中医科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'中医外科', NULL, 1, '2' FROM SubjectFirst WHERE FirstName ='中医科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'中医妇产科', NULL, 1, '3' FROM SubjectFirst WHERE FirstName ='中医科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'中医儿科', NULL, 1, '4' FROM SubjectFirst WHERE FirstName ='中医科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'中医皮肤病科', NULL, 1, '5' FROM SubjectFirst WHERE FirstName ='中医科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'中医眼科', NULL, 1, '6' FROM SubjectFirst WHERE FirstName ='中医科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'中医耳鼻咽喉科', NULL, 1, '7' FROM SubjectFirst WHERE FirstName ='中医科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'中医口腔科', NULL, 1, '8' FROM SubjectFirst WHERE FirstName ='中医科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'中医肿瘤科', NULL, 1, '9' FROM SubjectFirst WHERE FirstName ='中医科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'中医骨伤科', NULL, 1, '10' FROM SubjectFirst WHERE FirstName ='中医科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'中医肛肠科', NULL, 1, '11' FROM SubjectFirst WHERE FirstName ='中医科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'中医老年病科', NULL, 1, '12' FROM SubjectFirst WHERE FirstName ='中医科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'中医针灸科', NULL, 1, '13' FROM SubjectFirst WHERE FirstName ='中医科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'中医推拿科', NULL, 1, '14' FROM SubjectFirst WHERE FirstName ='中医科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'中医康复医学', NULL, 1, '15' FROM SubjectFirst WHERE FirstName ='中医科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'中医急诊科', NULL, 1, '16' FROM SubjectFirst WHERE FirstName ='中医科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'中医预防保健科', NULL, 1, '17' FROM SubjectFirst WHERE FirstName ='中医科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'其他', NULL, 1, '18' FROM SubjectFirst WHERE FirstName ='中医科';

insert into SubjectFirst (FirstName, Instruction, PicGuid, IsPortal, `Order`) VALUES (N'民族医学科', NULL, NULL, 0,'51');
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'维吾尔医学', NULL, 1, '1' FROM SubjectFirst WHERE FirstName ='民族医学科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'藏医学', NULL, 1, '2' FROM SubjectFirst WHERE FirstName ='民族医学科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'蒙医学', NULL, 1, '3' FROM SubjectFirst WHERE FirstName ='民族医学科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'彝医学', NULL, 1, '4' FROM SubjectFirst WHERE FirstName ='民族医学科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'傣医学', NULL, 1, '5' FROM SubjectFirst WHERE FirstName ='民族医学科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'其他', NULL, 1, '6' FROM SubjectFirst WHERE FirstName ='民族医学科';

insert into SubjectFirst (FirstName, Instruction, PicGuid, IsPortal, `Order`) VALUES (N'中西医结合科', NULL, NULL, 0,'52');




insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'预防保健科', NULL, 1, '1' FROM SubjectFirst WHERE FirstName ='预防保健科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'全科', NULL, 1, '1' FROM SubjectFirst WHERE FirstName ='全科医疗科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'眼科', NULL, 1, '1' FROM SubjectFirst WHERE FirstName ='眼科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'医疗美容科', NULL, 1, '1' FROM SubjectFirst WHERE FirstName ='医疗美容科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'结核病科', NULL, 1, '1' FROM SubjectFirst WHERE FirstName ='结核病科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'地方病科', NULL, 1, '1' FROM SubjectFirst WHERE FirstName ='地方病科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'肿瘤科', NULL, 1, '1' FROM SubjectFirst WHERE FirstName ='肿瘤科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'急诊科', NULL, 1, '1' FROM SubjectFirst WHERE FirstName ='急诊医学科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'康复医学科', NULL, 1, '1' FROM SubjectFirst WHERE FirstName ='康复医学科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'运动医学科', NULL, 1, '1' FROM SubjectFirst WHERE FirstName ='运动医学科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'临终关怀科', NULL, 1, '1' FROM SubjectFirst WHERE FirstName ='临终关怀科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'特种医学与军事医学科', NULL, 1, '1' FROM SubjectFirst WHERE FirstName ='特种医学与军事医学科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'麻醉科', NULL, 1, '1' FROM SubjectFirst WHERE FirstName ='麻醉科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'疼痛科', NULL, 1, '1' FROM SubjectFirst WHERE FirstName ='疼痛科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'重症医学科', NULL, 1, '1' FROM SubjectFirst WHERE FirstName ='重症医学科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'病理科', NULL, 1, '1' FROM SubjectFirst WHERE FirstName ='病理科';
insert into SubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) SELECT ID, N'中西医结合科', NULL, 1, '1' FROM SubjectFirst WHERE FirstName ='中西医结合科';




-- 内分泌科疾病
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'糖尿病', N'糖尿病是一组以高血糖为特征的代谢性疾病。高血糖则是由于胰岛素分泌缺陷或其生物作用受损，或两者兼有引起。糖尿病时长期存在的高血糖，导致各种组织，特别是眼、肾、心脏、血管、神经的慢性损害、功能障碍。', 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='内分泌科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'糖尿病肾病', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='内分泌科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'糖尿病视网膜病变', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='内分泌科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'糖尿病足', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='内分泌科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'骨质疏松', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='内分泌科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'甲状腺疾病', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='内分泌科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'甲亢', N'甲状腺功能亢进症简称“甲亢”，是由于甲状腺合成释放过多的甲状腺激素，造成机体代谢亢进和交感神经兴奋，引起心悸、出汗、进食和便次增多和体重减少的病症。多数患者还常常同时有突眼、眼睑水肿、视力减退等症状。', 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='内分泌科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'甲状腺功能减退', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='内分泌科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'甲状腺炎', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='内分泌科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'甲状腺瘤', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='内分泌科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'痛风', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='内分泌科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'高血脂', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='内分泌科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'水电与酸碱平衡', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='内分泌科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'内分泌失调', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='内分泌科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'内分泌疾病', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='内分泌科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'肥胖症', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='内分泌科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'三高症', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='内分泌科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'遗传代谢病', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='内分泌科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'苯丙酮尿症', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='内分泌科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'甲状旁腺功能减退症', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='内分泌科';

-- 呼吸内科疾病
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'间质性肺疾病', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='呼吸内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'肺气肿', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='呼吸内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'肺癌', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='呼吸内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'肺炎', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='呼吸内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'小儿肺炎', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='呼吸内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'气管疾病', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='呼吸内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'气胸', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='呼吸内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'尘肺', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='呼吸内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'哮喘', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='呼吸内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'小儿哮喘', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='呼吸内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'呼吸衰竭', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='呼吸内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'肺水肿', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='呼吸内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'肺心病', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='呼吸内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'支气管炎', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='呼吸内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'小儿支气管炎', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='呼吸内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'扁桃体炎', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='呼吸内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'头痛', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='呼吸内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'流感', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='呼吸内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'感冒', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='呼吸内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'小儿感冒', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='呼吸内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'肺栓塞', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='呼吸内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'胸膜疾病', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='呼吸内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'肺脓肿', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='呼吸内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'发烧', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='呼吸内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'小儿咳嗽', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='呼吸内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'高原反应', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='呼吸内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'胸腔积液', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='呼吸内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'胸膜炎', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='呼吸内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'肺结核', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='呼吸内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'肺部疾病', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='呼吸内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'呼吸系统疾病', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='呼吸内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'睡眠呼吸暂停综合征', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='呼吸内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'花粉症', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='呼吸内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'急性呼吸窘迫综合征', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='呼吸内科';

-- 消化内科疾病
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'胃十二指肠疾病', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='消化内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'胃炎', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='消化内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'结肠癌', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='消化内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'结肠炎', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='消化内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'阑尾炎', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='消化内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'胃癌', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='消化内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'胃溃疡', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='消化内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'肠梗阻', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='消化内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'肠炎', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='消化内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'肠胃炎', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='消化内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'胃下垂', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='消化内科';INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'肠痉挛', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='消化内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'直肠癌', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='消化内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'直肠肛管疾病', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='消化内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'肠易激综合症', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='消化内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'胆囊炎', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='消化内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'胆结石', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='消化内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'胆囊息肉', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='消化内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'胆道肿瘤', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='消化内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'胆系疾病', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='消化内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'食道癌', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='消化内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'食管疾病', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='消化内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'消化不良', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='消化内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'反流性食管炎', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='消化内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'腹膜炎', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='消化内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'肝病', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='消化内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'肝炎', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='消化内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'乙肝', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='消化内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'肝癌', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='消化内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'肝硬化', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='消化内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'酒精肝', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='消化内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'肝腹水', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='消化内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'脂肪肝', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='消化内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'肝囊肿', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='消化内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'胰腺癌', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='消化内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'门静脉高压症', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='消化内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'消化道出血', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='消化内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'胰腺疾病', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='消化内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'胰腺炎', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='消化内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'黄疸', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='消化内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'布卡综合症', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='消化内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'结核性腹膜炎', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='消化内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'腹泻', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='消化内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'小儿腹泻', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='消化内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'细菌性痢疾', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='消化内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'肠疾病', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='消化内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'肠系膜缺血性疾病', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='消化内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'便秘', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='消化内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'消化系统疾病', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='消化内科';

-- 神经内科疾病
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'小儿脑瘫', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='神经内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'脑血栓', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='神经内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'脑出血', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='神经内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'脑水肿', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='神经内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'脑血管病', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='神经内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'小儿癫痫', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='神经内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'癫痫', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='神经内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'脑萎缩', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='神经内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'脑积水', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='神经内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'脑电图', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='神经内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'脑炎', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='神经内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'脑膜炎', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='神经内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'脑震荡', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='神经内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'帕金森', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='神经内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'脑供血不足', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='神经内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'颅脑先天畸形', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='神经内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'巨脑回', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='神经内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'偏瘫', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='神经内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'偏瘫', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='神经内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'截瘫', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='神经内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'痴呆', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='神经内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'失眠', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='神经内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'晕厥', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='神经内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'晕厥', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='神经内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'三叉神经痛', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='神经内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'失语', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='神经内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'周围神经病损', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='神经内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'内耳眩晕', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='神经内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'头晕', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='神经内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'神经衰弱', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='神经内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'耳聋', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='神经内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'神经炎', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='神经内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'耳鸣', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='神经内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'头痛', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='神经内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'植物神经疾病', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='神经内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'植物神经紊乱', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='神经内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'神经官能症', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='神经内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'面肌痉挛', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='神经内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'面瘫', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='神经内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'抽动症', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='神经内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'重症肌无力', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='神经内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'肌病', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='神经内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'惊厥', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='神经内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'发作性睡病', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='神经内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'佩梅病', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='神经内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'神经遗传性疾病', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='神经内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'脑脓肿', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='神经内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'视神经病', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='神经内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'失明', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='神经内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'脑器质性精神障碍', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='神经内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'神经系统副肿瘤', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='神经内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'小儿肌营养不良', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='神经内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'脑寄生虫病', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='神经内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'运动神经元病', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='神经内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'脊髓空洞症', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='神经内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'脊髓灰质炎', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='神经内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'智力障碍', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='神经内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'中枢神经系统疾病', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='神经内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'尿失禁', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='神经内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'中枢神经脱髓鞘', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='神经内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'锥体外系疾病', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='神经内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'脊髓小脑变性症', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='神经内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'神经介入', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='神经内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'神经皮肤综合症', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='神经内科';

-- 心血管内科疾病
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'冠心病', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='心血管内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'动脉粥样硬化', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='心血管内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'高血压', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='心血管内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'先天性心脏病', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='心血管内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'小儿先天性心脏病', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='心血管内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'高血脂', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='心血管内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'三高症', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='心血管内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'心衰', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='心血管内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'心律失常', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='心血管内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'小儿心律失常', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='心血管内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'心脏瓣膜性疾病', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='心血管内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'心肌病', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='心血管内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'心脏病', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='心血管内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'心肌炎', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='心血管内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'小儿心肌炎', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='心血管内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'风湿性心脏病', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='心血管内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'肺栓塞', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='心血管内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'肺水肿', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='心血管内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'肺心病', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='心血管内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'主动脉瘤', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='心血管内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'心脏介入', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='心血管内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'肾动脉狭窄', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='心血管内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'晕厥', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='心血管内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'高血压肾病', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='心血管内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'休克', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='心血管内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'心脏起搏器植入术', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='心血管内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'下肢静脉血栓', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='心血管内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'心包积液', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='心血管内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'心包炎', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='心血管内科';
INSERT INTO SubjectKeyWord (SubjectId, KeyWord, Instruction, IsFirst, IsPortal, AskCount, `Order`) SELECT ID, N'心脏神经官能症', NULL, 0, 1, NULL, NULL FROM SubjectSecond WHERE SecondName='心血管内科';


-- *********************** 教学学科 *********************
-- 一级学科
INSERT INTO TeachSubjectFirst (FirstName, Instruction, PicGuid, IsPortal, `Order`) VALUES ('基础医学', '基础医学', NULL, 0, NULL);
INSERT INTO TeachSubjectFirst (FirstName, Instruction, PicGuid, IsPortal, `Order`) VALUES ('临床医学', '临床医学', NULL, 0, NULL);
INSERT INTO TeachSubjectFirst (FirstName, Instruction, PicGuid, IsPortal, `Order`) VALUES ('口腔医学', '口腔医学', NULL, 0, NULL);
INSERT INTO TeachSubjectFirst (FirstName, Instruction, PicGuid, IsPortal, `Order`) VALUES ('公共卫生与预防医学', '公共卫生与预防医学', NULL, 0, NULL);
INSERT INTO TeachSubjectFirst (FirstName, Instruction, PicGuid, IsPortal, `Order`) VALUES ('中医学', '中医学', NULL, 0, NULL);
INSERT INTO TeachSubjectFirst (FirstName, Instruction, PicGuid, IsPortal, `Order`) VALUES ('中西医结合', '中西医结合', NULL, 0, NULL);
INSERT INTO TeachSubjectFirst (FirstName, Instruction, PicGuid, IsPortal, `Order`) VALUES ('药学', '药学', NULL, 0, NULL);
INSERT INTO TeachSubjectFirst (FirstName, Instruction, PicGuid, IsPortal, `Order`) VALUES ('中药学', '中药学', NULL, 0, NULL);
INSERT INTO TeachSubjectFirst (FirstName, Instruction, PicGuid, IsPortal, `Order`) VALUES ('其他', '其他', NULL, 0, NULL);

-- 二级学科
INSERT INTO TeachSubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) VALUES (1, '人体解剖与组织胚胎学', NULL, 0, NULL);
INSERT INTO TeachSubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) VALUES (1, '免疫学', NULL, 0, NULL);
INSERT INTO TeachSubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) VALUES (1, '病原生物学', NULL, 0, NULL);
INSERT INTO TeachSubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) VALUES (1, '病理学与病理生理学', NULL, 0, NULL);
INSERT INTO TeachSubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) VALUES (1, '法医学', NULL, 0, NULL);
INSERT INTO TeachSubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) VALUES (1, '航空、航天与航海医学', NULL, 0, NULL);
INSERT INTO TeachSubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) VALUES (2, '内科学', '含：心血管病、血液病、呼吸系病、消化系病、内分泌与代谢病、肾病、风湿病、传染病', 0, NULL);
INSERT INTO TeachSubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) VALUES (2, '儿科学', NULL, 0, NULL);
INSERT INTO TeachSubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) VALUES (2, '老年医学', NULL, 0, NULL);
INSERT INTO TeachSubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) VALUES (2, '神经病学', NULL, 0, NULL);
INSERT INTO TeachSubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) VALUES (2, '精神病与精神卫生学', NULL, 0, NULL);
INSERT INTO TeachSubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) VALUES (2, '皮肤病与性病学', NULL, 0, NULL);
INSERT INTO TeachSubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) VALUES (2, '影像医学与核医学', NULL, 0, NULL);
INSERT INTO TeachSubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) VALUES (2, '临床检验诊断学', NULL, 0, NULL);
INSERT INTO TeachSubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) VALUES (2, '护理学', NULL, 0, NULL);
INSERT INTO TeachSubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) VALUES (2, '外科学', '含：普外、骨外、泌尿外、胸心外、神外、整形、烧伤、野战外', 0, NULL);
INSERT INTO TeachSubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) VALUES (2, '妇产科学', NULL, 0, NULL);
INSERT INTO TeachSubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) VALUES (2, '眼科学', NULL, 0, NULL);
INSERT INTO TeachSubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) VALUES (2, '耳鼻咽喉科学', NULL, 0, NULL);
INSERT INTO TeachSubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) VALUES (2, '肿瘤学', NULL, 0, NULL);
INSERT INTO TeachSubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) VALUES (2, '康复医学与理疗学', NULL, 0, NULL);
INSERT INTO TeachSubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) VALUES (2, '运动医学', NULL, 0, NULL);
INSERT INTO TeachSubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) VALUES (2, '麻醉学', NULL, 0, NULL);
INSERT INTO TeachSubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) VALUES (2, '急诊医学', NULL, 0, NULL);
INSERT INTO TeachSubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) VALUES (3, '口腔基础医学', NULL, 0, NULL);
INSERT INTO TeachSubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) VALUES (3, '口腔临床医学', NULL, 0, NULL);
INSERT INTO TeachSubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) VALUES (4, '流行病与卫生统计学', NULL, 0, NULL);
INSERT INTO TeachSubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) VALUES (4, '劳动卫生与环境卫生学', NULL, 0, NULL);
INSERT INTO TeachSubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) VALUES (4, '营养与食品卫生学', NULL, 0, NULL);
INSERT INTO TeachSubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) VALUES (4, '儿少卫生与妇幼保健学', NULL, 0, NULL);
INSERT INTO TeachSubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) VALUES (4, '卫生毒理学', NULL, 0, NULL);
INSERT INTO TeachSubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) VALUES (4, '军事预防医学', NULL, 0, NULL);
INSERT INTO TeachSubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) VALUES (5, '中医基础理论', NULL, 0, NULL);
INSERT INTO TeachSubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) VALUES (5, '中医临床基础', NULL, 0, NULL);
INSERT INTO TeachSubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) VALUES (5, '中医医史文献', NULL, 0, NULL);
INSERT INTO TeachSubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) VALUES (5, '方剂学', NULL, 0, NULL);
INSERT INTO TeachSubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) VALUES (5, '中医诊断学', NULL, 0, NULL);
INSERT INTO TeachSubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) VALUES (5, '中医内科学', NULL, 0, NULL);
INSERT INTO TeachSubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) VALUES (5, '中医外科学', NULL, 0, NULL);
INSERT INTO TeachSubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) VALUES (5, '中医骨伤科学', NULL, 0, NULL);
INSERT INTO TeachSubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) VALUES (5, '中医妇科学', NULL, 0, NULL);
INSERT INTO TeachSubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) VALUES (5, '中医儿科学', NULL, 0, NULL);
INSERT INTO TeachSubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) VALUES (5, '中医五官科学', NULL, 0, NULL);
INSERT INTO TeachSubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) VALUES (5, '针灸推拿学', NULL, 0, NULL);
INSERT INTO TeachSubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) VALUES (5, '民族医学', '含：藏医学、蒙医学等', 0, NULL);
INSERT INTO TeachSubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) VALUES (6, '中西医结合基础', NULL, 0, NULL);
INSERT INTO TeachSubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) VALUES (6, '中西医结合临床', NULL, 0, NULL);
INSERT INTO TeachSubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) VALUES (7, '药物化学', NULL, 0, NULL);
INSERT INTO TeachSubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) VALUES (7, '药剂学', NULL, 0, NULL);
INSERT INTO TeachSubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) VALUES (7, '生药学', NULL, 0, NULL);
INSERT INTO TeachSubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) VALUES (7, '药物分析学', NULL, 0, NULL);
INSERT INTO TeachSubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) VALUES (7, '微生物与生化药学', NULL, 0, NULL);
INSERT INTO TeachSubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) VALUES (7, '药理学', NULL, 0, NULL);
INSERT INTO TeachSubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) VALUES (8, '中药学', NULL, 0, NULL);
INSERT INTO TeachSubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) VALUES (1, '放射医学', NULL, 0, NULL);
INSERT INTO TeachSubjectSecond (FirstId, SecondName, Instruction, IsPortal, `Order`) VALUES (9, '其他', NULL, 0, NULL);