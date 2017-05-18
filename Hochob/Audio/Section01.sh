#!/bin/bash

#pacmd set-default-sink 2
#pacmd set-default-source 3

IAM=`whoami`
IPATH="/home/$IAM/"

eog -sf $IPATH/Images/Corporate* &
mpg123 $IPATH/Audio/01BienvenidaYProtocoloDeSeguridad.mp3
killall -9 eog

# End Of File
