
call bootstrap.bat
copy boost-build-club-project-config.jam project-config.jam

echo
echo Building boost static libs for VS2010, x86
echo
echo b2 --toolset=msvc-15.0 --build-type=complete stage link=static
echo
echo Building boost static libs for VS2010, x64
echo
b2 -j 8 --toolset=msvc-15.0 --build-type=complete architecture=x86 address-model=64 stage link=static
