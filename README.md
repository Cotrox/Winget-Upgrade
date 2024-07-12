# Winget Upgrade
 Winget Upgrade is a .bat file that ask for admin auth and run a search for program to be upgraded executing the update.

# The Winget Upgrade.bat file use this code:
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

# Pay Attention Please
When you run the program you are the only one who has responsibility for the consequences.

This command (winget) is still in experimental phase but officially released by Microsoft.

You will be asked to provide the authorization to run CMD as Administrator to subsequently perform a search for updatable packages and the consequent update of each of them.

# Thank you
Thanks for your support!
You can support me better with a coffe on: https://ko-fi.com/cotrox