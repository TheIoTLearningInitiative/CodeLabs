echo
echo "Welcome to Acat Playground"
echo

# General

opkg update
opkg install mraa
opkg install upm
npm install npm@latest -g
# npm cache clean -f
# npm install -g n
# n stable

cd

# Node-RED Base

npm install -g --unsafe-perm node-red
npm install -g --unsafe-perm pm2
pm2 start /usr/bin/node-red --node-args="--max-old-space-size=256"
cd ~/.node-red

# Npm Contributions

npm install mraa
npm install galileo-io

# Node-RED Official

npm install node-red-node-intel-gpio
npm install node-red-node-watson
npm install node-red-bluemix-nodes

# Node-RED Contributions

npm install node-red-contrib-gpio
npm install node-red-contrib-grove-edison
npm install node-red-contrib-upm
npm install node-red-contrib-play-audio
npm install node-red-contrib-voicerss-tts

cd

echo
echo "Happy Acat'ing!"
echo
