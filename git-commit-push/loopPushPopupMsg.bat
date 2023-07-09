echo "runsFor4hrs"

@echo off
set timeoutDuration=30
set /a endTime=%time:~0,2%+4
if %endTime% GTR 23 set /a endTime-=24
:loop
call loopPush.bat
timeout /t %timeoutDuration%
if %time:~0,2% GEQ %endTime% goto endloop
goto loop
:endloop
msg * "Warning: The script has ended. Please restart it if you want to continue monitoring the repository for changes."
