title Building source engine
echo "Building day of defeat x64"
waf.bat configure -T release --prefix=dod --build-games=dod --disable-warns --enable-opus
waf.bat build -v -p
waf.bat install
echo "Building completed"
echo "Binary location: dod"