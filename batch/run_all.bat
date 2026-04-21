@echo off
cd /d %~dp0

:menu
cls
echo ==============================
echo       Scripts Toolkit v2
echo ==============================
echo.
echo 1. Python tools
echo 2. System tools
echo 3. PowerShell tools
echo 4. Exit
echo.

set /p choice=Select option: 

if "%choice%"=="1" call python_menu.bat
if "%choice%"=="2" call system_menu.bat
if "%choice%"=="3" powershell -ExecutionPolicy Bypass -File "..\powershell\menu.ps1"
if "%choice%"=="4" exit

goto menu
