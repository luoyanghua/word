﻿
/*============================================================================================*/
/* 数据初始化                                                                                 */
/* UpdateDate:2016-12-15                                                                      */
/* Author:Shentt                                                                              */
/* 共3项：质控类型对应医技系统和科室、质控类型对应检查类型、质控规范模板                      */
/* Quality 数据库                                                                              */
/*============================================================================================*/

/* QualitySysConfig  质控类型对应医技系统和科室  */
INSERT INTO QualitySysConfig (QualityCode, QualityName, Sysconfig, OfficeId, Office) VALUES ('PACSQuality', '影像质控', 'RIS', 31, '医学影像科');

/* QualitySysConfig  质控类型对应检查类型  */
INSERT INTO QualityExamineType (QualityCode, QualityName, ExamineType) VALUES ('PACSQuality', '影像质控', 'CT');
INSERT INTO QualityExamineType (QualityCode, QualityName, ExamineType) VALUES ('PACSQuality', '影像质控', 'MR');
INSERT INTO QualityExamineType (QualityCode, QualityName, ExamineType) VALUES ('PACSQuality', '影像质控', 'CR');
INSERT INTO QualityExamineType (QualityCode, QualityName, ExamineType) VALUES ('PACSQuality', '影像质控', 'DR');
INSERT INTO QualityExamineType (QualityCode, QualityName, ExamineType) VALUES ('PACSQuality', '影像质控', 'RF');
INSERT INTO QualityExamineType (QualityCode, QualityName, ExamineType) VALUES ('PACSQuality', '影像质控', 'XA');
INSERT INTO QualityExamineType (QualityCode, QualityName, ExamineType) VALUES ('PACSQuality', '影像质控', 'MG');
INSERT INTO QualityExamineType (QualityCode, QualityName, ExamineType) VALUES ('PACSQuality', '影像质控', 'OT');
INSERT INTO QualityExamineType (QualityCode, QualityName, ExamineType) VALUES ('PACSQuality', '影像质控', 'NM');   

/* QualityTemplate  质控规范模板表  */
INSERT INTO QualityTemplate (QualityCenterId, TemplateCode, TemplateName, QualityCode, QualityName, TemplateXML, CreateYear, Region, UploadTime, IsDefault, IsUse) VALUES (0, 'qc2012', '质控2012规范模板', 'PACSQuality', '影像质控', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<qc xmlns=\"http://tempuri.org/XMLSchema.xs\">\n  <name>放射科影像技术和诊断质量评价</name>\n  <province>浙江省</province>\n  <createdate>2012-05-01</createdate>\n  <desciption></desciption>\n  <scorelevel>\n    <totalscore>100</totalscore>\n    <levelitem>\n      <levelitemname>优</levelitemname>\n      <minscore>90</minscore>\n      <maxscore>100</maxscore>\n    </levelitem>\n    <levelitem>\n      <levelitemname>良</levelitemname>\n      <minscore>80</minscore>\n      <maxscore>89</maxscore>\n    </levelitem>\n    <levelitem>\n      <levelitemname>差</levelitemname>\n      <minscore>70</minscore>\n      <maxscore>79</maxscore>\n    </levelitem>\n    <levelitem>\n      <levelitemname>不及格</levelitemname>\n      <minscore>1</minscore>\n      <maxscore>69</maxscore>\n    </levelitem>  </scorelevel>\n  <qcitem>\n    <qccode>image</qccode>\n    <examinetype>DR,CR,DX,X线</examinetype>\n    <qcitemname>影像质量</qcitemname>\n    <qctotalscore>100</qctotalscore>\n    <qcweights>30</qcweights>\n    <qcitemdesciption></qcitemdesciption>\n    <qccontent>\n      <guide>\n        1、X线照片满足影像诊断要求。&#x0D;&#x0A;\n        2、X线照片标识、左右标志正确，检查号、检查日期、检查医院、被检者姓名、性别、年龄、图象放大比例或比例尺等信息完整。&#x0D;&#x0A;\n        3、用片尺寸统一，用片尺寸合理，分格规范，照射野大小控制适当。成人胸片不小于11×14英寸。&#x0D;&#x0A;\n        4、图像放大比例一致：正位片与侧位片或斜位片放大比例一致。同一部位不同时间摄片放大比例一致。成人胸片放大比例不小于65%。5、整体画面布局美观，影像无失真变形。&#x0D;&#x0A;\n        除上述一般要求外，优质图像标准&#x0D;&#x0A;\n        1、密度合适（照片中诊断密度范围控制在0.25~2.0D之间）。&#x0D;&#x0A;\n        2、层次分明：参照《放射科管理与技术规范》放射科技术质量标准。&#x0D;&#x0A;\n        3、摄影体位正确：参照《放射科管理与技术规范》放射科技术质量标准。组织影像应符合正常的解剖投影，无失真。&#x0D;&#x0A;\n        4、照射野大小合适：被检部位影像全部在照片上显示，但不应过多包含非检查部位，尤其是内分泌腺；重点组织界限清楚；脊柱应含相邻椎体；四肢长骨至少应包括1个邻近关节；肋骨应包括第1或第12肋骨。&#x0D;&#x0A;\n        5、无体外伪影。&#x0D;&#x0A;\n        6、无运动伪影。&#x0D;&#x0A;\n        7、特殊检查体位应标注。&#x0D;&#x0A;\n        8、胶片无污片、划片、粘片、指纹。\n      </guide>\n      <marking>\n        <markingitemname>影像对比</markingitemname>\n        <markingmethod>看电脑图片或胶片图像，对比欠佳</markingmethod>\n        <markingvalue>5</markingvalue>\n        <hassubmarking>false</hassubmarking>\n      </marking>\n      <marking>\n        <markingitemname>图像层次</markingitemname>\n        <markingmethod>看电脑图片或胶片图像，层次分明</markingmethod>\n        <markingvalue>5</markingvalue>\n        <hassubmarking>false</hassubmarking>\n      </marking>\n      <marking>\n        <markingitemname>投照野控制</markingitemname>\n        <markingmethod>投照野过大或包括不全</markingmethod>\n        <markingvalue>5</markingvalue>\n        <hassubmarking>false</hassubmarking>\n      </marking>\n      <marking>\n        <markingitemname>伪影</markingitemname>\n        <hassubmarking>true</hassubmarking>\n        <submarking>\n          <submarkingitemname>伪影</submarkingitemname>\n          <submarkingmethod>不影响诊断的伪影，如内衣扣、金属线</submarkingmethod>\n          <submarkingvalue>5</submarkingvalue>\n        </submarking>\n        <submarking>\n          <submarkingitemname>伪影</submarkingitemname>\n          <submarkingmethod>有可能误认为病变的伪影</submarkingmethod>\n          <submarkingvalue>50</submarkingvalue>\n        </submarking>\n        <submarking>\n          <submarkingitemname>伪影</submarkingitemname>\n          <submarkingmethod>伪影范围较大，掩盖诊断区</submarkingmethod>\n          <submarkingvalue>50</submarkingvalue>\n        </submarking>\n        <submarking>\n          <submarkingitemname>伪影</submarkingitemname>\n          <submarkingmethod>呼吸伪影和运动伪影</submarkingmethod>\n          <submarkingvalue>5</submarkingvalue>\n        </submarking>\n        <submarking>\n          <submarkingitemname>伪影</submarkingitemname>\n          <submarkingmethod>抽查胶片，有污片、划片、粘片</submarkingmethod>\n          <submarkingvalue>5</submarkingvalue>\n        </submarking>\n      </marking>\n      <marking>\n        <markingitemname>图像标识</markingitemname>\n        <hassubmarking>true</hassubmarking>\n        <submarking>\n          <submarkingitemname>图像标识</submarkingitemname>\n          <submarkingmethod>不完整</submarkingmethod>\n          <submarkingvalue>5</submarkingvalue>\n        </submarking>\n        <submarking>\n          <submarkingitemname>图像重要标识</submarkingitemname>\n          <submarkingmethod>如左右、姓名、性别错误</submarkingmethod>\n          <submarkingvalue>50</submarkingvalue>\n        </submarking>\n      </marking>\n      <marking>\n        <markingitemname>摄影体位</markingitemname>\n        <markingmethod>不标准</markingmethod>\n        <markingvalue>15</markingvalue>\n        <hassubmarking>false</hassubmarking>\n      </marking>\n      <marking>\n        <markingitemname>特殊体位</markingitemname>\n        <markingmethod>无标注</markingmethod>\n        <markingvalue>10</markingvalue>\n        <hassubmarking>false</hassubmarking>\n      </marking>\n      <marking>\n        <markingitemname>摄影部位错位</markingitemname>\n        <markingmethod>对照申请单和摄影部位是否一致</markingmethod>\n        <markingvalue>50</markingvalue>\n        <hassubmarking>false</hassubmarking>\n      </marking>\n      <marking>\n        <markingitemname>图像放大比例</markingitemname>\n        <markingmethod>抽查胶片，图像放大比例是否一致</markingmethod>\n        <markingvalue>5</markingvalue>\n        <hassubmarking>false</hassubmarking>\n      </marking>\n      <marking>\n        <markingitemname>用片统一，尺寸合理</markingitemname>\n        <markingmethod>抽查胶片</markingmethod>\n        <markingvalue>5</markingvalue>\n        <hassubmarking>false</hassubmarking>\n      </marking>\n    </qccontent>\n  </qcitem>  \n  <qcitem>\n    <qccode>image</qccode>\n    <examinetype>CT,MR,MRI</examinetype>\n    <qcitemname>影像质量</qcitemname>\n    <qctotalscore>100</qctotalscore>\n    <qcweights>30</qcweights>\n    <qcitemdesciption></qcitemdesciption>\n    <qccontent>\n      <guide>\n        1、根据临床检查要求和疾病诊断需要，合理选择扫描范围、扫描参数、检查序列。&#x0D;&#x0A;\n        2、扫描范围必须包括整个被检查器官或部位。&#x0D;&#x0A;\n        3、选择合适窗宽窗位，因头部外伤的头颅CT扫描必须有骨窗。肺部扫描必须有肺窗和纵隔窗。&#x0D;&#x0A;\n        4、对于CT检查，在满足诊断的前提下，尽量减少X线剂量。&#x0D;&#x0A;\n        5、定位标识明确，一般信息完整。&#x0D;&#x0A;\n        6、增强扫描增强效果良好。&#x0D;&#x0A;\n        7、CT、MR照片应有定位相。&#x0D;&#x0A;\n        8、CT、MR照片排列顺序：横断位：躯干从上到下、四肢由近到远；冠状位：由前到后；矢状位：由右到左。&#x0D;&#x0A;\n        9、对不同检查部位的CT影像质量标准，参照浙江省《放射科管理与技术规范》第五章第二节，CT影像标准。\n      </guide>\n      <marking>\n        <markingitemname>影像对比</markingitemname>\n        <markingmethod>看电脑图片或胶片图像，对比欠佳</markingmethod>\n        <markingvalue>5</markingvalue>\n        <hassubmarking>false</hassubmarking>\n      </marking>\n      <marking>\n        <markingitemname>图像层次</markingitemname>\n        <markingmethod>看电脑图片或胶片图像，层次分明</markingmethod>\n        <markingvalue>5</markingvalue>\n        <hassubmarking>false</hassubmarking>\n      </marking>\n      <marking>\n        <markingitemname>扫描范围</markingitemname>\n        <markingmethod>过大或包括不全</markingmethod>\n        <markingvalue>5</markingvalue>\n        <hassubmarking>false</hassubmarking>\n      </marking>\n      <marking>\n        <markingitemname>人为伪影</markingitemname>\n        <markingmethod>如未去除的金属物引起的伪影</markingmethod>\n        <markingvalue>10</markingvalue>\n        <hassubmarking>false</hassubmarking>\n      </marking>\n      <marking>\n        <markingitemname>运动伪影</markingitemname>\n        <markingmethod>不影响诊断</markingmethod>\n        <markingvalue>5</markingvalue>\n        <hassubmarking>false</hassubmarking>\n      </marking>\n      <marking>\n        <markingitemname>设备伪影</markingitemname>\n        <markingmethod>不影响诊断</markingmethod>\n        <markingvalue>5</markingvalue>\n        <hassubmarking>false</hassubmarking>\n      </marking>\n      <marking>\n        <markingitemname>增强扫描增强效果</markingitemname>\n        <markingmethod>欠佳，但不影响诊断</markingmethod>\n        <markingvalue>10</markingvalue>\n        <hassubmarking>false</hassubmarking>\n      </marking>\n      <marking>\n        <markingitemname>图像标识</markingitemname>\n        <hassubmarking>true</hassubmarking>\n        <submarking>\n          <submarkingitemname>图像标识</submarkingitemname>\n          <submarkingmethod>不完整</submarkingmethod>\n          <submarkingvalue>5</submarkingvalue>\n        </submarking>\n        <submarking>\n          <submarkingitemname>图像重要标识</submarkingitemname>\n          <submarkingmethod>如左右、姓名、性别错误</submarkingmethod>\n          <submarkingvalue>50</submarkingvalue>\n        </submarking>\n      </marking>\n      <marking>\n        <markingitemname>定位相</markingitemname>\n        <markingmethod>抽查胶片,应有定位相</markingmethod>\n        <markingvalue>5</markingvalue>\n        <hassubmarking>false</hassubmarking>\n      </marking>\n      <marking>\n        <markingitemname>照片排列顺序不规范</markingitemname>\n        <markingmethod>抽查胶片</markingmethod>\n        <markingvalue>5</markingvalue>\n        <hassubmarking>false</hassubmarking>\n      </marking>\n      <marking>\n        <markingitemname>检查部位错位</markingitemname>\n        <markingmethod>对照申请单和摄影部位是否一致</markingmethod>\n        <markingvalue>50</markingvalue>\n        <hassubmarking>false</hassubmarking>\n      </marking>\n    </qccontent>\n  </qcitem>\n  <qcitem>\n    <qccode>diagnosis</qccode>\n    <examinetype></examinetype>\n    <qcitemname>诊断质量</qcitemname>\n    <qctotalscore>100</qctotalscore>\n    <qcweights>30</qcweights>\n    <qcitemdesciption></qcitemdesciption>\n    <qccontent>\n      <guide></guide>\n      <marking>\n        <markingitemname>描述内容与诊断结论欠一致</markingitemname>\n        <markingmethod></markingmethod>\n        <markingvalue>10</markingvalue>\n        <hassubmarking>false</hassubmarking>\n      </marking>\n      <marking>\n        <markingitemname>主要征象</markingitemname>\n        <hassubmarking>true</hassubmarking>\n        <submarking>\n          <submarkingitemname>主要征象未描述</submarkingitemname>\n          <submarkingmethod></submarkingmethod>\n          <submarkingvalue>15</submarkingvalue>\n        </submarking>\n        <submarking>\n          <submarkingitemname>主要征象描述不全</submarkingitemname>\n          <submarkingmethod></submarkingmethod>\n          <submarkingvalue>5</submarkingvalue>\n        </submarking>\n        <submarking>\n          <submarkingitemname>主要征象描述错误</submarkingitemname>\n          <submarkingmethod></submarkingmethod>\n          <submarkingvalue>25</submarkingvalue>\n        </submarking>\n        <submarking>\n          <submarkingitemname>主要阴性征象未描述</submarkingitemname>\n          <submarkingmethod>指有鉴别诊断意义的阴性征象</submarkingmethod>\n          <submarkingvalue>5</submarkingvalue>\n        </submarking>\n      </marking>\n      <marking>\n        <markingitemname>用语不规范</markingitemname>\n        <markingmethod></markingmethod>\n        <markingvalue>10</markingvalue>\n        <hassubmarking>false</hassubmarking>\n      </marking>\n      <marking>\n        <markingitemname>错误用词</markingitemname>\n        <markingmethod>如男性盆腔检查出现子宫等词汇</markingmethod>\n        <markingvalue>10</markingvalue>\n        <hassubmarking>false</hassubmarking>\n      </marking>\n      <marking>\n        <markingitemname>描写简单</markingitemname>\n        <markingmethod></markingmethod>\n        <markingvalue>5</markingvalue>\n        <hassubmarking>false</hassubmarking>\n      </marking>\n      <marking>\n        <markingitemname>左右错误</markingitemname>\n        <markingmethod></markingmethod>\n        <markingvalue>50</markingvalue>\n        <hassubmarking>false</hassubmarking>\n      </marking>\n      <marking>\n        <markingitemname>特殊检查未描述</markingitemname>\n        <markingmethod>如DR站立位摄片、CT俯卧位扫描</markingmethod>\n        <markingvalue>5</markingvalue>\n        <hassubmarking>false</hassubmarking>\n      </marking>\n      <marking>\n        <markingitemname>增强扫描情况未描述</markingitemname>\n        <markingmethod></markingmethod>\n        <markingvalue>15</markingvalue>\n        <hassubmarking>false</hassubmarking>\n      </marking>\n      <marking>\n        <markingitemname>明显的漏诊或误诊</markingitemname>\n        <markingmethod>对照申请单和摄影部位是否一致</markingmethod>\n        <markingvalue>50</markingvalue>\n        <hassubmarking>false</hassubmarking>\n      </marking>\n    </qccontent>\n  </qcitem>\n</qc>', NULL, 1, NULL, 1, 1);
