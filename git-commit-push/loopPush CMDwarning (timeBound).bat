echo "setFor2hrs"

@echo off
set timeoutDuration=30

:startloop
set /a endTime=%time:~0,2%+2
if %endTime% GTR 23 set /a endTime-=24

:loop
call loopPush.bat
timeout /t %timeoutDuration%
if %time:~0,2% GEQ %endTime% goto endloop
goto loop

:endloop
start "Warning" cmd /c "color 4F & echo Warning: The script has ended. Please restart it if you want to continue monitoring the repository for changes. & pause"
for /f "delims=" %%a in ('cscript //nologo ask.vbs') do set result=%%a
if "%result%" == "yes" (
    taskkill /f /fi "windowtitle eq Warning"
    goto startloop
) else (
    taskkill /f /fi "windowtitle eq Warning"
    exit
)
