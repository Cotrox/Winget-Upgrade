@echo off
:: Creazione dello script VBS
echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
echo UAC.ShellExecute "cmd.exe", "/k winget upgrade --accept-package-agreements --all && pause", "", "runas", 1 >> "%temp%\getadmin.vbs"

:: Esecuzione dello script VBS
"%temp%\getadmin.vbs"
del "%temp%\getadmin.vbs"
