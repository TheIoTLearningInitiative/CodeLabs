echo
echo "Welcome to Coba Playground"
echo

sleep 4

git clone https://github.com/TheIoTLearningInitiative/CodeLabs.git
cd CodeLabs/Coba/

pip install pip --upgrade
sh requirements.opkg
pip install -r requirements.pip

echo
echo "Now go to CodeLabs/Coba directory to get started!"
echo
echo "Happy Coba'ing!"
echo
