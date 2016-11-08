echo
echo "Welcome to Xcambo Playground"
echo

sleep 4

#git clone https://github.com/TheIoTLearningInitiative/CodeLabs.git
#cd CodeLabs/Xcambo/

pip install pip --upgrade
sh requirements.opkg
pip install -r requirements.pip
sh requirements.manual

echo
echo "Now go to CodeLabs/Xcambo directory to get started!"
echo
echo "Happy Xcambo'ing!"
echo
