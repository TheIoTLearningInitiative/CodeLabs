#!/bin/sh

set -x

MQTTSERVER=localhost
MQTTPORT=1883

cvlc --no-video-title-show --fullscreen /home/hochob/LupeRobot/1080p/Silencio.mp4 &
#(sleep 1) && echo "hola a todos" | espeak -v es-la -a 200
(mosquitto_pub -h $MQTTSERVER -p $MQTTPORT -q 1 -t lupe/inicial -m 1) && sleep 1.25

cvlc --no-video-title-show --fullscreen /home/hochob/LupeRobot/1080p/Parte1_v3.mp4 &
#(sleep 7.5) && echo "Perdon! Lo se!, Es que me emociono" | espeak -v es-la -a 200
sleep 6.35 && mosquitto_pub -h $MQTTSERVER -p $MQTTPORT -q 1 -t lupe/emocion -m 1 && sleep 4

cvlc --no-video-title-show --fullscreen /home/hochob/LupeRobot/1080p/Parte2_v2.mp4 &
##(sleep 3.5) && echo "Por supuesto" | espeak -v es-la -a 200
sleep 2.7 && mosquitto_pub -h $MQTTSERVER -p $MQTTPORT -q 1 -t lupe/porsupuesto -m 1 && sleep 2.5

cvlc --no-video-title-show --fullscreen /home/hochob/LupeRobot/1080p/Parte3_v2.mp4 &
##(sleep 39.5) && echo "En mi caso, mi cerebro esta aqui, en la caja azul!" | espeak -v es-la -a 200
sleep 37.5 && mosquitto_pub -h $MQTTSERVER -p $MQTTPORT -q 1 -t lupe/cerebro -m 1
sleep 2
mosquitto_pub -h $MQTTSERVER -p $MQTTPORT -q 1 -t lupe/rightup -m 1
sleep .25
mosquitto_pub -h $MQTTSERVER -p $MQTTPORT -q 1 -t lupe/leftup -m 1
sleep .25
mosquitto_pub -h $MQTTSERVER -p $MQTTPORT -q 1 -t lupe/rightfold -m 1
sleep .25
mosquitto_pub -h $MQTTSERVER -p $MQTTPORT -q 1 -t lupe/leftfold -m 1
sleep 2

cvlc --no-video-title-show --fullscreen /home/hochob/LupeRobot/1080p/Parte4_v2.mp4 &
##(sleep 26.5) && echo "Yo funciono con la plataforma Intel Edison" | espeak -v es-la -a 200
sleep 25.5 && mosquitto_pub -h $MQTTSERVER -p $MQTTPORT -q 1 -t lupe/inteledison -m 1
sleep 3
mosquitto_pub -h $MQTTSERVER -p $MQTTPORT -q 1 -t lupe/rightdown -m 1
sleep .25
mosquitto_pub -h $MQTTSERVER -p $MQTTPORT -q 1 -t lupe/leftdown -m 1
sleep .25
mosquitto_pub -h $MQTTSERVER -p $MQTTPORT -q 1 -t lupe/rightunfold -m 1
sleep .25
mosquitto_pub -h $MQTTSERVER -p $MQTTPORT -q 1 -t lupe/leftunfold -m 1
sleep 2

cvlc --no-video-title-show --fullscreen --play-and-exit /home/hochob/LupeRobot/1080p/Parte5_v2.mp4 &
sleep 75
sh /home/hochob/CodeLabs/Hochob/LupeRobot/Show/LupeRobotKill.sh

# End Of File
