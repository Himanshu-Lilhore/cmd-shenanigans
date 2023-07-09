@echo off
set /a count=0
:loop
timeout /t 10
call loopPush.bat
set /a count+=1
if %count%==2 goto endloop
goto loop
:endloop
color 4F
echo Warning: The script is about to end. Please restart it if you want to continue monitoring the repository for changes.
