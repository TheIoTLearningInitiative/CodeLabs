#!/bin/bash

echo "Wait for the Bluetooth setup to finish"

# Enable Bluetooth
/usr/sbin/rfkill unblock bluetooth
sleep 2
/usr/bin/hciconfig hci0 up
sleep 2

# Make Edison discoverable
{
bluetoothctl <<EOF
discoverable on
quit 
EOF
} > /dev/null

# Registers bluetooth agent and enables SPP
# Please, replace 'your-project' with the name
# of the project you are working on:
# python /home/root/Edison_Bluetooth/projects/your-project/spp.py &
# Default: gardening-system
# Options:
# gardening-system | hospital-assistant | temperature-monitor
python /home/root/Edison_Bluetooth/projects/hospital-assistant/spp.py &

# Print a message so the user knows when the script finished
sleep 1
echo "Now can now pair your device with Edison"
