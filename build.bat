@echo off
title Building source engine
SET GAME=hl2mp
SET OPUS=true
SET PRESET=release
SET PREFIX=hl2mp
if %OPUS%==true (echo Building x64 && python3 waf configure -T %PRESET% --prefix=%PREFIX% --build-games=%GAME% --disable-warns --enable-opus && python3 waf build -v -p && python3 waf install) else echo Script error! && SET COMPILED=false
if %OPUS%==false (echo Building hl2mp x64 && python3 waf configure -T %PRESET% --prefix=%PREFIX% --build-games=%GAME% --disable-warns --enable-opus && python3 waf build -v -p && python3 waf install) else echo Script error! && SET COMPILED=false
echo Building completed
if %COMPILED%==true (echo Binary location: %PREFIX%) else echo Did not compile
pause