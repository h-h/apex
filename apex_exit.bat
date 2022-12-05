@echo off
set APP_NAME1=EasyAntiCheat.exe
set APP_NAME2=r5apex.exe

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