#!/bin/bash

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
LOCAL_PHRASE[8]="¿Que transita por tus venas?"
LOCAL_PHRASE[9]="¿Como estanques?"
LOCAL_PHRASE[10]="¿Qué trampa, cazador?"
LOCAL_PHRASE[11]="¿Te conozco, Orozco?"
LOCAL_PHRASE[12]="¿Que ondón, Ramón?"
LOCAL_PHRASE[13]="¿Cómo estanques, mi pescado?"
LOCAL_PHRASE[14]="¿Que tranza, Carranza?"
LOCAL_PHRASE[15]=" ¿Qué pez, marques?"
LOCAL_PHRASE[16]="¿Qué ondón, panzón?"
LOCAL_PHRASE[17]="¿Qué pasó mi rín cromado?"
LOCAL_PHRASE[18]="Vientos huracanados del norte y del sur con tendencias a la baja."
LOCAL_PHRASE[19]=" Según lo programado por los meteorólogos y Tucson Arizona como has Estados Unidos."
LOCAL_PHRASE[20]="Yo pensé que ya estabas morongas, pero nopales, estas bien vivorolas."
LOCAL_PHRASE[21]="Nadando de muertito. "
LOCAL_PHRASE[22]="¡Chido, Liro, Ramiro y el vampiro Clodomiro!"
LOCAL_PHRASE[23]="Me late un restorán!"
LOCAL_PHRASE[24]="¡Me late, cacahuate!"
LOCAL_PHRASE[25]="¡Chido one, Tehuacán!"
LOCAL_PHRASE[26]="¡Camara conchinchín!"
LOCAL_PHRASE[27]="¡Me gusta un montón ese pachangón!"
LOCAL_PHRASE[28]="¡Asústame pantera!"
LOCAL_PHRASE[29]="¡Espántame panteón!"
LOCAL_PHRASE[30]="¡Ay nanita, manita!"
LOCAL_PHRASE[31]=" ¡Abuelo, soy tu nieto!"
LOCAL_PHRASE[32]="¡A hueso!"
LOCAL_PHRASE[33]="¡Yes en inglés, Takanaka en Japonés!"
LOCAL_PHRASE[34]="¡A Wilson mi Nike!"
LOCAL_PHRASE[35]="¡Abuelita de Batman!"
LOCAL_PHRASE[36]="¡Cámara pibote y rín!"
LOCAL_PHRASE[37]="¡Ya rugiste pantera!"
LOCAL_PHRASE[38]="Como dijo el gran Tom Boy, ¡yo ya me voy!"
LOCAL_PHRASE[39]="¡Este osito de peluche, ya se va para su estuche!"
LOCAL_PHRASE[40]="Este muñeco cambia de aparador."
LOCAL_PHRASE[41]="Aquí se rompió una taza, cada quien para su casa."
LOCAL_PHRASE[42]="Ay nos vidrios."
LOCAL_PHRASE[43]="¡Al ratón vaquero!"
LOCAL_PHRASE[45]="Como dijo el resorte: ¡me restiro!"
LOCAL_PHRASE[46]="¡Ahí nos vemos cocodrilo! "
LOCAL_PHRASE[47]="¡Como dijo el gran queso al rato regreso! "
LOCAL_PHRASE[48]="¡Si tienen lavadora ahí lavemos! "
LOCAL_PHRASE[49]="¡Me multiplico por Serapio Rendon! "
LOCAL_PHRASE[50]="¡Ahí la vemos de Niu Yor!"

# From https://www.taringa.net/posts/humor/10591773/Frases-Nacas-corrientes-o-populares.html

# =============================================================================
# Functions
# =============================================================================

choosePhrase()
{
    rand=$[ $RANDOM % 50 ]
    LOCAL_PHRASE=${LOCAL_PHRASE[$rand]}
}

# =============================================================================
# Main
# =============================================================================

LogPid.sh $SPHERO_PID $SPHERO_NAME

choosePhrase
AmikooVoice.sh spanish "$LOCAL_PHRASE"

# End of File
