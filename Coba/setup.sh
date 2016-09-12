echo
echo "Welcome to Coba Playground"
echo

sleep 4

cd
wget https://github.com/SourceCodeCat/IoTDownloads/raw/master/linux-headers-3.10.17-poky-edison_3.10.17-poky-edison-1_i386.deb
ar x linux-headers-3.10.17-poky-edison_3.10.17-poky-edison-1_i386.deb
tar -xvf data.tar.gz
cd ~/usr/src/
ln -s linux-headers-3.10.17-poky-edison linux-headers-3.10.98-poky-edison
echo > ~/usr/src/linux-headers-3.10.98-poky-edison/include/generated/utsrelease.h
echo "#define UTS_RELEASE \"3.10.98-poky-edison+\"" > ~/usr/src/linux-headers-3.10.98-poky-edison/include/generated/utsrelease.h
cd /lib/modules/3.10.17-poky-edison+
ln -s /home/root/usr/src/linux-headers-3.10.17-poky-edison build
cd
rm data.tar.gz
rm linux-headers-3.10.17-poky-edison_3.10.17-poky-edison-1_i386.deb

git clone https://github.com/TheIoTLearningInitiative/CodeLabs.git
cd CodeLabs/Coba/

pip install pip --upgrade
sh requirements.opkg
# pip install -r requirements.pip

echo
echo "Now go to CodeLabs/Coba directory to get started!"
echo
echo "Happy Coba'ing!"
echo
