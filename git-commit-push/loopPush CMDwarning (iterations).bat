echo "runsFor maxIterations withGapsOf timeoutDuration"

@echo off
set timeoutDuration=5
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
start cmd /c "color 4F & echo Warning: The script has ended. Please restart it if you want to continue monitoring the repository for changes. & pause"
for /f "delims=" %%a in ('cscript //nologo ask.vbs') do set result=%%a
if "%result%" == "yes" (
    taskkill /f /im cmd.exe /fi "windowtitle eq C:\Windows\system32\cmd.exe"
    goto startloop
) else (
    taskkill /f /im cmd.exe /fi "windowtitle eq C:\Windows\system32\cmd.exe"
    exit
)
