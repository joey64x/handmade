@echo off

set ROOT_DIR=%~dp0..\..
mkdir %ROOT_DIR%\build

rem Setup Visual Studio environment variables
set VCVARS="C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvars64.bat"
if not exist %VCVARS% (
    echo Could not find Visual Studio vcvars64.bat
    exit /b 1
)
call %VCVARS%

pushd %ROOT_DIR%\build
echo %cd%
cl -Zi ..\handmade\src\win32_handmade.cpp user32.lib gdi32.lib
popd