/*============================================================================================*/
/* 数据初始化                                                                                 */
/* UpdateDate:2017-06-20                                                                      */
/* Author:Shentt                                                                              */
/* 共1项：帮助中心 问题解答  Problem                                                          */
/* CRM 数据库                                                                                 */
/*============================================================================================*/



-- ******************* 问题解答 ************************
-- 用户注册
INSERT INTO Problem (Title, Answer, Kind, CustomerKind, SourceSystem, TypeCode, TypeName, IsHasAnswer, ParentId) VALUES (N'机构注册需要上传哪些凭证？', N'机构注册需要提供以下凭证：1) 机构资质证照; 2) 机构执业许可证。', '1110', '1', '1100', 'UserRegister', N'用户注册', 1, NULL);

INSERT INTO Problem (Title, Answer, Kind, CustomerKind, SourceSystem, TypeCode, TypeName, IsHasAnswer, ParentId) VALUES (N'网上申请好后，怎么查看有没有通过审核？', N'在机构注册界面，有一个“进度查询”的按钮，点击进入后，通过输入联系人的手机号和收到的验证码来查看审核进度。', '1110', '1', '1100', 'UserRegister', N'用户注册', 1, NULL);

INSERT INTO Problem (Title, Answer, Kind, CustomerKind, SourceSystem, TypeCode, TypeName, IsHasAnswer, ParentId) VALUES (N'平台审核后，有没有通知？', N'平台运营人员审核后，系统会发短信通知机构联系人，告知登录的账号信息。', '1110', '1', '1100', 'UserRegister', N'用户注册', 1, NULL);

INSERT INTO Problem (Title, Answer, Kind, CustomerKind, SourceSystem, TypeCode, TypeName, IsHasAnswer, ParentId) VALUES (N'医生注册需要上传哪些凭证？', N'医生注册需要提供以下凭证：1) 实名认证的身份信息和证件照; 2) 医生执业证书; 3) 医生资格证书; 4) 医生工牌照', '1110', '2', '1100', 'UserRegister', N'用户注册', 1, NULL);

INSERT INTO Problem (Title, Answer, Kind, CustomerKind, SourceSystem, TypeCode, TypeName, IsHasAnswer, ParentId) VALUES (N'公众用户怎么注册？', N'公众用户可以直接在网站注册入口进行注册，也支持在APP端进行注册。', '1110', '3', '1100', 'UserRegister', N'用户注册', 1, NULL);

INSERT INTO Problem (Title, Answer, Kind, CustomerKind, SourceSystem, TypeCode, TypeName, IsHasAnswer, ParentId) VALUES (N'公众用户注册后需要审核吗？', N'公众用户注册后，不需要审核，可以直接登录。', '1110', '3', '1100', 'UserRegister', N'用户注册', 1, NULL);

-- 开通服务
INSERT INTO Problem (Title, Answer, Kind, CustomerKind, SourceSystem, TypeCode, TypeName, IsHasAnswer, ParentId) VALUES (N'机构怎么签约服务？', N'机构需要跟平台进行签约，包括签约的服务类型和服务时间。', '1110', '1', '1100', 'ServiceOpen', N'开通服务', 1, NULL);
INSERT INTO Problem (Title, Answer, Kind, CustomerKind, SourceSystem, TypeCode, TypeName, IsHasAnswer, ParentId) VALUES (N'机构与机构之间怎么签约服务？', N'机构间的服务可以在机构管理界面进行签约，同时也要上传书面的签约凭证。', '1110', '1', '1100', 'ServiceOpen', N'开通服务', 1, NULL);

INSERT INTO Problem (Title, Answer, Kind, CustomerKind, SourceSystem, TypeCode, TypeName, IsHasAnswer, ParentId) VALUES (N'医生用户怎么签约服务？', N'医生跟提供服务的机构进行签约，同时平台运营人员也可以进行监管和审核。', '1110', '2', '1100', 'ServiceOpen', N'开通服务', 1, NULL);

INSERT INTO Problem (Title, Answer, Kind, CustomerKind, SourceSystem, TypeCode, TypeName, IsHasAnswer, ParentId) VALUES (N'公众用户需要跟平台签约服务吗？', N'公众用户不需要跟平台签约服务。', '1110', '3', '1100', 'ServiceOpen', N'开通服务', 1, NULL);

-- 业务概述
INSERT INTO Problem (Title, Answer, Kind, CustomerKind, SourceSystem, TypeCode, TypeName, IsHasAnswer, ParentId) VALUES (N'什么是影像云归档？', N'影像云归档为各类医疗机构提供全面的检查数据的异地备份和在线调阅，实现医护人员任意时间、任意地点、任意智能终端调阅患者多科室检查数据。同时患者可以通过扫描二维码、点击短信链接调阅云端的检查报告、电子胶片和原始影像。', '1110', '1', '1100', 'BusinessOverview', N'业务概述', 1, NULL);

INSERT INTO Problem (Title, Answer, Kind, CustomerKind, SourceSystem, TypeCode, TypeName, IsHasAnswer, ParentId) VALUES (N'远程医疗协同系统是什么？', N'远程医疗协同系统提供了各级医疗机构之间自由选择结对，相互之间开展跨机构、跨地域的远程诊断、远程会诊、远程门诊等医疗服务。', '1110', '1', '1100', 'BusinessOverview', N'业务概述', 1, NULL);

INSERT INTO Problem (Title, Answer, Kind, CustomerKind, SourceSystem, TypeCode, TypeName, IsHasAnswer, ParentId) VALUES (N'远程医疗协同系统是什么？', N'远程医疗协同系统提供了各级医疗机构之间自由选择结对，相互之间开展跨机构、跨地域的远程诊断、远程会诊、远程门诊等医疗服务。', '1110', '2', '1100', 'BusinessOverview', N'业务概述', 1, NULL);

INSERT INTO Problem (Title, Answer, Kind, CustomerKind, SourceSystem, TypeCode, TypeName, IsHasAnswer, ParentId) VALUES (N'公众健康服务系统提供了哪些服务？', N'公众健康服务系统为公众提供远程问诊、影像咨询，网络门诊等服务；精确匹配专家，为公众提供专业，精确，个性化的服务。', '1110', '3', '1100', 'BusinessOverview', N'业务概述', 1, NULL);

-- 使用帮助
INSERT INTO Problem (Title, Answer, Kind, CustomerKind, SourceSystem, TypeCode, TypeName, IsHasAnswer, ParentId) VALUES (N'单位有新同事转入，怎么新增？', N'在机构管理界面，点击“用户管理-医生管理”，可以新增医生。', '1110', '1', '1100', 'Instruction', N'使用帮助', 1, NULL);
INSERT INTO Problem (Title, Answer, Kind, CustomerKind, SourceSystem, TypeCode, TypeName, IsHasAnswer, ParentId) VALUES (N'服务中心怎么签约专家？', N'在机构管理界面，点击“签约管理-签约专家”，可以管理已签约的专家和签约新的专家。', '1110', '1', '1100', 'Instruction', N'使用帮助', 1, NULL);

INSERT INTO Problem (Title, Answer, Kind, CustomerKind, SourceSystem, TypeCode, TypeName, IsHasAnswer, ParentId) VALUES (N'怎么下载APP？', N'在门户网站，点击“云医生APP”，扫描二维码即可下载。', '1110', '2', '1100', 'Instruction', N'使用帮助', 1, NULL);

INSERT INTO Problem (Title, Answer, Kind, CustomerKind, SourceSystem, TypeCode, TypeName, IsHasAnswer, ParentId) VALUES (N'注册时，没有收到短信怎么办？', N'可以联系平台客服人员来处理。', '1110', '3', '1100', 'Instruction', N'使用帮助', 1, NULL);


-- 常见问题
INSERT INTO Problem (Title, Answer, Kind, CustomerKind, SourceSystem, TypeCode, TypeName, IsHasAnswer, ParentId) VALUES (N'机构服务到期了，怎么办？', N'需要联系平台客服，进行续约', '1110', '1', '1100', 'FAQ', N'常见问题', 1, NULL);


INSERT INTO Problem (Title, Answer, Kind, CustomerKind, SourceSystem, TypeCode, TypeName, IsHasAnswer, ParentId) VALUES (N'我想在手机上写病人的报告，该怎么做？', N'医生用户可以下载云医生APP,在门户网站，点击“云医生APP”，扫描二维码即可下载。 ', '1110', '2', '1100', 'FAQ', N'常见问题', 1, NULL);

INSERT INTO Problem (Title, Answer, Kind, CustomerKind, SourceSystem, TypeCode, TypeName, IsHasAnswer, ParentId) VALUES (N'忘记密码了怎么办？', N'平台提供找回密码的功能，在登录页面可以看到，要求是手机号需要填写正确（根据手机号的验证码来找回）。如果该账号之前填写的手机号无法使用了，则联系平台客服人员来重置。', '1110', '3', '1100', 'FAQ', N'常见问题', 1, NULL);

