@echo off
setlocal enabledelayedexpansion
set mystring=""
set strlen=0
for /R %%AA in (*.*) do
(
set mystring=~n%%AA
set ext=~x%%AA
set lastsp=-1
set strlen=0
:loop
if "!mystring:~%strlen%,1!"=="" goto :endloop
if "!mystring:~%strlen%,1!"==" " set lastsp=%strlen%
set /a strlen+=1
goto :loop
:endloop
if /i [!strlen!-!lastsp!]==[32] rename %%AA (%mystring:~0,(%lastsp%)%)(%ext%)
)
