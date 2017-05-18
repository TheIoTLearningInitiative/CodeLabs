#!/bin/bash

IAM=`whoami`

if [ "$IAM" == "root" ]; then
        IPATH="/"$IAM"/"
else
        IPATH="/home/"$IAM"/"
fi

mpg123 $IPATH/Audio/03Video.mp3
