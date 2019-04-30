@echo off
echo ================================================================
echo I服务卸载脚本
echo 如果是Windows 7 或 Windows Server 2008, 请以管理员方式运行该脚本
echo ================================================================



:uinstallService
%~dp0eWorld.EMPI.Server.exe uninstall
