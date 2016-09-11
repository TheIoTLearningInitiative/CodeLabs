echo
echo "Welcome to Tulum Device Playground"
echo

sleep 4

git clone https://github.com/TheIoTLearningInitiative/CodeLabs.git
cd CodeLabs/Tulum/device

pip install pip --upgrade
sh requirements.opkg
pip install -r requirements.pip
sh requirements.manual

echo
echo "Now go to CodeLabs/Tulum/device directory to get started!"
echo
echo "Work on having your credentials ready!"
echo "credentials.config"
echo
echo "Happy Tulum'ing!"
echo
