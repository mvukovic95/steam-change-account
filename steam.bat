@echo off

TITLE Select Steam account

taskkill.exe /F /IM steam.exe

cls
echo(
echo                                      Select your account
echo                            =======================================
echo(
echo 1) Account 1
echo 2) Account 2
echo 3) Account 3
echo(

CHOICE /M Select /C 123

If Errorlevel 3 Goto 3
If Errorlevel 2 Goto 2
If Errorlevel 1 Goto 1

:3
set username="username_3"
Goto end
:2
set username="username_2"
Goto end
:1
set username="username_1"
Goto end

:end

reg add "HKCU\Software\Valve\Steam" /v AutoLoginUser /t REG_SZ /d %username% /f
reg add "HKCU\Software\Valve\Steam" /v RememberPassword /t REG_DWORD /d 1 /f
start steam://open/main

exit