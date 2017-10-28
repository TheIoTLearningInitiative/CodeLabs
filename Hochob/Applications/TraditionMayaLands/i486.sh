#!/bin/bash

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export i486_PID=$$
export i486_NAME="i486"
export i486_PATH=$(readlink -f "$0")
export i486_DIRECTORY=$(dirname "$i486_PATH")

LOCAL_SEASON="Intel"
LOCAL_DEVICE="Triki"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LogPid.sh $i486_PID $i486_NAME


Eog.sh "$TRADITION_INTEL/Image/IntelExperienceWhatsInside.png" &
sleep 1
Vlc.sh $TRADITION_INTEL/Sound/IntelBong.mp3
sleep 1
KillApp.sh "cvlc"
KillApp.sh "eog"

Eog.sh "$TRADITION_INTEL/Image/IntelChorus.png" &
sleep 1
Vlc.sh $TRADITION_INTEL/Sound/IntelBongChorus.mp3
sleep 1
KillApp.sh "cvlc"
KillApp.sh "eog"

# End of File
