
#!/bin/sh
rfkill unblock bluetooth
sleep 2
bluetoothctl << EOF
discoverable on
EOF
sleep 2
bluetoothctl << EOF
connect 40:78:6A:26:4A:C2
EOF
sleep 2

#amixer -c 2 cset numid=5 30

python SPP-pipe-out.py &

#./Mot
