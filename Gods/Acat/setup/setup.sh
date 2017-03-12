echo
echo "Welcome to Acat Playground"
echo

opkg update
opkg install mraa
opkg install upm

cd
mkdir nodered
cd nodered/
npm install node-red
npm install mraa
npm install galileo-io
npm install node-red-contrib-gpio
npm install node-red-node-intel-gpio
npm install node-red-contrib-grove-edison
npm install node-red-contrib-upm
npm install node-red-node-watson
npm install node-red-contrib-play-audio
npm install node-red-bluemix-nodes
npm install node-red-contrib-voicerss-tts

echo
echo "Happy Acat'ing!"
echo
