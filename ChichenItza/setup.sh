echo
echo "Welcome to Chichen Itza Playground"
echo

sleep 4

#git clone https://github.com/TheIoTLearningInitiative/CodeLabs.git
#cd CodeLabs/ChichenItza/

pip install pip --upgrade
sh requirements.opkg
# pip install -r requirements.pip


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
           pcm "hw:2,0"
       }
}
EOF

echo
echo "Now go to CodeLabs/ChichenItza directory to get started!"
echo
echo "Happy Chichen Itza'ing!"
echo
