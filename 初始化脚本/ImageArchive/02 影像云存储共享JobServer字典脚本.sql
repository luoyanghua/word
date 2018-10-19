
DELETE FROM JobDataMapMst WHERE JobUID = '5784185b-ebf1-443e-8d4a-318884920a8d';

DELETE FROM JobDefineMst WHERE JobUID = '5784185b-ebf1-443e-8d4a-318884920a8d';

INSERT JobDefineMst ( JobUID, JobName, JobClassName, JobDescription, ActiveFlag ) VALUES ( '5784185b-ebf1-443e-8d4a-318884920a8d', '检查数据采集（eCenter —〉IDCAS）', 'eWorld.Job.eCenterToIDCASJob, eWorld.Job', '从影像中心将数据同步到云平台', 1 );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( '5784185b-ebf1-443e-8d4a-318884920a8d', 'TimestampKey', '0', 'int', NULL, '同步记录的开始时间戳，为空则不按照时间戳同步', 1, '同步时间戳', NULL, NULL, NULL, NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( '5784185b-ebf1-443e-8d4a-318884920a8d', 'eCenterOrganizationID', NULL, 'sqlSingle', 'select Id as Id, InstitutionlName as Name from CRM.Institution order by InstitutionlName', '影像中心所在的机构ID，必填', 2, '影像中心机构ID', NULL, NULL, NULL, NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( '5784185b-ebf1-443e-8d4a-318884920a8d', 'eCenterDbProviderInvariantName', 'System.Data.SqlClient', 'string', 'System.Data.SqlClient,MySql.Data.MySqlClient,Oracle.ManagedDataAccess.Client', 'eCenter数据库类型，必填，Oracle.ManagedDataAccess.Client、System.Data.SqlClient', 3, '影像中心数据库类型', NULL, NULL, NULL, NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( '5784185b-ebf1-443e-8d4a-318884920a8d', 'eCenterConnectionString', 'Data Source=192.168.1.125;Initial Catalog=eCenter;Persist Security Info=True;User ID=sa;Password=sa;MultipleActiveResultSets=True', 'ConnectionString', NULL, '影像中心数据库连接字符串，必填', 4, '影像中心数据库连接', NULL, NULL, NULL, NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( '5784185b-ebf1-443e-8d4a-318884920a8d', 'eCenterAppendSqlWhere', NULL, 'string', NULL, '影像中心数据库ExaminationDistribution表查询语句附加条件，如SysID=''RIS''表示只同步RIS的数据', 5, 'Sql附加条件', NULL, NULL, NULL, NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( '5784185b-ebf1-443e-8d4a-318884920a8d', 'IndependentHospitalName', NULL, 'sqlMulti', 'select Id as Id, InstitutionlName as Name from CRM.Institution order by InstitutionlName', '独立医院名称，多个以,分隔，这些医院名称的检查将不使用eCenterOrganizationID作为检查机构ID，而是直接将HospitalName提交到区域平台匹配检查机构ID，用于影像中心存放其他机构集中诊断检查的情况', 6, '独立医院名称', NULL, NULL, NULL, NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( '5784185b-ebf1-443e-8d4a-318884920a8d', 'DICOMImageRetrieve', '不处理', 'string', '不处理,查询是否有影像,获取影像(产生任务),获取影像(直接获取)', 'DICOM影像获取', 7, 'DICOM影像获取', 'DICOM影像获取', NULL, NULL, NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( '5784185b-ebf1-443e-8d4a-318884920a8d', 'RetrieveImagesExamStatus', '书写完成,审核完成,修订完成', 'string', NULL, '获取影像的检查状态，多个状态以,分隔，只有指定的检查状态才会获取影像', 8, '获取影像的检查状态', 'DICOM影像获取', 'DICOMImageRetrieve', '获取影像(产生任务),获取影像(直接获取)', NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( '5784185b-ebf1-443e-8d4a-318884920a8d', 'eCenterDICOMAE', NULL, 'string', NULL, '影像中心DICOM用户名，为空则根据机构ID从IMCIS服务配置表取', 9, '影像中心DICOM AE', 'DICOM影像获取', 'DICOMImageRetrieve', '查询是否有影像,获取影像(产生任务),获取影像(直接获取)', NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( '5784185b-ebf1-443e-8d4a-318884920a8d', 'eCenterDICOMIP', NULL, 'string', NULL, '影像中心DICOM IP，为空则根据机构ID从IMCIS服务配置表取', 10, '影像中心DICOM IP', 'DICOM影像获取', 'DICOMImageRetrieve', '查询是否有影像,获取影像(产生任务),获取影像(直接获取)', NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( '5784185b-ebf1-443e-8d4a-318884920a8d', 'eCenterDICOMPort', NULL, 'int', NULL, '影像中心DICOM端口，为空则根据机构ID从IMCIS服务配置表取', 11, '影像中心DICOM端口', 'DICOM影像获取', 'DICOMImageRetrieve', '查询是否有影像,获取影像(产生任务),获取影像(直接获取)', NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( '5784185b-ebf1-443e-8d4a-318884920a8d', 'eCenterFTPServerIP', NULL, 'string', NULL, '影像中心FTP IP，为空则从影像中心FTPServers表获取', 12, '影像中心FTP IP', '影像中心FTP', NULL, NULL, NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( '5784185b-ebf1-443e-8d4a-318884920a8d', 'eCenterFTPServerPort', NULL, 'int', NULL, '影像中心FTP端口，为空则从影像中心FTPServers表获取', 13, '影像中心FTP端口', '影像中心FTP', 'eCenterFTPServerIP', NULL, NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( '5784185b-ebf1-443e-8d4a-318884920a8d', 'eCenterFTPUserName', NULL, 'string', NULL, '影像中心FTP端口，为空则从影像中心FTPServers表获取', 14, '影像中心FTP用户', '影像中心FTP', 'eCenterFTPServerIP', NULL, NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( '5784185b-ebf1-443e-8d4a-318884920a8d', 'eCenterFTPUserPassword', NULL, 'string', NULL, '影像中心FTP密码，为空则默认为eWorldTomTaw', 15, '影像中心FTP密码', '影像中心FTP', 'eCenterFTPServerIP', NULL, NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( '5784185b-ebf1-443e-8d4a-318884920a8d', 'UseCloudStorage', NULL, 'bool', 'false', '启用云存储', 16, '启用云存储', '启用云存储', 'UseCloudStorage', 'true', NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( '5784185b-ebf1-443e-8d4a-318884920a8d', 'CloudStorageMediaUID', NULL, 'sqlSingle', 'select MediaUID as Id, MediaName as Name from ImageArchive.MediaMst where PathType=''AmazonS3'' or PathType=''AliyunOSS''', '云存储媒质', 17, '云存储媒质', '云存储', 'UseCloudStorage', 'true', NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( '5784185b-ebf1-443e-8d4a-318884920a8d', 'HisExamineIdTrimEndChar', NULL, 'string', NULL, '将申请单号中指定符号后面的内容去掉，为空则不作处理（在某些医院RIS系统为了合并或拆分申请单，会在HIS电子申请后加.1等后缀，因此需要去掉）', 18, '申请单号处理分隔符', NULL, NULL, NULL, NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( '5784185b-ebf1-443e-8d4a-318884920a8d', 'ExamFilmRetrive', '不处理', 'string', '不处理,获取胶片(产生任务),获取胶片(直接获取)', 'DICOM胶片获取', 19, 'DICOM胶片获取', '采集电子胶片', NULL, NULL, NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( '5784185b-ebf1-443e-8d4a-318884920a8d', 'FilmDICOMIP', NULL, 'string', NULL, '胶片DICOM IP', 20, '胶片DICOM IP', '采集电子胶片', 'ExamRetriveFilm', 'true', NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( '5784185b-ebf1-443e-8d4a-318884920a8d', 'FilmDICOMPort', NULL, 'string', NULL, '胶片DICOM Port', 21, '胶片DICOM端口', '采集电子胶片', 'ExamRetriveFilm', 'true', NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( '5784185b-ebf1-443e-8d4a-318884920a8d', 'FilmDICOMAE', NULL, 'string', NULL, '胶片DICOM AE', 22, '胶片DICOM应用标识', '采集电子胶片', 'ExamRetriveFilm', 'true', NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( '5784185b-ebf1-443e-8d4a-318884920a8d', 'ExamFilmQuality', '100', 'int', NULL, '胶片质量百分比', 23, '胶片质量百分比', '采集电子胶片', 'ExamRetriveFilm', 'true', NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( '5784185b-ebf1-443e-8d4a-318884920a8d', 'PatientClassTransForm', '门诊-1000|普通,住院-2000|住院病人', 'string', NULL, '患者类型转换，影像云类型-医院类型(多个以|分割)，不同患者类型用,分割', 24, '患者类型转换', NULL, NULL, NULL, NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( '5784185b-ebf1-443e-8d4a-318884920a8d', 'PatientSmsNotice', 'false', 'bool', NULL, '是否向患者发送短信通知', 25, '发送短信同时', NULL, NULL, NULL, NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( '5784185b-ebf1-443e-8d4a-318884920a8d', 'TaskRowsForEachJob', '100', 'int', NULL, '每次触发查询的任务，默认100', 26, '每次查询记录数', NULL, NULL, NULL, NULL );

DELETE FROM JobDataMapMst WHERE JobUID = 'c883333f-f0dd-4548-acb7-065719423239';

DELETE FROM JobDefineMst WHERE JobUID = 'c883333f-f0dd-4548-acb7-065719423239';

INSERT JobDefineMst ( JobUID, JobName, JobClassName, JobDescription, ActiveFlag ) VALUES ( 'c883333f-f0dd-4548-acb7-065719423239', '检查数据采集（医技系统—〉IDCAS）', 'eWorld.Job.ExamToIDCASJob, eWorld.Job', '将医技系统数据同步到IDCAS', 1 );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( 'c883333f-f0dd-4548-acb7-065719423239', 'SourceDbProviderInvariantName', 'System.Data.SqlClient', 'string', 'System.Data.SqlClient,MySql.Data.MySqlClient,Oracle.ManagedDataAccess.Client', '医技系统数据库类型', 1, '医技系统数据库类型', NULL, NULL, NULL, NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( 'c883333f-f0dd-4548-acb7-065719423239', 'SourceDbConnectionString', 'Data Source=192.168.1.125;Initial Catalog=RIS;Persist Security Info=True;User ID=sa;Password=sa;MultipleActiveResultSets=True', 'ConnectionString', NULL, '医技系统数据库连接', 2, '医技系统数据库连接', NULL, NULL, NULL, NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( 'c883333f-f0dd-4548-acb7-065719423239', 'ExamAppendSqlWhere', NULL, 'string', NULL, '客户端数据库ExamChangeLog表查询语句附加条件，如TransactionTime >''2016-01-01''表示只同步修改时间是2016-01-01之后的数据', 3, 'Sql附加条件', NULL, NULL, NULL, NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( 'c883333f-f0dd-4548-acb7-065719423239', 'ExamWebServiceUrl', NULL, 'string', NULL, '医技系统WebService地址', 4, '医技系统WebService地址', NULL, NULL, NULL, NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( 'c883333f-f0dd-4548-acb7-065719423239', 'ExamResultFileFormat', 'Jpg', 'string', 'Jpg,Pdf', '报告单文件格式', 5, '报告单文件格式', NULL, NULL, NULL, NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( 'c883333f-f0dd-4548-acb7-065719423239', 'DICOMImageRetrieve', '不处理', 'string', '不处理,查询是否有影像,获取影像(产生任务),获取影像(直接获取)', 'DICOM影像获取', 7, 'DICOM影像获取', 'DICOM影像获取', NULL, NULL, NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( 'c883333f-f0dd-4548-acb7-065719423239', 'RetrieveImagesExamStatus', '书写完成,审核完成,修订完成', 'string', NULL, '获取影像的检查状态，多个状态以,分隔，只有指定的检查状态才会获取影像', 8, '获取影像的检查状态', 'DICOM影像获取', 'DICOMImageRetrieve', '获取影像(产生任务),获取影像(直接获取)', NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( 'c883333f-f0dd-4548-acb7-065719423239', 'DICOMAE', NULL, 'string', NULL, '医院DICOM用户名，为空则根据机构ID从IMCIS服务配置表取', 9, '医院DICOM AE', 'DICOM影像获取', 'DICOMImageRetrieve', '查询是否有影像,获取影像(产生任务),获取影像(直接获取)', NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( 'c883333f-f0dd-4548-acb7-065719423239', 'DICOMIP', NULL, 'string', NULL, '医院DICOM IP，为空则根据机构ID从IMCIS服务配置表取', 10, '医院DICOM IP', 'DICOM影像获取', 'DICOMImageRetrieve', '查询是否有影像,获取影像(产生任务),获取影像(直接获取)', NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( 'c883333f-f0dd-4548-acb7-065719423239', 'DICOMPort', NULL, 'int', NULL, '医院DICOM端口，为空则根据机构ID从IMCIS服务配置表取', 11, '医院DICOM端口', 'DICOM影像获取', 'DICOMImageRetrieve', '查询是否有影像,获取影像(产生任务),获取影像(直接获取)', NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( 'c883333f-f0dd-4548-acb7-065719423239', 'ExamFilmRetrive', '不处理', 'string', '不处理,获取胶片(产生任务),获取胶片(直接获取)', 'DICOM胶片获取', 12, 'DICOM胶片获取', '采集电子胶片', NULL, NULL, NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( 'c883333f-f0dd-4548-acb7-065719423239', 'FilmDICOMIP', NULL, 'string', NULL, '胶片DICOM IP', 13, '胶片DICOM IP', '采集电子胶片', 'ExamRetriveFilm', 'true', NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( 'c883333f-f0dd-4548-acb7-065719423239', 'FilmDICOMPort', NULL, 'string', NULL, '胶片DICOM Port', 14, '胶片DICOM端口', '采集电子胶片', 'ExamRetriveFilm', 'true', NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( 'c883333f-f0dd-4548-acb7-065719423239', 'FilmDICOMAE', NULL, 'string', NULL, '胶片DICOM AE', 15, '胶片DICOM应用标识', '采集电子胶片', 'ExamRetriveFilm', 'true', NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( 'c883333f-f0dd-4548-acb7-065719423239', 'ExamFilmQuality', '100', 'short', NULL, '胶片质量百分比', 16, '胶片质量百分比', NULL, NULL, NULL, NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( 'c883333f-f0dd-4548-acb7-065719423239', 'UseCloudStorage', NULL, 'bool', 'false', '启用云存储', 17, '启用云存储', '启用云存储', 'UseCloudStorage', 'true', NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( 'c883333f-f0dd-4548-acb7-065719423239', 'CloudStorageMediaUID', NULL, 'sqlSingle', 'select MediaUID as Id, MediaName as Name from ImageArchive.MediaMst where PathType=''AmazonS3'' or PathType=''AliyunOSS''', '云存储媒质', 18, '云存储媒质', '云存储', 'UseCloudStorage', 'true', NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( 'c883333f-f0dd-4548-acb7-065719423239', 'PatientSmsNotice', 'false', 'bool', NULL, '是否向患者发送短信通知', 19, '发送短信同时', NULL, NULL, NULL, NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( 'c883333f-f0dd-4548-acb7-065719423239', 'TaskRowsForEachJob', '100', 'int', NULL, '每次触发查询的任务，默认100', 20, 'IMCIS每次查询记录数', NULL, NULL, NULL, NULL );

DELETE FROM JobDataMapMst WHERE JobUID = '2c6df392-b94e-4e6d-adeb-752206dbcd73';

DELETE FROM JobDefineMst WHERE JobUID = '2c6df392-b94e-4e6d-adeb-752206dbcd73';

INSERT JobDefineMst ( JobUID, JobName, JobClassName, JobDescription, ActiveFlag ) VALUES ( '2c6df392-b94e-4e6d-adeb-752206dbcd73', '影像采集（PACS—〉IDCAS）', 'eWorld.Job.IntegrationTaskRetrieveImagesToIDCASJob, eWorld.Job', '通过IntegrationTask表RetrieveImagesToIDCAS任务，获取影像并归档IDCAS', 1 );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( '2c6df392-b94e-4e6d-adeb-752206dbcd73', 'OrganizationID', NULL, 'sqlSingle', 'select Id as Id, InstitutionlName as Name from CRM.Institution order by InstitutionlName', '如果该触发器只要触发处理某个机构的Task，则填写相应的机构ID', 1, '指定机构ID', NULL, NULL, NULL, NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( '2c6df392-b94e-4e6d-adeb-752206dbcd73', 'TaskStatus', 'Waiting', 'string', 'Waiting,Processing,Success,Fail', '如果该触发器只要触发处理某个状态的Task，为空默认为Waiting', 2, '指定任务状态', NULL, NULL, NULL, NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( '2c6df392-b94e-4e6d-adeb-752206dbcd73', 'ExecQueryRetryTimes', NULL, 'int', NULL, '如果该触发器只要触发处理重试次数为指定次数的Task，为空则不过滤', 3, '指定重试次数', NULL, NULL, NULL, NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( '2c6df392-b94e-4e6d-adeb-752206dbcd73', 'DICOMIP', NULL, 'string', NULL, '医院DICOMIP，如果为空，根据OrganizationID从IMCIS服务配置表中获取DICOM配置信息', 4, '医院DICOMIP', NULL, NULL, NULL, NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( '2c6df392-b94e-4e6d-adeb-752206dbcd73', 'DICOMPort', NULL, 'string', NULL, '医院DICOMPort，如果为空，根据OrganizationID从IMCIS服务配置表中获取DICOM配置信息', 5, '医院医院DICOMPort', NULL, NULL, NULL, NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( '2c6df392-b94e-4e6d-adeb-752206dbcd73', 'DICOMAE', NULL, 'string', NULL, '医院DICOMAE，如果为空，根据OrganizationID从IMCIS服务配置表中获取DICOM配置信息', 6, '医院DICOMAE', NULL, NULL, NULL, NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( '2c6df392-b94e-4e6d-adeb-752206dbcd73', 'DicomTransferSyntax', NULL, 'int', NULL, 'DICOM TransferSyntax，可选值为DicomScu.E_TRANSFERSYNTAX枚举值(-1到31)，为空则采用默认传输句法', 7, 'DICOM传输句法', NULL, NULL, NULL, NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( '2c6df392-b94e-4e6d-adeb-752206dbcd73', 'DicomCMovePort', NULL, 'int', NULL, '获取影像方法=DICOM情况下，DICOM CMOVE端口号，0或空则采用CGET方式，采用CMOVE方式一次只能处理一条任务', 8, 'DICOM CMOVE端口号', NULL, NULL, NULL, NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( '2c6df392-b94e-4e6d-adeb-752206dbcd73', 'ExamImageAssociateMode', NULL, 'string', ',AccessionNumberAndModality,StudyInstanceUID,AccessionNumberAndModalitiesInStudy', '获取影像方法=DICOM情况下，从医院PACS获取影像的关联模式(条件)，AccessionNumberAndModality、StudyInstanceUID，空则根据StudyInstanceUID、AccessionNumber、Modality三个值自动判断', 9, '影像关联模式', NULL, NULL, NULL, NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( '2c6df392-b94e-4e6d-adeb-752206dbcd73', 'StorageImageMethod', 'DICOM', 'string', 'DICOM,DocumentService,CloudStorage', '存储影像方法，DICOM：DICOM方式存储、DocumentService：使用服务配置中的当前DocumentService服务、CloudStorage：指定媒质配置中的云存储', 10, '存储影像方法', '存储方式', NULL, NULL, NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( '2c6df392-b94e-4e6d-adeb-752206dbcd73', 'CloudStorageMediaUID', NULL, 'sqlSingle', 'select MediaUID as Id, MediaName as Name from ImageArchive.MediaMst where PathType=''AmazonS3'' or PathType=''AliyunOSS''', '云存储媒质', 11, '云存储媒质', '存储方式', 'StorageImageMethod', 'CloudStorage', NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( '2c6df392-b94e-4e6d-adeb-752206dbcd73', 'UpdateImageInstitutionCodeWhenStorageImage', 'true', 'bool', NULL, '存储影像前，是否修改影像机构代码值（将检查信息中的机构代码写到影像属性中），true修改，false不修改', 12, '修改影像机构代码', NULL, NULL, NULL, NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( '2c6df392-b94e-4e6d-adeb-752206dbcd73', 'RetryTimes', '3', 'int', NULL, '任务重试次数，0或者空表示只执行一次不重试', 13, '任务重试次数', NULL, NULL, NULL, NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( '2c6df392-b94e-4e6d-adeb-752206dbcd73', 'TaskDelayedMinute', '0', 'int', NULL, '任务延时多少分钟再处理，0或空表示不延时，主要是为了解决影像传输比较慢，任务产生时影像还没到达的问题', 14, '任务延时多少分钟处理', NULL, NULL, NULL, NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( '2c6df392-b94e-4e6d-adeb-752206dbcd73', 'TaskRowsForEachJob', '0', 'int', NULL, '每次触发查询的任务，0或空表示查询所有Task', 15, '每次查询记录数', NULL, NULL, NULL, NULL );

DELETE FROM JobDataMapMst WHERE JobUID = 'dbf801a9-daed-40c8-b30f-b02792c614d8';

DELETE FROM JobDefineMst WHERE JobUID = 'dbf801a9-daed-40c8-b30f-b02792c614d8';

INSERT JobDefineMst ( JobUID, JobName, JobClassName, JobDescription, ActiveFlag ) VALUES ( 'dbf801a9-daed-40c8-b30f-b02792c614d8', '胶片采集（eWorldVP—〉IMCIS）', 'eWorld.Job.IntegrationTaskRetrieveFilmToIDCASJob, eWorld.Job', '通过IntegrationTask表RetrieveFilmsToIDCAS任务，获取影像并归档IDCAS', 1 );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( 'dbf801a9-daed-40c8-b30f-b02792c614d8', 'OrganizationID', NULL, 'sqlSingle', 'select Id as Id, InstitutionlName as Name from CRM.Institution order by InstitutionlName', '胶片所在机构，为空获取所有组织机构的采集胶片任务',1, '胶片所在机构', NULL, NULL, NULL, NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( 'dbf801a9-daed-40c8-b30f-b02792c614d8', 'BusinessKeyExt3', NULL, 'string', NULL,  '胶片检查类型',2, '胶片检查类型', NULL, NULL, NULL, NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( 'dbf801a9-daed-40c8-b30f-b02792c614d8', 'UseCloudStorage', 'false', 'bool', NULL, '启用云存储', 2, '启用云存储', '云存储', NULL, NULL, NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( 'dbf801a9-daed-40c8-b30f-b02792c614d8', 'CloudStorageMediaUID', NULL, 'sqlSingle', 'select MediaUID as Id, MediaName as Name from ImageArchive.MediaMst where PathType=''AmazonS3'' or PathType=''AliyunOSS''', '云存储媒质', 3, '云存储媒质', '云存储', 'UseCloudStorage', 'true', NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( 'dbf801a9-daed-40c8-b30f-b02792c614d8', 'TaskStatus', 'Waiting', 'string', 'Waiting,Processing,Success,Fail', '指定任务状态', 4, '指定任务状态', NULL, NULL, NULL, NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( 'dbf801a9-daed-40c8-b30f-b02792c614d8', 'FilmDICOMIP', NULL, 'string', NULL, '胶片DICOM IP', 5, '胶片DICOM IP', NULL, NULL, NULL, NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( 'dbf801a9-daed-40c8-b30f-b02792c614d8', 'FilmDICOMPort', NULL, 'string', NULL, '胶片DICOM Port', 6, '胶片DICOM Port', NULL, NULL, NULL, NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( 'dbf801a9-daed-40c8-b30f-b02792c614d8', 'FilmDICOMAE', NULL, 'string', NULL, '胶片DICOM应用标识', 7, '胶片DICOM AE', NULL, NULL, NULL, NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( 'dbf801a9-daed-40c8-b30f-b02792c614d8', 'ExamFilmQuality', '100', 'short', NULL, '胶片质量百分比', 8, '胶片质量百分比', NULL, NULL, NULL, NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( 'dbf801a9-daed-40c8-b30f-b02792c614d8', 'TaskRowsForEachJob', '100', 'int', NULL, '每次触发查询的任务，默认100', 9, '每次查询记录数', NULL, NULL, NULL, NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( 'c883333f-f0dd-4548-acb7-065719423239', 'PatientClassTransForm', NULL, 'string', NULL, '患者类型转换，门诊-普通门诊|专家门诊|门诊病人,住院-住院病人', 1, '患者类型转换', NULL, NULL, NULL, NULL );

DELETE FROM JobDataMapMst WHERE JobUID = 'b2df2e8a-1ece-4df8-9a7f-977cdbd55804';

DELETE FROM JobDefineMst WHERE JobUID = 'b2df2e8a-1ece-4df8-9a7f-977cdbd55804';

INSERT JobDefineMst ( JobUID, JobName, JobClassName, JobDescription, ActiveFlag ) VALUES ( 'b2df2e8a-1ece-4df8-9a7f-977cdbd55804', '检查数据采集（V_Exampublish—〉IDCIS）', 'eWorld.Job.V_ExamPublishToIDCASJob, eWorld.Job', '通过读取医技系统视图，获取检查信息以及影像', 1 );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( 'b2df2e8a-1ece-4df8-9a7f-977cdbd55804', 'TimestampKey', '0', 'string', NULL, '采集开始时间戳', 1, '采集时间戳', NULL, NULL, NULL, NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( 'b2df2e8a-1ece-4df8-9a7f-977cdbd55804', 'ExamDbProviderInvariantName', 'System.Data.SqlClient', 'string', 'System.Data.SqlClient,MySql.Data.MySqlClient,Oracle.ManagedDataAccess.Client', '医技系统数据库类型', 2, '医技系统数据库类型', NULL, NULL, NULL, NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( 'b2df2e8a-1ece-4df8-9a7f-977cdbd55804', 'ExamDbConnectionString', 'Data Source=192.168.1.125;Initial Catalog=RIS;Persist Security Info=True;User ID=sa;Password=sa;MultipleActiveResultSets=True', 'ConnectionString', NULL, '医技系统数据库连接字符串', 3, '医技系统数据库连接字符串', NULL, NULL, NULL, NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( 'b2df2e8a-1ece-4df8-9a7f-977cdbd55804', 'ExamDbSchemaName', NULL, 'string', NULL, '医技数据库视图所在的用户，Oracle时，须填写', 4, '医技数据库视图所在的用户', NULL, NULL, NULL, NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( 'b2df2e8a-1ece-4df8-9a7f-977cdbd55804', 'ExamDbSql', 'select * from V_ExamPublish where RowTimeStamp >{0}', 'string', NULL, '医技系统采集SQL', 5, '医技系统采集SQL', NULL, NULL, NULL, NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( 'b2df2e8a-1ece-4df8-9a7f-977cdbd55804', 'IgnoreRepoRtServiceError', NULL, 'bool', NULL, '是否忽略图文报告错误', 6, '是否忽略图文报告错误', NULL, NULL, NULL, NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( 'b2df2e8a-1ece-4df8-9a7f-977cdbd55804', 'DICOMImageRetrieve', '不处理', 'string', '不处理,查询是否有影像,获取影像(产生任务),获取影像(直接获取)', '影像获取', 7, 'DICOM影像获取', 'DICOM影像获取', NULL, NULL, NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( 'b2df2e8a-1ece-4df8-9a7f-977cdbd55804', 'DICOMIP', NULL, 'string', NULL, 'DICOM IP', 8, 'DICOM IP', 'DICOM影像获取', 'DICOMImageRetrieve', '查询是否有影像,获取影像(产生任务),获取影像(直接获取)', NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( 'b2df2e8a-1ece-4df8-9a7f-977cdbd55804', 'DICOMPort', NULL, 'int', NULL, 'DICOM Port', 9, 'DICOM Port', 'DICOM影像获取', 'DICOMImageRetrieve', '查询是否有影像,获取影像(产生任务),获取影像(直接获取)', NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( 'b2df2e8a-1ece-4df8-9a7f-977cdbd55804', 'DICOMAE', NULL, 'string', NULL, 'DICOM AE', 10, 'DICOM AE', 'DICOM影像获取', 'DICOMImageRetrieve', '查询是否有影像,获取影像(产生任务),获取影像(直接获取)', NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( 'b2df2e8a-1ece-4df8-9a7f-977cdbd55804', 'RetrieveImagesExamStatus', '书写完成,审核完成,修订完成', 'string', NULL, '获取影像的状态', 11, '获取影像的状态', 'DICOM影像获取', 'DICOMImageRetrieve', '获取影像(产生任务),获取影像(直接获取)', NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( 'b2df2e8a-1ece-4df8-9a7f-977cdbd55804', 'UseCloudStorage', 'false', 'bool', NULL, '启用云存储', 12, '启用云存储', '云存储', NULL, NULL, NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( 'b2df2e8a-1ece-4df8-9a7f-977cdbd55804', 'CloudStorageMediaUID', NULL, 'sqlSingle', 'select MediaUID as Id, MediaName as Name from ImageArchive.MediaMst where PathType=''AmazonS3'' or PathType=''AliyunOSS''', '云存储媒质', 13, '云存储媒质', '云存储', 'UseCloudStorage', 'true', NULL );

DELETE FROM JobDataMapMst WHERE JobUID = 'c8b0759a-71ce-4e51-ab54-c9b8d531f98a';

DELETE FROM JobDefineMst WHERE JobUID = 'c8b0759a-71ce-4e51-ab54-c9b8d531f98a';

INSERT JobDefineMst ( JobUID, JobName, JobClassName, JobDescription, ActiveFlag ) VALUES ( 'c8b0759a-71ce-4e51-ab54-c9b8d531f98a', '检查数据采集（IMCIS—〉IDCAS）', 'eWorld.Job.IMCISToIDCASJob, eWorld.Job', '从集成平台经检查数据同步到云平台', 1 );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( 'c8b0759a-71ce-4e51-ab54-c9b8d531f98a', 'RegionModeOrgCode', '', 'string', NULL, '启用区域模式组织机构代码，则写到目标库的机构ID使用组织机构代码字段OrganizationMst.OrganizationCode', 1, '启用区域模式组织机构代码', NULL, NULL, NULL, NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( 'c8b0759a-71ce-4e51-ab54-c9b8d531f98a', 'SourceDbConnectionString', 'Data Source=192.168.1.125;Initial Catalog=RIS;Persist Security Info=True;User ID=sa;Password=sa;MultipleActiveResultSets=True', 'ConnectionString', NULL, '源数据库连接字符串', 2, '源数据库连接字符串', NULL, NULL, NULL, NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( 'c8b0759a-71ce-4e51-ab54-c9b8d531f98a', 'SourceIMCISUrl', NULL, 'string', NULL, '源IMCIS平台地址', 3, '源IMCIS平台地址', NULL, NULL, NULL, NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( 'c8b0759a-71ce-4e51-ab54-c9b8d531f98a', 'DestinationIMCISUrl', NULL, 'string', NULL, '目标IMCIS平台地址', 4, '目标IMCIS平台地址', NULL, NULL, NULL, NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( 'c8b0759a-71ce-4e51-ab54-c9b8d531f98a', 'SyncDocument', NULL, 'bool', NULL, '是否同步文档', 5, '是否同步文档', NULL, NULL, NULL, NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( 'c8b0759a-71ce-4e51-ab54-c9b8d531f98a', 'ImcisAppendSqlWhere', NULL, 'string', '源IMCIS数据库ObservationRequest表查询语句附加条件，如ServiceSectID in (''CT'',''DR'',''MR'')', '源IMCIS Sql附加条件', 6, '源IMCIS Sql附加条件', NULL, NULL, NULL, NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( 'c8b0759a-71ce-4e51-ab54-c9b8d531f98a', '
DICOMImageRetrieve', NULL, 'string', '不处理,查询是否有影像,获取影像(产生任务),获取影像(直接获取)', 'DICOM影像获取', 7, 'DICOM影像获取', 'DICOM影像获取', 'DICOMImageRetrieve', '查询是否有影像,获取影像(产生任务),获取影像(直接获取)', NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( 'c8b0759a-71ce-4e51-ab54-c9b8d531f98a', 'DICOMIP', NULL, 'string', NULL, 'DICOM IP', 8, 'DICOM IP', 'DICOM影像获取', 'DICOMImageRetrieve', '查询是否有影像,获取影像(产生任务),获取影像(直接获取)', NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( 'c8b0759a-71ce-4e51-ab54-c9b8d531f98a', 'DICOMPort', NULL, 'int', NULL, 'DICOM Port', 9, 'DICOM Port', 'DICOM影像获取', 'DICOMImageRetrieve', '查询是否有影像,获取影像(产生任务),获取影像(直接获取)', NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( 'c8b0759a-71ce-4e51-ab54-c9b8d531f98a', 'DICOMAE', NULL, 'string', NULL, 'DICOM AE', 10, 'DICOM AE', 'DICOM影像获取', 'DICOMImageRetrieve', '查询是否有影像,获取影像(产生任务),获取影像(直接获取)', NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( 'c8b0759a-71ce-4e51-ab54-c9b8d531f98a', 'RetrieveImagesExamStatus', '书写完成,审核完成,修订完成', 'string', NULL, '获取影像的状态', 11, '获取影像的状态', 'DICOM影像获取', 'DICOMImageRetrieve', '获取影像(产生任务),获取影像(直接获取)', NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( 'c8b0759a-71ce-4e51-ab54-c9b8d531f98a', 'UseCloudStorage', 'false', 'bool', NULL, '启用云存储', 12, '启用云存储', '云存储', NULL, NULL, NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( 'c8b0759a-71ce-4e51-ab54-c9b8d531f98a', 'CloudStorageMediaUID', NULL, 'sqlSingle', 'select MediaUID as Id, MediaName as Name from ImageArchive.MediaMst where PathType=''AmazonS3'' or PathType=''AliyunOSS''', '云存储媒质', 13, '云存储媒质', '云存储', 'UseCloudStorage', 'true', NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( 'c8b0759a-71ce-4e51-ab54-c9b8d531f98a', 'TimestampKey', '0', 'string', NULL, '采集开始时间戳', 14, '采集时间戳', NULL, NULL, NULL, NULL );

INSERT JobDataMapMst ( JobUID, EntryKey, EntryValueDefault, EntryValueType, EntryValueOption, EntryDescription, SortNO, EntryName, GroupID, ParentEntryKey, ParentEntryValue, HideFlag ) VALUES ( 'c8b0759a-71ce-4e51-ab54-c9b8d531f98a', 'TaskRowsForEachJob', '100', 'int', NULL, '每次触发查询的任务，默认100', 15, '每次查询记录数', NULL, NULL, NULL, NULL );

/* 20180326 新增 */
INSERT INTO JobDefineMst (JobUID, JobName, JobClassName, JobDescription, ActiveFlag) VALUES ('ff674965-1f70-4c93-b821-4e9fc90e4513', '检查数据采集(IDCAS->IDCAS)', 'eWorld.Job.ImageCloudTOIDCASJob,eWorld.Job', '从云归档获取检查信息同步到另一个云归档', '1');

