#!/bin/bash

killall -9 stream2chromecast.py

IAM=`whoami`

if [ "$IAM" == "root" ]; then
        IPATH="/"$IAM"/"
	cd $IPATH/CodeLabs/Hochob/Audio/stream2chromecast
        DEVICE="Juum"
else
        IPATH="/home/"$IAM"/"
	cd $IPATH/CodeLabs/Hochob/Audio/stream2chromecast
        DEVICE="Juum"
fi

./stream2chromecast.py -devicename $DEVICE -setvol 1.0
./stream2chromecast.py -devicename $DEVICE $IPATH/Audio/07Microprocesador.mp3
./stream2chromecast.py -devicename $DEVICE -stop
