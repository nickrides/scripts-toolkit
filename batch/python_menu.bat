@echo off
cd /d %~dp0

:menu
cls
echo ==============================
echo         Python Tools
echo ==============================
echo.
echo 1. Run test script
echo 2. Show RAM info
echo 3. Back
echo.

set /p choice=Select option: 

if "%choice%"=="1" (
    python ..\python\utils\test.py
    pause
    goto menu
)

if "%choice%"=="2" (
    python ..\python\system\ram_info.py
    pause
    goto menu
)

if "%choice%"=="3" exit /b

goto menu
