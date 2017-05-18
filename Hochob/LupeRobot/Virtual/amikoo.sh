#!/bin/bash

set -x

pacmd set-default-sink 2
pacmd set-default-source 3

node /home/hochob/CodeLabs/Hochob/LupeRobot/Virtual/amikoo.js

# End Of File
