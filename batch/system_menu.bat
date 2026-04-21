@echo off
cd /d %~dp0

:menu
cls
echo ==============================
echo         System Tools
echo ==============================
echo.
echo 1. Show IP config
echo 2. Show disk info
echo 3. Open Task Manager
echo 4. Back
echo.

set /p choice=Select option: 

if "%choice%"=="1" (
    ipconfig /all
    pause
    goto menu
)

if "%choice%"=="2" (
    wmic logicaldisk get caption,freespace,size,volumename
    pause
    goto menu
)

if "%choice%"=="3" (
    start taskmgr
    goto menu
)

if "%choice%"=="4" exit /b

goto menu
