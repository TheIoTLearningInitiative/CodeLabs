echo
echo "Welcome to Kohunlich Playground"
echo

sleep 4

git clone https://github.com/TheIoTLearningInitiative/CodeLabs.git
cd CodeLabs/Kohunlich/

sh requirements.opkg

wget https://raw.githubusercontent.com/SourceCodeCat/IoTCodeExamples/master/I2C/JHD1313M2.c
wget https://raw.githubusercontent.com/SourceCodeCat/IoTCodeExamples/master/I2C/JHD1313M2.h

echo
echo "Now go to CodeLabs/Kohunlich directory to get started!"
echo
echo "Happy Kohunlich'ing!"
echo
