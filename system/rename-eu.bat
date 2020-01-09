@echo off

setlocal enabledelayedexpansion

:_main
set "name="
set "name_2="
for /f "usebackq" %%i in (`dir /b ^| find /i "-ru."`) do (
set name_2=%%i
set name=%%i
)
set name_2=%name_2:-ru.=-e.%
if exist %name% ren %name% %name_2%
if not "%name%"=="" echo.%name% ==^> %name_2% ok && goto :_main