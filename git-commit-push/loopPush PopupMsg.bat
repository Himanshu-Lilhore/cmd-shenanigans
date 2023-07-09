echo "runsFor2hrs"

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
for /f "delims=" %%a in ('cscript //nologo ask.vbs') do set result=%%a
if "%result%" == "yes" (
    goto startloop
) else (
    exit
)
