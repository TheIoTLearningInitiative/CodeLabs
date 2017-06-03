#!/bin/sh

# Server Setup
sudo apt install git

# Server Services Automation Home Assistant
sudo apt install python3-setuptools
sudo apt install python3-pip
sudo pip3 install --upgrade pip
sudo pip3 install homeassistant

# Server Services Calendar
# None

# Server Services Camera
sudo apt install fswebcam

# Server Services Institution
# None

# Server Services Image
sudo apt install eog

# Server Services Stream
sudo apt install ffmpeg
sudo apt install libav-tools

# Server Services Sound Speech Synthetizer
sudo apt install espeak tee

# End of File
