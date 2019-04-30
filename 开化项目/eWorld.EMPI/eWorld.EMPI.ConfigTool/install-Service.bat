@echo off
echo ================================================================
echo 服务安装脚本
echo 如果是Windows 7 或 Windows Server 2008, 请以管理员方式运行该脚本
echo ================================================================



:installService
%~dp0eWorld.EMPI.Server.exe install 

