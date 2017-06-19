#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

#. ~/CodeLabs/Hochob/Main.sh

export KILLPID_PID=$$

LOCAL_NAME="$1"
LOCAL_PID=0

# =============================================================================
# Functions
# =============================================================================

list_descendants ()
{
  local children=$(ps -o pid= --ppid "$1")

  for pid in $children
  do
    list_descendants "$pid"
  done

  echo "$children"
}

# =============================================================================
# Main
# =============================================================================

LOCAL_PID=`GetPid.sh "$LOCAL_NAME"`
#kill -- -$(ps -o pgid=$LOCAL_PID | grep -o '[0-9]*')
#kill `pstree -p $LOCAL_PID | sed 's/(/\n(/g' | grep '(' | sed 's/(\(.*\)).*/\1/' | tr "\n" " "`
#kill $(ps -s $$ -o pid=)
kill $(list_descendants ${LOCAL_PID})

# End of File
