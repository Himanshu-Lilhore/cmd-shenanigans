@echo off
set /a count=0
:loop
call loopPush.bat
timeout /t 10
set /a count+=1
if %count%==2 goto endloop
goto loop
:endloop
start cmd /k "color 4F & echo ┌────────────────────────────────────────────┐ & echo │                                            │ & echo │ Warning: The script has ended.             │ & echo │ Please restart it if you want to continue  │ & echo │ monitoring the repository for changes.     │ & echo │                                            │ & echo └────────────────────────────────────────────┘"
