@echo off
color 0a
Title Fixing pip on C:\Users\%USERNAME%\AppData\Local\Programs\
cls
echo ###################################
echo #       Program for get-pip       #
echo ###################################

echo.

timeout /t 2 /nobreak >nul

python --version

curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py

copy c:\Users\%USERNAME%\desktop\Get-pip.py C:\Users\%USERNAME%\AppData\Local\Programs\Python\Python311
cd C:\Users\%USERNAME%\AppData\Local\Programs\Python\Python311

python Get-pip.py
python -m pip install --upgrade pip
set /p Z=reinstall (r), delete (d) or close (c):
if /i "%Z%"=="r" (
     cls
     echo ###################################
     echo #       Program for get-pip       #
     echo ###################################
     
     echo.
     
     title reinstalling pip
     cd C:\Users\%USERNAME%\AppData\Local\Programs\Python\Python311
     del get-pip.py
     python --version
     curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
     copy c:\Users\%USERNAME%\desktop\Get-pip.py C:\Users\%USERNAME%\AppData\Local\Programs\Python\Python311
     cd C:\Users\%USERNAME%\AppData\Local\Programs\Python\Python311
     pip -V
     python Get-pip.py
     echo.
     timeout /t 5 /nobreak >nul
     cls
     echo ###################################
     echo #       Program for get-pip       #
     echo ###################################
     
     echo.
     echo Pip delete successful
     echo You can close the window
      )
if /i "%Z%"=="d" (
     Title Deleteing pip
     cls
     echo ###################################
     echo #       Program for get-pip       #
     echo ###################################
     
     echo.
     
     cd C:\Users\%USERNAME%\AppData\Local\Programs\Python\Python311
     del Get-pip.py
     del C:\Users\%USERNAME%\AppData\Local\Programs\Python\Python311\Get-pip.py
     timeout /t 2 /nobreak >nul
     echo.
     echo Pip delete
     timeout /t 2 /nobreak >nul
     Title Pip delete
     cls
     echo ###################################
     echo #       Program for get-pip       #
     echo ###################################
     
     echo.
     echo Pip delete successful
     echo You can close the window
     )
if /i "%Z%"=="c" (
     title Closing program
     timeout /t 2 /nobreak >nul
     echo Closing Program..
     cls
     echo ###################################
     echo #       Program for get-pip       #
     echo ###################################
     
     echo.
     title Closing program
     echo Closing Program
     timeout /t 4 /nobreak >nul
     taskkill /f /im cmd.exe
     )
::By Fedi