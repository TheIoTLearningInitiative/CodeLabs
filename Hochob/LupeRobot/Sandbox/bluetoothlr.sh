
#!/bin/sh

rfkill unblock bluetooth
sleep 3

bluetoothctl << EOF
discoverable on
EOF

sleep 3

bluetoothctl << EOF
connect F8:CF:C5:D4:CB:BC
EOF

sleep 3

python /home/root/CodeLabs/Hochob/LupeRobot/bluetoothspp.py &
