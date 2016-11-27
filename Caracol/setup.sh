echo
echo "Welcome to Caracol Playground"
echo

sleep 4

#git clone https://github.com/TheIoTLearningInitiative/CodeLabs.git
cd CodeLabs/Caracol/

sudo pip install pip --upgrade
sudo sh requirements.aptget
sudo pip install -r requirements.pip

cat <<EOF > ~/.asoundrc
pcm.!default {
    type plug
       slave {
           pcm "hw:2,0"
       }
}
ctl.!default {
    type plug
        slave {
           pcm "hw:1,0"
       }
}
EOF

mkdir configuration
echo > configuration/voicerss.mk
echo > configuration/voicerss.ak
echo > configuration/credentials.config
echo > configuration/messages.config

echo
echo "Now go to CodeLabs/Caracol directory to get started!"
echo
echo "Happy Caracol'ing!"
echo
