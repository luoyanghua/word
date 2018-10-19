/*============================================================================================*/
/* 数据初始化                                                                                 */
/* UpdateDate:2017-06-20                                                                      */
/* Author:Shentt                                                                              */
/* 共2项：业务资料     DocFirstItem    SecondItemGuid                                         */
/* COMMON 数据库                                                                              */
/*============================================================================================*/



-- ******************* 业务资料 ************************

-- 会诊
INSERT INTO DocFirstItem (FirstItemGuid, FirstItemName, BusinessType, KindCode, KindName, SubKindCode, SubKindName, FilexExt, FormatCode, IsNeed, IsHasSecond, SortNo) VALUES ('e1df76f0f4b111e6bcac0050569e49f5', '当前检查影像', 10, 'PACS', '影像会诊', NULL, NULL, '.rar,.zip,.7z', 'DICOMDIR', 1, 0, 1);
INSERT INTO DocFirstItem (FirstItemGuid, FirstItemName, BusinessType, KindCode, KindName, SubKindCode, SubKindName, FilexExt, FormatCode, IsNeed, IsHasSecond, SortNo) VALUES ('0b2d110ff4ba11e6bcac0050569e49f5', '历史检查影像', 10, 'PACS', '影像会诊', NULL, NULL, '.rar,.zip,.7z', 'DICOMDIR', 0, 0, 2);
INSERT INTO DocFirstItem (FirstItemGuid, FirstItemName, BusinessType, KindCode, KindName, SubKindCode, SubKindName, FilexExt, FormatCode, IsNeed, IsHasSecond, SortNo) VALUES ('0b2ef308f4ba11e6bcac0050569e49f5', '相关检查', 10, 'PACS', '影像会诊', NULL, NULL, '.jpg,.jpe,.jpeg,.png,.gif,.bmp,.pdf,.doc,.docx,.xls,.xlsx,.ppt,.pptx,.svg', NULL, 0, 0, 3);
INSERT INTO DocFirstItem (FirstItemGuid, FirstItemName, BusinessType, KindCode, KindName, SubKindCode, SubKindName, FilexExt, FormatCode, IsNeed, IsHasSecond, SortNo) VALUES ('0b305a67f4ba11e6bcac0050569e49f5', '相关检验', 10, 'PACS', '影像会诊', NULL, NULL, '.jpg,.jpe,.jpeg,.png,.gif,.bmp,.pdf,.doc,.docx,.xls,.xlsx,.ppt,.pptx,.svg', NULL, 0, 0, 4);
INSERT INTO DocFirstItem (FirstItemGuid, FirstItemName, BusinessType, KindCode, KindName, SubKindCode, SubKindName, FilexExt, FormatCode, IsNeed, IsHasSecond, SortNo) VALUES ('0b32a399f4ba11e6bcac0050569e49f5', '相关病历', 10, 'PACS', '影像会诊', NULL, NULL, '.jpg,.jpe,.jpeg,.png,.gif,.bmp,.pdf,.doc,.docx,.xls,.xlsx,.ppt,.pptx,.svg', NULL, 0, 0, 5);
INSERT INTO DocFirstItem (FirstItemGuid, FirstItemName, BusinessType, KindCode, KindName, SubKindCode, SubKindName, FilexExt, FormatCode, IsNeed, IsHasSecond, SortNo) VALUES ('0b34a2f4f4ba11e6bcac0050569e49f5', '当前检查心电波形', 10, 'ECG', '心电会诊', NULL, NULL, '.aecg,.ecg,.svg,.dcm', 'AECG', 1, 0, 1);
INSERT INTO DocFirstItem (FirstItemGuid, FirstItemName, BusinessType, KindCode, KindName, SubKindCode, SubKindName, FilexExt, FormatCode, IsNeed, IsHasSecond, SortNo) VALUES ('0b3696fff4ba11e6bcac0050569e49f5', '历史检查心电波形', 10, 'ECG', '心电会诊', NULL, NULL, '.aecg,.ecg,.svg,.dcm', 'AECG', 0, 0, 2);
INSERT INTO DocFirstItem (FirstItemGuid, FirstItemName, BusinessType, KindCode, KindName, SubKindCode, SubKindName, FilexExt, FormatCode, IsNeed, IsHasSecond, SortNo) VALUES ('0b38cea3f4ba11e6bcac0050569e49f5', '相关检查', 10, 'ECG', '心电会诊', NULL, NULL, '.jpg,.jpe,.jpeg,.png,.gif,.bmp,.pdf,.doc,.docx,.xls,.xlsx,.ppt,.pptx,.svg', NULL, 0, 0, 3);
INSERT INTO DocFirstItem (FirstItemGuid, FirstItemName, BusinessType, KindCode, KindName, SubKindCode, SubKindName, FilexExt, FormatCode, IsNeed, IsHasSecond, SortNo) VALUES ('0b3a7ec3f4ba11e6bcac0050569e49f5', '相关检验', 10, 'ECG', '心电会诊', NULL, NULL, '.jpg,.jpe,.jpeg,.png,.gif,.bmp,.pdf,.doc,.docx,.xls,.xlsx,.ppt,.pptx,.svg', NULL, 0, 0, 4);
INSERT INTO DocFirstItem (FirstItemGuid, FirstItemName, BusinessType, KindCode, KindName, SubKindCode, SubKindName, FilexExt, FormatCode, IsNeed, IsHasSecond, SortNo) VALUES ('0b3cae34f4ba11e6bcac0050569e49f5', '相关病历', 10, 'ECG', '心电会诊', NULL, NULL, '.jpg,.jpe,.jpeg,.png,.gif,.bmp,.pdf,.doc,.docx,.xls,.xlsx,.ppt,.pptx,.svg', NULL, 0, 0, 5);
INSERT INTO DocFirstItem (FirstItemGuid, FirstItemName, BusinessType, KindCode, KindName, SubKindCode, SubKindName, FilexExt, FormatCode, IsNeed, IsHasSecond, SortNo) VALUES ('53ca2928f4ba11e6bcac0050569e49f5', '当前检查切片', 10, 'PIS', '病理会诊', NULL, NULL, '.svs,.tif,.vms,.vmu,.ndpi,.scn,.mrxs,.tiff,.svslide,.bif,.dmetrix', 'SECTION', 1, 0, 1);
INSERT INTO DocFirstItem (FirstItemGuid, FirstItemName, BusinessType, KindCode, KindName, SubKindCode, SubKindName, FilexExt, FormatCode, IsNeed, IsHasSecond, SortNo) VALUES ('53cb6f49f4ba11e6bcac0050569e49f5', '历史检查切片', 10, 'PIS', '病理会诊', NULL, NULL, '.svs,.tif,.vms,.vmu,.ndpi,.scn,.mrxs,.tiff,.svslide,.bif,.dmetrix', 'SECTION', 0, 0, 2);
INSERT INTO DocFirstItem (FirstItemGuid, FirstItemName, BusinessType, KindCode, KindName, SubKindCode, SubKindName, FilexExt, FormatCode, IsNeed, IsHasSecond, SortNo) VALUES ('53cc9ccef4ba11e6bcac0050569e49f5', '相关病历', 10, 'PIS', '病理会诊', NULL, NULL, '.jpg,.jpe,.jpeg,.png,.gif,.bmp,.pdf,.doc,.docx,.xls,.xlsx,.ppt,.pptx,.svg', NULL, 0, 0, 5);
INSERT INTO DocFirstItem (FirstItemGuid, FirstItemName, BusinessType, KindCode, KindName, SubKindCode, SubKindName, FilexExt, FormatCode, IsNeed, IsHasSecond, SortNo) VALUES ('4133b1aef81211e6bcac0050569e49f5', '当前检查影像', 10, 'CIS', '临床会诊', NULL, NULL, '.rar,.zip,.7z', 'DICOMDIR', 0, 0, 1);
INSERT INTO DocFirstItem (FirstItemGuid, FirstItemName, BusinessType, KindCode, KindName, SubKindCode, SubKindName, FilexExt, FormatCode, IsNeed, IsHasSecond, SortNo) VALUES ('4135c6a8f81211e6bcac0050569e49f5', '历史检查影像', 10, 'CIS', '临床会诊', NULL, NULL, '.rar,.zip,.7z', 'DICOMDIR', 0, 0, 2);
INSERT INTO DocFirstItem (FirstItemGuid, FirstItemName, BusinessType, KindCode, KindName, SubKindCode, SubKindName, FilexExt, FormatCode, IsNeed, IsHasSecond, SortNo) VALUES ('4137ad16f81211e6bcac0050569e49f5', '相关检查', 10, 'CIS', '临床会诊', NULL, NULL, '.jpg,.jpe,.jpeg,.png,.gif,.bmp,.pdf,.doc,.docx,.xls,.xlsx,.ppt,.pptx,.svg', NULL, 0, 0, 3);
INSERT INTO DocFirstItem (FirstItemGuid, FirstItemName, BusinessType, KindCode, KindName, SubKindCode, SubKindName, FilexExt, FormatCode, IsNeed, IsHasSecond, SortNo) VALUES ('413beed5f81211e6bcac0050569e49f5', '相关检验', 10, 'CIS', '临床会诊', NULL, NULL, '.jpg,.jpe,.jpeg,.png,.gif,.bmp,.pdf,.doc,.docx,.xls,.xlsx,.ppt,.pptx,.svg', NULL, 0, 0, 4);
INSERT INTO DocFirstItem (FirstItemGuid, FirstItemName, BusinessType, KindCode, KindName, SubKindCode, SubKindName, FilexExt, FormatCode, IsNeed, IsHasSecond, SortNo) VALUES ('413e90aff81211e6bcac0050569e49f5', '相关病历', 10, 'CIS', '临床会诊', NULL, NULL, '.jpg,.jpe,.jpeg,.png,.gif,.bmp,.pdf,.doc,.docx,.xls,.xlsx,.ppt,.pptx,.svg', NULL, 0, 1, 5);

INSERT INTO DocSecondItem (SecondItemGuid, SecondItemName, FirstItemGuid, FilexExt, ServiceCenterId, ServiceCenterName, IsPlat, IsNeed, SortNo) VALUES ( 'd14ed45bf81211e6bcac0050569e49f5', '家族史', '413e90aff81211e6bcac0050569e49f5', '.jpg,.jpe,.jpeg,.png,.gif,.bmp,.pdf,.doc,.docx,.xls,.xlsx,.ppt,.pptx,.svg', NULL, NULL, 1, 0, 1);
INSERT INTO DocSecondItem (SecondItemGuid, SecondItemName, FirstItemGuid, FilexExt, ServiceCenterId, ServiceCenterName, IsPlat, IsNeed, SortNo) VALUES ( 'd14ff9fbf81211e6bcac0050569e49f5', '既往史', '413e90aff81211e6bcac0050569e49f5', '.jpg,.jpe,.jpeg,.png,.gif,.bmp,.pdf,.doc,.docx,.xls,.xlsx,.ppt,.pptx,.svg', NULL, NULL, 1, 0, 2);
INSERT INTO DocSecondItem (SecondItemGuid, SecondItemName, FirstItemGuid, FilexExt, ServiceCenterId, ServiceCenterName, IsPlat, IsNeed, SortNo) VALUES ( 'd1518f53f81211e6bcac0050569e49f5', '其他病史', '413e90aff81211e6bcac0050569e49f5', '.jpg,.jpe,.jpeg,.png,.gif,.bmp,.pdf,.doc,.docx,.xls,.xlsx,.ppt,.pptx,.svg', NULL, NULL, 1, 0, 3);



-- 教学
INSERT INTO DocFirstItem (FirstItemGuid, FirstItemName, BusinessType, KindCode, KindName, SubKindCode, SubKindName, FilexExt, FormatCode, IsNeed, IsHasSecond, SortNo) VALUES ('141f9954dbec44a2a33a7808fb58f319', '检查报告', 30, NULL, NULL, NULL, NULL, '.jpg,.jpe,.jpeg,.png,.gif,.bmp,.pdf,.doc,.docx,.xls,.xlsx,.ppt,.pptx,.svg', NULL, 0, 0, 1);
INSERT INTO DocFirstItem (FirstItemGuid, FirstItemName, BusinessType, KindCode, KindName, SubKindCode, SubKindName, FilexExt, FormatCode, IsNeed, IsHasSecond, SortNo) VALUES ('67ddb4598f5942ad8e7cb145c26bd540', '检查影像', 30, NULL, NULL, NULL, NULL, '.rar,.zip,.7z', 'DICOMDIR', 0, 0, 2);
INSERT INTO DocFirstItem (FirstItemGuid, FirstItemName, BusinessType, KindCode, KindName, SubKindCode, SubKindName, FilexExt, FormatCode, IsNeed, IsHasSecond, SortNo) VALUES ('1662f914244f4732bc78e0b18af83b59', '其他', 30, NULL, NULL, NULL, NULL, '.jpg,.jpe,.jpeg,.png,.gif,.bmp,.pdf,.doc,.docx,.xls,.xlsx,.ppt,.pptx,.svg', NULL, 0, 0, 3);

COMMIT;