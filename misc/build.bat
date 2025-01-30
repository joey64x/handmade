@echo off

set ROOT_DIR=%~dp0..\..
mkdir %ROOT_DIR%\build
pushd %ROOT_DIR%\build
echo %cd%
"C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.37.32822\bin\Hostx64\x64\cl.exe" -Zi %ROOT_DIR%\handmade\src\win32_handmade.cpp user32.lib gdi32.lib
popd