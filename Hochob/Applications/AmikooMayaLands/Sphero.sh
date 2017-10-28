#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export SPHERO_PID=$$
export SPHERO_NAME="Sphero"
export SPHERO_PATH=$(readlink -f "$0")
export SPHERO_DIRECTORY=$(dirname "$SPHERO_PATH")


LOCAL_PHRASE[0]="¿Que pez, acuaman?"
LOCAL_PHRASE[1]="¿Que pasotes con esos zapatotes, brother?"
LOCAL_PHRASE[2]="¿Que Honduras con las verduras que andan bajas las temperaturas?"
LOCAL_PHRASE[3]="¿Qué Pachuca por Toluca?"
LOCAL_PHRASE[4]="¿Qué Pachuca por Acámbaro?"
LOCAL_PHRASE[5]="¿Qué rollo, Goyo?"
LOCAL_PHRASE[6]="¿Qué Honduras, mi Nicaragua?"
LOCAL_PHRASE[7]="¿Qué transita por tu avenida?"

# =============================================================================
# Functions
# =============================================================================

choosePhrase()
{
    rand=$[ $RANDOM % 7 ]
    LOCAL_PHRASE=${LOCAL_PHRASE[$rand]}
}

# =============================================================================
# Main
# =============================================================================

LogPid.sh $SPHERO_PID $SPHERO_NAME

choosePhrase
Amikoo.sh $AMIKOO_DECIR "$LOCAL_PHRASE"

# End of File
