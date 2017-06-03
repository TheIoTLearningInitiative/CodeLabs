#!/bin/sh

# Hochob Setup
sudo apt install git

# Hochob Services Automation Home Assistant
sudo apt install python3-setuptools
sudo apt install python3-pip
sudo pip3 install --upgrade pip
sudo pip3 install homeassistant

# Hochob Services Calendar
# None

# Hochob Services Camera
sudo apt install fswebcam

# Hochob Services Communications
# None

# Hochob Services Lupe Robot
# None

# Hochob Services Institution
# None

# Hochob Services Image
sudo apt install eog

# Hochob Services Messaging
# None

# Hochob Services Motion
# None

# Hochob Services Sound Speech Synthetizer
sudo apt install espeak tee

# Hochob Services Stream
sudo apt install ffmpeg
sudo apt install libav-tools

# Hochob Services Usb
# None

# Hochob Services Video
# None

# Hochob Services Telegram
# None


test -d /tmp/HochobMediaSource/ && echo "Directory exists" || mkdir /tmp/HochobMediaSource/
test -d /tmp/HochobMediaSource/ && echo "Directory exists" || mkdir /tmp/HochobMediaSource/

# End of File
