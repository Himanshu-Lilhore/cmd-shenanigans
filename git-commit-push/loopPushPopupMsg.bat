@echo off
set /a count=0
:loop
call loopPush.bat
timeout /t 10
set /a count+=1
if %count%==2 goto endloop
goto loop
:endloop
msg * "Warning: The script is about to end. Please restart it if you want to continue monitoring the repository for changes."
