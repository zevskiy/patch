@echo off

setlocal enabledelayedexpansion

:_main
set "name="
set "name_2="
for /f "usebackq" %%i in (`dir /b ^| find /i "-e."`) do (
set name_2=%%i
set name=%%i
)
set name_2=%name_2:-e.=-ru.%
if exist %name% ren %name% %name_2%
if not "%name%"=="" echo.%name% ==^> %name_2% ok && goto :_main