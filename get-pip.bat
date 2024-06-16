@echo off

:menu

echo Select option
echo 1) install
echo 2) update
echo 3) remove
echo 4) close
set /p X=%USERPROFILE%\ 

:: set the current path to the user desktop
cd C:\Users\%username%\Desktop

:: install pip
if "%X%"=="1" (
    Title Installing pip on C:\Users\%USERNAME%\AppData\Local\Programs\Python
	
    curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
    move C:\Users\%USERNAME%\Desktop\get-pip.py C:\Users\%USERNAME%\AppData\Local\Programs\Python
	
    cd C:\Users\%USERNAME%\AppData\Local\Programs\Python
    python get-pip.py
	
    python -m pip install --upgrade pip
    del get-pip.py
	set /P WAIT=Press enter to continue.
)

:: update pip (deleting the old pip and installing a new one)
if "%X%"=="2" (
    Title Updating pip on C:\Users\%USERNAME%\AppData\Local\Programs\Python
	
    pip uninstall pip -y 
	
    curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
    move C:\Users\%USERNAME%\Desktop\get-pip.py C:\Users\%USERNAME%\AppData\Local\Programs\Python
	
    cd C:\Users\%USERNAME%\AppData\Local\Programs\Python
    python get-pip.py
	
    python -m pip install --upgrade pip
    del get-pip.py
	set /P WAIT=Press enter to continue.
)

:: remove pip 
if "%X%"=="3" (
    Title Removing pip
    pip uninstall pip -y
    set /P WAIT=Press enter to continue.
)

:: close cmd
if "%X%"=="4" (
    Title Closing CMD
    timeout /t 1 /nobreak >nul
    exit
) 


cls
goto menu
::By Fedi
