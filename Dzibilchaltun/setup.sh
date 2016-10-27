echo
echo "Welcome to Dzibilchaltun Playground"
echo

sleep 4

git clone https://github.com/TheIoTLearningInitiative/CodeLabs.git
cd CodeLabs/Dzibilchaltun

pip install pip --upgrade
sh requirements.opkg
pip install -r requirements.pip

echo
echo "Now go to CodeLabs/Dzibilchaltun directory to get started!"
echo
echo "Work on having your credentials ready!"
echo "credentials.config"
echo
echo "Happy Dzibilchaltun'ing!"
echo
