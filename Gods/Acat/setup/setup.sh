echo
echo "Welcome to Acat Playground"
echo

# General

opkg update
opkg install mraa
opkg install upm
#npm install npm@latest -g

#npm install npm -g
#npm cache clean -f
#npm install -g n
#n stable

# Node-RED Base

npm install -g node-gyp
npm install -g --unsafe-perm node-red
#npm install -g pm2
#pm2 start /usr/bin/node-red --node-args="--max-old-space-size=256" -- -v
#pm2 start /usr/bin/node-red --node-args="--max-old-space-size=128" -- -v

#pm2 startup
#pm2 startup systemd
#pm2 startup -u myusername
#pm2 save

# Npm Contributions

cd .node-red/
npm install mraa
npm install galileo-io

# Node-RED Official

#npm install node-red-node-intel-gpio
#npm install node-red-node-watson
#npm install node-red-bluemix-nodes

# Node-RED Contributions

#npm install node-red-contrib-gpio
#npm install -g node-red-contrib-grove-edison
npm install node-red-contrib-upm
#npm install node-red-contrib-play-audio
#npm install node-red-contrib-voicerss-tts
#npm install node-red-contrib-cognitive-services
npm install node-red-dashboard

cd

echo
echo "Happy Acat'ing!"
echo
