#!/bin/bash

set -x

array[0]="resetall"
array[1]="headleft"
array[2]="headright"

array[3]="leftup"
array[4]="leftright"
array[5]="leftfold"
array[6]="leftunfold"

array[7]="rightup"
array[8]="rightdown"
array[9]="rightfold"
array[10]="rightunfold"

array[11]="moveleft"
array[12]="moveright"
array[13]="moveforward"
array[14]="movebackward"
array[15]="movestop"

array[16]="bienvenida"
array[17]="agradece"
array[18]="dance"
array[19]="dance"
array[20]="creador"
array[21]="norte"

rand=$[$RANDOM % 4]
action=`echo ${array[$rand]}`
device="lupe/"

topic=$device$action

mosquitto_pub --qos 2 -h iot.eclipse.org -p 1883 -t $topic -m 1
