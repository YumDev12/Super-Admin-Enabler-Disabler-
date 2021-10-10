@echo off
title Admin
goto start

:start
cls
echo REMINDER: Run In Administrator Mode
echo Beware This Can Be Dangerous If Left On 
echo 1. Enable Super Admin
echo 2. Disable Super Admin
choice /c 12 
if %errorlevel% equ 1 goto Enable
if %errorlevel% equ 2 goto Disable

:Enable
net user administrator /active:yes
echo dont forget to disable the admin account when done
pause>nul
goto start

:Disable
net user administrator /active:no
pause>nul
goto start