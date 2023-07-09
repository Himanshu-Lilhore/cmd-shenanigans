echo "runsFor maxIterations withGapsOf timeoutDuration"

@echo off
set timeoutDuration=2
set maxIterations=2

:startloop
set iterations=0

:loop
call loopPush.bat
timeout /t %timeoutDuration%
set /a iterations+=1
if %iterations% GEQ %maxIterations% goto endloop
goto loop

:endloop
for /f "delims=" %%a in ('cscript //nologo ask.vbs') do set result=%%a
if "%result%" == "yes" (
    goto startloop
) else (
    exit
)
