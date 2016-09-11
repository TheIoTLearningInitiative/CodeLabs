echo
echo "Welcome to Project Playground"
echo

sleep 4

git clone https://github.com/TheIoTLearningInitiative/CodeLabs.git
cd CodeLabs/project/

pip install pip --upgrade
sh requirements.opkg
pip install -r requirements.pip

echo
echo "Now go to CodeLabs/project directory to get started!"
echo
echo "Happy Project'ing!"
echo
