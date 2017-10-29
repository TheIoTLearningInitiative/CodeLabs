#!/bin/bash

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export i8008_PID=$$
export i8008_NAME="i8008"
export i8008_PATH=$(readlink -f "$0")
export i8008_DIRECTORY=$(dirname "$i8008_PATH")

LOCAL_TRADITION="Intel"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LogPid.sh $i8008_PID $i8008_NAME

AmikooCommunication.sh "$LOCAL_TRADITION" "Audio" "IntelBong.mp3"
sleep 5
AmikooCommunication.sh "$LOCAL_TRADITION" "Audio" "IntelBongPeople.mp3"


# End of File
