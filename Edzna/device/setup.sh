echo
echo "Welcome to Edzna Playground"
echo

sleep 4

#git clone https://github.com/TheIoTLearningInitiative/CodeLabs.git
cd CodeLabs/Edzna/device

pip install pip --upgrade
sh requirements.opkg
pip install -r requirements.pip
sh requirements.manual

echo
echo "Now go to CodeLabs/Edzna directory to get started!"
echo
echo "Happy Edzna'ing!"
echo
