@echo off
echo Activating VC++ 14 x64 compiler
call "C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\vcvarsall.bat" amd64

pushd .
mkdir x64 & cd x64
cmake .. -G"Visual Studio 14 2015 Win64"
cmake --build . --config RelWithDebInfo
cmake --build . --config RelWithDebInfo --target install
popd