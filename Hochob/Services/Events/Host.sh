#!/bin/bash

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export HOST_PID=$$

LOCAL_LANGUAGE="$1"
LOCAL_INSTITUTION_NAME="$2"
LOCAL_EVENT_NAME="$3"

LOCAL_GREETING_ENGLISH[0]="Hi There,"
LOCAL_GREETING_ENGLISH[1]="Good morning,"
LOCAL_GREETING_ENGLISH[2]="Hurray,"
LOCAL_GREETING_ENGLISH[3]="Wait,"
LOCAL_GREETING_ENGLISH[4]="Hey,"
LOCAL_GREETING_ENGLISH[5]="Hello There,"
LOCAL_GREETING_ENGLISH[6]="One minute please, "
LOCAL_GREETING_ENGLISH[7]="What's up, "

LOCAL_GREETING_SPANISH[0]="Hola Hola,"
LOCAL_GREETING_SPANISH[1]="Buenos dias,"
LOCAL_GREETING_SPANISH[2]="Hola Cacerola,"
LOCAL_GREETING_SPANISH[3]="Espera,"
LOCAL_GREETING_SPANISH[4]="Hey,"
LOCAL_GREETING_SPANISH[5]="Hola hola,"
LOCAL_GREETING_SPANISH[6]="Un minuto por favor,"
LOCAL_GREETING_SPANISH[7]="Que onda,"

LOCAL_REMINDER_ENGLISH[0]="Remember we have today our"
LOCAL_REMINDER_ENGLISH[1]="Do not forget about"
LOCAL_REMINDER_ENGLISH[2]="Today is the big day!,"
LOCAL_REMINDER_ENGLISH[3]="It is finally here!,"
LOCAL_REMINDER_ENGLISH[4]="Finally with us!,"
LOCAL_REMINDER_ENGLISH[5]="The big day has just arrived!,"
LOCAL_REMINDER_ENGLISH[6]="Let's not say anything else, the great event,"

LOCAL_REMINDER_SPANISH[0]="Recuerda hoy tenemos nuestro evento,"
LOCAL_REMINDER_SPANISH[1]="No olvides acerca de"
LOCAL_REMINDER_SPANISH[2]="Hoy es el gran dia!,"
LOCAL_REMINDER_SPANISH[3]="Finalmente aqui!,"
LOCAL_REMINDER_SPANISH[4]="Finalmente con nosotros!,"
LOCAL_REMINDER_SPANISH[5]="El gran dia ha llegado!,"
LOCAL_REMINDER_SPANISH[6]="No se diga mas, el gran evento,"

# =============================================================================
# Functions
# =============================================================================

chooseGreeting()
{
    LANGUAGE=$1
    rand=$[ $RANDOM % 7 ]
    if [ "$LANGUAGE" = "english" ]; then
        LOCAL_GREETING=${LOCAL_GREETING_ENGLISH[$rand]}
    else
        LOCAL_GREETING=${LOCAL_GREETING_SPANISH[$rand]}
    fi
}

chooseReminder()
{
    LANGUAGE=$1
    rand=$[ $RANDOM % 6 ]
    if [ "$LANGUAGE" = "english" ]; then
        LOCAL_REMINDER=${LOCAL_REMINDER_ENGLISH[$rand]}
    else
        LOCAL_REMINDER=${LOCAL_REMINDER_SPANISH[$rand]}
    fi
}

# =============================================================================
# Main
# =============================================================================

chooseGreeting $LOCAL_LANGUAGE
chooseReminder $LOCAL_LANGUAGE

LOCAL_MESSAGE="${LOCAL_GREETING} ${LOCAL_INSTITUTION_NAME}. \
               ${LOCAL_REMINDER} ${LOCAL_EVENT_NAME}"

if [ "$LANGUAGE" = "english" ]; then
    Robot.sh lupe/say "${LOCAL_MESSAGE}"
else
    Robot.sh lupe/decir "${LOCAL_MESSAGE}"
fi

# End of File
