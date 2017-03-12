echo
echo "Welcome to Acat Playground"
echo

# General

opkg update
opkg install mraa
opkg install upm
npm install npm@latest -g

#npm install npm -g
#npm cache clean -f
#npm install -g n
#n stable

# Node-RED Base

npm install -g --unsafe-perm node-red
npm install -g --unsafe-perm pm2
pm2 start /usr/bin/node-red --node-args="--max-old-space-size=256" -- -v
#pm2 start /usr/bin/node-red --node-args="--max-old-space-size=128" -- -v

#pm2 save
#pm2 startup
#pm2 startup systemd

# Npm Contributions

cd .node-red/
npm install mraa
npm install galileo-io
cd

# Node-RED Official

#npm install node-red-node-intel-gpio
#npm install node-red-node-watson
#npm install node-red-bluemix-nodes

# Node-RED Contributions

#npm install node-red-contrib-gpio
#npm install -g node-red-contrib-grove-edison
npm install -g node-red-contrib-upm
#npm install node-red-contrib-play-audio
#npm install node-red-contrib-voicerss-tts
#npm install node-red-contrib-cognitive-services

echo
echo "Happy Acat'ing!"
echo
