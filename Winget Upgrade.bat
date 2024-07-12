@echo off
winget upgrade --accept-package-agreements --all
@echo off
:: Creazione dello script VBS
echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
echo UAC.ShellExecute "cmd.exe", "/c %~s0 %*", "", "runas", 1 >> "%temp%\getadmin.vbs"

:: Esecuzione dello script VBS
"%temp%\getadmin.vbs"
del "%temp%\getadmin.vbs"

:: Inserisci qui il tuo comando
winget upgrade --accept-package-agreements --all
