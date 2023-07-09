echo "setFor4hrs"

@echo off
set timeoutDuration=30
set /a endTime=%time:~0,2%+0
if %endTime% GTR 23 set /a endTime-=24
:loop
call loopPush.bat
timeout /t %timeoutDuration%
if %time:~0,2% GEQ %endTime% goto endloop
goto loop
:endloop
start cmd /k "color 4F & echo +--------------------------------------------+ & echo |                                            | & echo | Warning: The script has ended.             | & echo | Please restart it if you want to continue  | & echo | monitoring the repository for changes.     | & echo |                                            | & echo +--------------------------------------------+"
