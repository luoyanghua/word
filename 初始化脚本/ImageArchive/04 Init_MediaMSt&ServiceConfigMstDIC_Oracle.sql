﻿

INSERT INTO MediaMst (MediaUID, MediaName, PathType, MediaHost, Path, CurrentFlag, CreateUserUID, CreateUserName, CreateDate, Memo, SortNO, OrganizationID, AccessId, AccessKey, SubDir, OrganizationName, StorageSize) VALUES ('fc7032cf-8cd6-47fa-aa3b-8d94c71aba69', '文档存储', 'virtual', NULL, '/Files/', 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);



INSERT INTO ServiceConfigMst (ServiceUID, ServiceType, ServiceID, ServiceName, Endpoint, EndpointTLS, UseTLS, Thumbprint, MediaUID, CurrentFlag, Memo, OrganizationID, EndpointInternet, EndpointTLSInternet) VALUES (N'1ceed23d-14a6-4d92-a468-0a3a8a530029', N'BusinessService', N'BusinessService', N'IMCIS数据服务', N'http://localhost/BusinessService/', NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO ServiceConfigMst (ServiceUID, ServiceType, ServiceID, ServiceName, Endpoint, EndpointTLS, UseTLS, Thumbprint, MediaUID, CurrentFlag, Memo, OrganizationID, EndpointInternet, EndpointTLSInternet) VALUES (N'c282480f-646f-474a-b42b-136a7da87958', N'ICCWebClient', N'ICCWebClient', N'影像浏览服务', N'http://localhost/iCCWebClient/', NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO ServiceConfigMst (ServiceUID, ServiceType, ServiceID, ServiceName, Endpoint, EndpointTLS, UseTLS, Thumbprint, MediaUID, CurrentFlag, Memo, OrganizationID, EndpointInternet, EndpointTLSInternet) VALUES (N'dce48bca-319c-4835-aa3d-41078c80672b', N'ExamInterface', N'ExamInterface', N'检查接口服务', N'http://localhost:8000/ExamInterface.svc', NULL, 0, NULL, NULL, 1, N'用于与HIS进行检查数据的交互', NULL, NULL, NULL);
INSERT INTO ServiceConfigMst (ServiceUID, ServiceType, ServiceID, ServiceName, Endpoint, EndpointTLS, UseTLS, Thumbprint, MediaUID, CurrentFlag, Memo, OrganizationID, EndpointInternet, EndpointTLSInternet) VALUES (N'4ea784ae-929f-4485-b783-a96f8ebb383f', N'DocumentService', N'DocumentService', N'文档服务', N'http://localhost/DocumentService/', NULL, 0, NULL, N'fc7032cf-8cd6-47fa-aa3b-8d94c71aba69', 1, NULL, NULL, NULL, NULL);
INSERT INTO ServiceConfigMst (ServiceUID, ServiceType, ServiceID, ServiceName, Endpoint, EndpointTLS, UseTLS, Thumbprint, MediaUID, CurrentFlag, Memo, OrganizationID, EndpointInternet, EndpointTLSInternet) VALUES ('a7396cac-e0f7-4b7e-8dd0-2db97337574a', 'XDSRegistry', 'XDSRegistry', 'XDS注册库', 'http://localhost/BusinessService/DocumentRegistry.svc', NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, NULL);

commit;