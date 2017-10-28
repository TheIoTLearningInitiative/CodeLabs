#!/bin/sh

sudo apt-get install espeak
sudo apt-get install nodejs-legacy
sudo apt-get install npm

mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
echo "export PATH=~/.npm-global/bin:$PATH" >> ~/.bashrc
source ~/.bashrc

npm install -g mqtt --save
npm install -g espeak --save
npm install -g sleep --save

# End of File
