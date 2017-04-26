set -x

killall -9 stream2chromecast.py

IAM=`whoami`

if [ "$IAM" == "root" ]; then
        IPATH="/"$IAM"/"
	cd $IPATH/CodeLabs/Hochob/Audio/stream2chromecast
        DEVICE="Juum"
        #DEVICE="Eek'"
else
        IPATH="/home/"$IAM"/"
	cd $IPATH/CodeLabs/Hochob/Audio/stream2chromecast
        DEVICE="Juum"
        #DEVICE="Eek'"
fi

mpg123 $IPATH/Audio/03Video.mp3

#./stream2chromecast.py -devicename $DEVICE -setvol 1.0
#./stream2chromecast.py -devicename $DEVICE $IPATH/Audio/IntelGDC.mp3
#./stream2chromecast.py -devicename $DEVICE -stop
