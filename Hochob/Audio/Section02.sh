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

feh --fullscreen --slideshow-delay 1 --cycle-once $IPATH/Images/VisitorCenter/01/*.jpg
mpg123 $IPATH/Audio/02AntesDelVideo.mp3 &
feh --fullscreen --slideshow-delay 3 --cycle-once $IPATH/Images/VisitorCenter/02/*.jpg
feh --fullscreen $IPATH/Images/VisitorCenter/lupe.jpg &
sleep 9
killall -9 feh


#./stream2chromecast.py -devicename $DEVICE -setvol 1.0
#./stream2chromecast.py -devicename $DEVICE $IPATH/Audio/Intel.mp3
#./stream2chromecast.py -devicename $DEVICE -stop
