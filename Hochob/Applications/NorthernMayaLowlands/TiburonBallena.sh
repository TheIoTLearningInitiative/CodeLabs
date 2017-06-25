#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export TIBURONBALLENA_PID=$$
export TIBURONBALLENA_NAME="Mapimi Application"
export TIBURONBALLENA_PATH=$(readlink -f "$0")
export TIBURONBALLENA_DIRECTORY=$(dirname "$TIBURONBALLENA_PATH")

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LOCAL_INSTITUTION=`Name.sh`
LOCAL_LANGUAGE=`Language.sh`

Eek.sh spanish robot "Hola"
Survey.sh spanish robot 1

exit 0

if [ "$LOCAL_LANGUAGE" = "english" ]; then
    Eek.sh english robot "Hi Lupe, good morning"
    Eek.sh english tt "Hi Lupe, good morning"
else
    Eek.sh spanish robot "Hola Lupe, muy buenos dias"
    Eek.sh spanish tt "Hola Lupe, muy buenos dias"
    Stream.sh "Eek'" "1.0" "$AREA_NORTHERN_MAYA_LOWLANDS/TiburonBallena/LiftoffSpaceXFalcon9CRS10Mission.mp4"
fi

# End of File
