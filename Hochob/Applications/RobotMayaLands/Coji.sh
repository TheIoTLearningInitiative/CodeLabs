#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export COJI_PID=$$
export COJI_PATH=$(readlink -f "$0")
export COJI_DIRECTORY=$(dirname "$COJI_PATH")

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

Robot.sh lupe/inicial 1
sleep 2
Robot.sh lupe/say "Hello World! One, Two, Three!"
sleep 2
Robot.sh lupe/decir "Hola Mundo! Uno, Dos, Tres!"
sleep 2

LOCAL_LANGUAGE=`Language.sh`
if [ "$LOCAL_LANGUAGE" = "english" ]; then
    Robot.sh lupe/say \
    "Hello World! One, Two, Three!"
else
    Robot.sh lupe/decir \
    "Hola Mundo! Uno, Dos, Tres!"
fi

# End of File
