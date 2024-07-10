@echo off
title Building source engine
SET GAME=dod
SET OPUS=true
SET PRESET=release
SET PREFIX=dod
if %GAME%==dod (if %OPUS%==true (echo Building day of defeat x64 && python3 waf configure -T %PRESET% --prefix=%PREFIX% --build-games=%GAME% --disable-warns --enable-opus && python3 waf build -v -p && python3 waf install)) else echo Script error! && SET COMPILED=false
if %GAME%==dod (if %OPUS%==false (echo Building day of defeat x64 && python3 waf configure -T %PRESET% --prefix=%PREFIX% --build-games=%GAME% --disable-warns --enable-opus && python3 waf build -v -p && python3 waf install)) else echo Script error! && SET COMPILED=false
echo "Building completed"
if %COMPILED%==true (echo Binary location: %PREFIX%) else echo Did not compile
pause