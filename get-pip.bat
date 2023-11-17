@echo off
color a 
title Program for get-pip

echo ###################################
echo #       Program for get-pip       #
echo ###################################

echo.

echo Do you have pip install?

echo.

set /p X=Y/N: 

if /i "%X%"=="y" (
    timeout /t 2 /nobreak >nul
    cls
    echo ###################################
    echo #       Program for get-pip       #
    echo ###################################

    echo.

    echo You don't need this program
    Title Closing CMD
    timeout /t 2 /nobreak >nul
    Echo Closing Window of cmd
    timeout /t 2 /nobreak >nul
    taskkill /f /im cmd.exe
) 

if /i "%X%"=="n" (
    start Fix-pip.bat
)
::By Fedi
