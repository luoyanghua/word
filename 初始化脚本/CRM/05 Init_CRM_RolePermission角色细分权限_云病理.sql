/*============================================================================================*/
/* 数据初始化                                                                                 */
/* UpdateDate:2018-09-11                                                                      */
/* Author:Shentt                                                                              */
/* 共1项：角色细分权限表  RolePermission                                                      */
/* CRM 数据库                                                                                 */
/*============================================================================================*/



/*
RoleName： 医生
Category:  PathologyCloud（云病理）
Name - SystemName： 切片会诊 - SectionConsultation、切片+免疫组化 - Immunohistochemistry、分子病理 - MolecularPathology、冰冻诊断 - FrozenSection、终审 - FinalJudgment、强制修改（按钮）- CompulsiveModification、退回报告重写（按钮）- ReturnReportRewrite、保存并发布（按钮）- SaveAndPublish、案例点评（按钮）- CaseReview、 科普文章审核 - ArticleAudit 、 管理指导 - ManageGuide

RoleName： 医护人员
Category:  PathologyCloud（云病理）
Name - SystemName： 审核会诊资料 - AuditConsultation 、 上传会诊资料 - UploadConsultation
*/

INSERT INTO RolePermission (RoleName, Name, SystemName, Category) VALUES( N'医生', N'切片会诊', N'SectionConsultation', N'PathologyCloud');
INSERT INTO RolePermission (RoleName, Name, SystemName, Category) VALUES( N'医生', N'切片+免疫组化', N'Immunohistochemistry', N'PathologyCloud');
INSERT INTO RolePermission (RoleName, Name, SystemName, Category) VALUES( N'医生', N'分子病理', N'MolecularPathology', N'PathologyCloud');
INSERT INTO RolePermission (RoleName, Name, SystemName, Category) VALUES( N'医生', N'冰冻诊断', N'FrozenSection', N'PathologyCloud');
INSERT INTO RolePermission (RoleName, Name, SystemName, Category) VALUES( N'医生', N'终审', N'FinalJudgment', N'PathologyCloud');
INSERT INTO RolePermission (RoleName, Name, SystemName, Category) VALUES( N'医生', N'强制修改', N'CompulsiveModification', N'PathologyCloud');
INSERT INTO RolePermission (RoleName, Name, SystemName, Category) VALUES( N'医生', N'退回报告重写', N'ReturnReportRewrite', N'PathologyCloud');
INSERT INTO RolePermission (RoleName, Name, SystemName, Category) VALUES( N'医生', N'保存并发布', N'SaveAndPublish', N'PathologyCloud');
INSERT INTO RolePermission (RoleName, Name, SystemName, Category) VALUES( N'医生', N'案例点评', N'CaseReview', N'PathologyCloud');
INSERT INTO RolePermission (RoleName, Name, SystemName, Category) VALUES( N'医生', N'科普文章审核', N'ArticleAudit', N'PathologyCloud');
INSERT INTO RolePermission (RoleName, Name, SystemName, Category) VALUES( N'医生', N'管理指导', N'ManageGuide', N'PathologyCloud');

INSERT INTO RolePermission (RoleName, Name, SystemName, Category) VALUES( N'医护人员', N'审核会诊资料', N'AuditConsultation', N'PathologyCloud');
INSERT INTO RolePermission (RoleName, Name, SystemName, Category) VALUES( N'医护人员', N'上传会诊资料', N'UploadConsultation', N'PathologyCloud');