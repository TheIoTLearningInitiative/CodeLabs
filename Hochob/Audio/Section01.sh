#!/bin/sh

IAM=`whoami`

if [ "$IAM" == "root" ]; then
        IPATH="/"$IAM"/"
else
        IPATH="/home/"$IAM"/"
fi

eog -sf $IPATH/Images/Corporate* &
mpg123 $IPATH/Audio/01BienvenidaYProtocoloDeSeguridad.mp3
killall -9 eog

# End Of File
