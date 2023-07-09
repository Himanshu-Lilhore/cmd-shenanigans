@echo off
set /p iterations="Enter the number of iterations: "
set /p timeoutDuration="Enter the timeout duration (in seconds): "
set /a count=0
:loop
call loopPush.bat
timeout /t %timeoutDuration%
set /a count+=1
if %count%==%iterations% goto endloop
goto loop
:endloop
start cmd /k "color 4F & echo ┌────────────────────────────────────────────┐ & echo │                                            │ & echo │ Warning: The script has ended.             │ & echo │ Please restart it if you want to continue  │ & echo │ monitoring the repository for changes.     │ & echo │                                            │ & echo └────────────────────────────────────────────┘"
