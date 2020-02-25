(
make FW=360;
make FW=365;
mv fat_360.bin installer/res/fat_360.bin;
mv fat_365.bin installer/res/fat_365.bin;
cd installer/;
cmake ./ && make;
mv enso_installer.vpk ../enso.vpk;
rm -rf CMakeFiles && rm cmake_install.cmake && rm CMakeCache.txt && rm Makefile;
rm -rf emmc_* && rm enso_* && rm kernel2* && rm version.h;
echo "";
echo "DONE! [ enso.vpk ]";
echo "";
)