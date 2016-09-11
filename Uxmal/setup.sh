echo
echo "Welcome to Uxmal Playground"
echo

sleep 4

git clone https://github.com/TheIoTLearningInitiative/CodeLabs.git
cd CodeLabs/Uxmal/

pip install pip --upgrade
sh requirements.opkg
pip install -r requirements.pip

echo
echo "Now go to CodeLabs/uxmal directory to get started!"
echo
echo "Happy Uxmal'ing!"
echo
