@echo off
setlocal enabledelayedexpansion
set APP_NAME1=r5apex.exe
set APP_NAME2=EasyAntiCheat.exe
set APP_NAME3=dllhost.exe

for /f %%i in ('tasklist /fi "IMAGENAME eq %APP_NAME1%" 2^>^&1') do (
    if /i %%i==%APP_NAME1% (
        taskkill /im %APP_NAME1% /t /f
        goto ENDLOOP1;
    )
)

:ENDLOOP1

for /f %%i in ('tasklist /fi "IMAGENAME eq %APP_NAME2%" 2^>^&1') do (
    if /i %%i==%APP_NAME2% (
        taskkill /im %APP_NAME2% /t /f
        goto ENDLOOP2;
    )
)

:ENDLOOP2

set hokan=""
set cnumber=""
for /f "delims=" %%i in ('tasklist /m ^| findstr dllhost') do (
    set hokan=%%i
    echo !hokan! | findstr "N/A" >NUL
    if not ERRORLEVEL 1 (
        goto ENDLOOP3;
    )
)

:ENDLOOP3

set cnumber=%hokan:~29,5%
echo !hokan! | findstr "N/A" >NUL
if not ERRORLEVEL 1 (
    echo "kill simasita"
    taskkill /pid %cnumber% /t /f
)

setlocal DisableDelayedExpansion

exit /b 0
