echo
echo "Welcome to Chacmultun Playground"
echo

opkg install i2c-tools-dev
opkg install python-dev mraa upm

cd
wget https://github.com/SourceCodeCat/IoTDownloads/raw/master/linux-headers-3.10.17-poky-edison_3.10.17-poky-edison-1_i386.deb
ar x linux-headers-3.10.17-poky-edison_3.10.17-poky-edison-1_i386.deb
tar -xvf data.tar.gz
rm data.tar.gz
rm linux-headers-3.10.17-poky-edison_3.10.17-poky-edison-1_i386.deb
cd ~/usr/src/
ln -s linux-headers-3.10.17-poky-edison linux-headers-3.10.98-poky-edison
cd
echo > ~/usr/src/linux-headers-3.10.98-poky-edison/include/generated/utsrelease.h
echo "#define UTS_RELEASE \"3.10.98-poky-edison+\"" > ~/usr/src/linux-headers-3.10.98-poky-edison/include/generated/utsrelease.h
cd /lib/modules/3.10.98-poky-edison+
ln -s /home/root/usr/src/linux-headers-3.10.98-poky-edison build
cd

echo
echo "Now go to CodeLabs/Chacmultun directory to get started!"
echo
echo "Happy Chacmultun'ing!"
echo
