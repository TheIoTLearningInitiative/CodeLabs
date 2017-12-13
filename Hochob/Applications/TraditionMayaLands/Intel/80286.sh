#!/bin/bash

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export i80286_PID=$$
export i80286_NAME="i80286"
export i80286_PATH=$(readlink -f "$0")
export i80286_DIRECTORY=$(dirname "$i80286_PATH")

LOCAL_TRADITION="Intel"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LogPid.sh $i80286_PID $i80286_NAME

AmikooCommunication.sh "$LOCAL_TRADITION" "Image" "IntelExperienceWhatsInside.png"
AmikooCommunication.sh "$LOCAL_TRADITION" "Audio" "IntelBong.mp3"
sleep 5
AmikooCommunication.sh "$LOCAL_TRADITION" "Audio" "Stop"
AmikooCommunication.sh "$LOCAL_TRADITION" "Image" "Stop"

AmikooCommunication.sh "$LOCAL_TRADITION" "Image" "IntelChorus.jpg"
AmikooCommunication.sh "$LOCAL_TRADITION" "Audio" "IntelBongChorus.mp3"
sleep 5
AmikooCommunication.sh "$LOCAL_TRADITION" "Audio" "Stop"
AmikooCommunication.sh "$LOCAL_TRADITION" "Image" "Stop"

# End of File
