echo
echo "Welcome to Mayapan Playground"
echo

sleep 4

# git clone https://github.com/TheIoTLearningInitiative/CodeLabs.git
cd CodeLabs/Mayapan/

pip install pip --upgrade
sh requirements.opkg
pip install -r requirements.pip
sh requirements.manual

echo
echo "Now go to CodeLabs/Mayapan directory to get started!"
echo
echo "Happy Mayapan'ing!"
echo
