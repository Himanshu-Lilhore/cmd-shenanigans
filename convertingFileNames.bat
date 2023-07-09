@echo off
echo [1]
setlocal enabledelayedexpansion
echo [2]
set mystring=""
echo [3]
set strlen=0
echo [4]
for /R %AA in (*.*) do (
    echo [5] Processing file: %%AA
    set mystring=~n%%AA
    echo [6] mystring: !mystring!
    set ext=~x%%AA
    echo [7] ext: !ext!
    set lastsp=-1
    echo [8]
    set strlen=0
    echo [9]
    :loop
    echo [10] In inner loop, strlen: !strlen!, lastsp: !lastsp!
    if "!mystring:~%strlen%,1!"=="" goto :endloop
    echo [11]
    if "!mystring:~%strlen%,1!"==" " set lastsp=%strlen%
    echo [12]
    set /a strlen+=1
    echo [13]
    goto :loop
    :endloop
    echo [14] After inner loop, strlen: !strlen!, lastsp: !lastsp!
    if /i [!strlen!-!lastsp!]==[32] (
        echo [15] renaming %%AA to (%mystring:~0,(%lastsp%)%)(%ext%)
        rename %%AA (%mystring:~0,(%lastsp%)%)(%ext%)
        echo [16]
    )
)
