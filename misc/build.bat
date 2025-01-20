@echo off

set ROOT_DIR=%~dp0..\..
mkdir %ROOT_DIR%\build
pushd %ROOT_DIR%\build
echo %cd%
cl -Zi %ROOT_DIR%\handmade\src\win32_handmade.cpp user32.lib gdi32.lib
popd

