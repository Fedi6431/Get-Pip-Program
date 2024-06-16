@echo off

:menu
cd C:\Users\%username%\Desktop
echo Do you have pip installed?
set /p X=y/n: 

if /i "%X%"=="y" (
    Title Closing CMD
    timeout /t 1 /nobreak >nul
	exit
) 

if "%X%"=="n" (
	Title Fixing pip on C:\Users\%USERNAME%\AppData\Local\Programs\Python
	curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
	move c:\Users\%USERNAME%\desktop\Get-pip.py C:\Users\%USERNAME%\AppData\Local\Programs\Python
	cd C:\Users\%USERNAME%\AppData\Local\Programs\Python\
	python get-pip.py
	python -m pip install --upgrade pip
	del C:\Users\%USERNAME%\AppData\Local\Programs\Python\Get-pip.py
	set /p Z="reinstall (r), delete (d), or close (c):"
	if /i "%Z%"=="r" (
		Title Reinstalling pip
		cd C:\Users\%USERNAME%\AppData\Local\Programs\Python
		del get-pip.py
		python -m pip uninstall pip

		curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
		copy c:\Users\%USERNAME%\desktop\get-pip.py C:\Users\%USERNAME%\AppData\Local\Programs\Python
		cd C:\Users\%USERNAME%\AppData\Local\Programs\Python
		python get-pip.py 
		python -m pip install --upgrade pip
	)

	if /i "%Z%"=="d" (
		Title Deleting pip
		del C:\Users\%USERNAME%\AppData\Local\Programs\Python\get-pip.py
		cd C:\Users\%USERNAME%\AppData\Local\Programs\Python
		del get-pip.py
	)
	if / "%Z%"=="c" (
	exit 
	)

)

goto menu
::By Fedi
	
	
		
	
		
	


