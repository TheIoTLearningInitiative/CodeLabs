#!/bin/bash

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export SOTZ_PID=$$
export SOTZ_NAME="Sotz"
export SOTZ_PATH=$(readlink -f "$0")
export SOTZ_DIRECTORY=$(dirname "$SOTZ_PATH")

LOCAL_INSTITUTION_NAME="México"

LOCAL_EVENT_NAME_ENGLISH="Aerial Technology"
LOCAL_EVENT_NAME_SPANISH="Tecnología Aérea"

LOCAL_LANGUAGE[0]="english"
LOCAL_LANGUAGE[1]="spanish"

# =============================================================================
# Functions
# =============================================================================

chooseLanguage()
{
    rand=$[ $RANDOM % 2 ]
    LOCAL_LANGUAGE=${LOCAL_LANGUAGE[$rand]}
    
}

# =============================================================================
# Main
# =============================================================================

LogPid.sh $SOTZ_PID $SOTZ_NAME

LOCAL_LANGUAGE="english"

AmikooCommunication.sh "Drones" "Image" "IntelAeroReadyToFlyDrone.jpg"
AmikooVoice.sh $LOCAL_LANGUAGE \
    "The Airbone Revolution in Drone Innovation, visit our Drone Stands"
sleep 5

AmikooVoice.sh $LOCAL_LANGUAGE \
    "Experience the amazing innovation driving the next frontier of flight. \
    Our technology propels everything from commercial inspection, surveying and \
    mapping to world record setting light show spectacles"
sleep 15

AmikooCommunication.sh "Drones" "Image" "DroneDemoStandsDronecode.jpg"
AmikooVoice.sh $LOCAL_LANGUAGE \
    "The Complete “End-to-End” Open Source UAV Platform. \
    A neutral place where industry and ecosystem developers \
    can work to build the world’s leading open UAV software platform."
sleep 15

AmikooCommunication.sh "Drones" "Image" "DroneDemoStandsStationKaan.jpg"
AmikooVoice.sh $LOCAL_LANGUAGE \
    "Drone Simulation using Software In The Loop \
    and Ground Control Station"
sleep 5

AmikooCommunication.sh "Drones" "Image" "DroneDemoStandsStationMuuyal.jpg"
AmikooVoice.sh $LOCAL_LANGUAGE \
    "Drone Simulation using Mavlink and DroneKit"
sleep 5

AmikooCommunication.sh "Drones" "Image" "DroneDemoStandsIntelAeroRTFSpecs.jpg"
AmikooVoice.sh $LOCAL_LANGUAGE \
    "Intel Aero Ready to Fly Drone is an Unmanned Aerial Vehicle development \
    platform: fully assembled, fully functional quadcopter"
sleep 10

AmikooCommunication.sh "Drones" "Image" "DroneDemoStandsStationIik.jpg"
AmikooVoice.sh $LOCAL_LANGUAGE \
    "Intel Aero Ready to Fly Drone controlled via Mavlink with Python Programming Language"
sleep 5

AmikooCommunication.sh "Drones" "Image" "DroneDemoStandsStationChakiik.jpg"
AmikooVoice.sh $LOCAL_LANGUAGE \
    "Intel Aero Ready to Fly Drone via Remote Control"
sleep 5

AmikooVoice.sh $LOCAL_LANGUAGE \
    "Come and talk to us about your ideas."

AmikooCommunication.sh "Drones" "Image" "Stop"
# End of File
