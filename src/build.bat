@echo off

mkdir ../../build
pushd ../../build
pwd
cl ../handmade/src/win32_handmade.cpp
popd