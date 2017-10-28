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

AmikooTradition.sh "$LOCAL_TRADITION" "Image" "IntelExperienceWhatsInside.png"
AmikooTradition.sh "$LOCAL_TRADITION" "Audio" "IntelBong.mp3"
sleep 2
AmikooTradition.sh "$LOCAL_TRADITION" "Audio" "Stop"
AmikooTradition.sh "$LOCAL_TRADITION" "Image" "Stop"

AmikooTradition.sh "$LOCAL_TRADITION" "Image" "IntelChorus.jpg"
AmikooTradition.sh "$LOCAL_TRADITION" "Audio" "IntelBongChorus.mp3"
sleep 2
AmikooTradition.sh "$LOCAL_TRADITION" "Audio" "Stop"
AmikooTradition.sh "$LOCAL_TRADITION" "Image" "Stop"

# End of File
