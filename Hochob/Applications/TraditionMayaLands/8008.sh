#!/bin/bash

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export 8008_PID=$$
export 8008_NAME="8008"
export 8008_PATH=$(readlink -f "$0")
export 8008_DIRECTORY=$(dirname "$8008_PATH")

LOCAL_TRADITION="Intel"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LogPid.sh $8008_PID $8008_NAME

AmikooTradition.sh "$LOCAL_TRADITION" "Audio" "IntelBong.mp3"
sleep 5
AmikooTradition.sh "$LOCAL_TRADITION" "Audio" "IntelBongPeople.mp3"


# End of File
