@echo off
set /a count=0
:loop
timeout /t 3600
call loopPush.bat
set /a count+=1
if %count%==10 goto endloop
goto loop
:endloop
msg * "Warning: The script is about to end. Please restart it if you want to continue monitoring the repository for changes."
