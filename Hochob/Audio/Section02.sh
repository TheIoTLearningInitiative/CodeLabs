#!/bin/bash

set -x

pacmd set-default-sink 2
pacmd set-default-source 3

IAM=`whoami`
IPATH="/home/$IAM/"
MQTTSERVER=localhost
MQTTPORT=1883

#feh --fullscreen $IPATH/Images/VisitorsCenter/01/*.jpg &
#sleep 2
mpg123 $IPATH/Audio/02AntesDelVideo.mp3 &
#feh --fullscreen --slideshow-delay 2 --cycle-once $IPATH/Images/VisitorsCenter/02/*.jpg
#feh --fullscreen --cycle-once --slideshow-delay 2 -Sname $IPATH/Images/VisitorsCenter/02/*.jpg
feh --fullscreen $IPATH/Images/VisitorsCenter/02/02.jpg &
sleep 2
feh --fullscreen $IPATH/Images/VisitorsCenter/02/03.jpg &
sleep 2
feh --fullscreen $IPATH/Images/VisitorsCenter/02/04.jpg &
sleep 2
feh --fullscreen $IPATH/Images/VisitorsCenter/02/06.jpg &
sleep 2
feh --fullscreen $IPATH/Images/VisitorsCenter/02/07.jpg &
sleep 2
feh --fullscreen $IPATH/Images/VisitorsCenter/02/08.jpg &
sleep 2
feh --fullscreen $IPATH/Images/VisitorsCenter/02/09.jpg &
sleep 2
feh --fullscreen $IPATH/Images/VisitorsCenter/lupe.jpg &
sleep 4
mosquitto_pub -h $MQTTSERVER -p $MQTTPORT -q 1 -t lupe/headright -m 1
sleep .6
mosquitto_pub -h $MQTTSERVER -p $MQTTPORT -q 1 -t lupe/headleft -m 1
sleep .6
mosquitto_pub -h $MQTTSERVER -p $MQTTPORT -q 1 -t lupe/headright -m 1
sleep .6
mosquitto_pub -h $MQTTSERVER -p $MQTTPORT -q 1 -t lupe/headleft -m 1
sleep .6
mosquitto_pub -h $MQTTSERVER -p $MQTTPORT -q 1 -t lupe/headright -m 1
sleep 10
killall -9 feh

# End Of File
