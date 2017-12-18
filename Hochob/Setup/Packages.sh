#!/bin/sh

# Hochob Server General
sudo apt install git
sudo apt install fortunes

# Hochob Server Services Automation Home Assistant
sudo apt install python3-setuptools
sudo apt install python3-pip
sudo pip3 install --upgrade pip
sudo pip3 install homeassistant
sudo pip3 install flask_sqlalchemy
sudo pip3 install sqlalchemy
sudo pip3 install xmltodict

# Hochob Server Services Calendar
sudo pip install httplib2
sudo python -m pip install --upgrade google-api-python-client

# Hochob Server Services Camera
sudo apt install fswebcam

# Hochob Server Services Communications
sudo apt install git mosquitto_clients

# Hochob Server Services Image
sudo apt install imagemagick
sudo apt install eog

# Hochob Server Services Institution
# None

# Hochob Server Services Keypad
# None

# Hochob Server Services Messaging
# None

# Hochob Server Services Motion
sudo apt-get install motion

# Hochob Server Services Amikoo
# None

# Hochob Server Services Sound Play
sudo apt install mpg123
sudo apt install vlc

# Hochob Server Services Sound Speech Synthetizer
sudo apt install espeak tee
sudo apt install festival festival-doc festvox-kdlpc16k festvox-ellpc11k
sudo apt install festvox-don festvox-rablpc16k festvox-kallpc16k festvox-kdlpc16k
sudo apt install libttspico0 libttspico-utils libttspico-data

# Hochob Server Services Stream
sudo apt install ffmpeg
sudo apt install libav-tools

# Hochob Server Services Usb
# None

# Hochob Server Services Survey
sudo pip install paho-mqtt

# Hochob Server Services Video
sudo apt install ffmpeg

# End of File
