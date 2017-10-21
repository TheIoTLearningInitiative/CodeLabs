#!/bin/bash

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export SURVEY_PID=$$

LOCAL_DEVICE="$1"
LOCAL_LANGUAGE="$2"
LOCAL_CHARACTER="$3"
LOCAL_CORRECT="$4"

LOCAL_CORRECT_ANSWER_ENGLISH[0]="That’s right."
LOCAL_CORRECT_ANSWER_ENGLISH[1]="That’s spot on."
LOCAL_CORRECT_ANSWER_ENGLISH[2]="You’ve hit the nail on the head."
LOCAL_CORRECT_ANSWER_ENGLISH[3]="I’m afraid you’re right."
LOCAL_CORRECT_ANSWER_ENGLISH[4]="You are correct."

LOCAL_WRONG_ANSWER_ENGLISH[0]="I’m afraid that’s not quite right."
LOCAL_WRONG_ANSWER_ENGLISH[1]="I’m afraid you’re mistaken."
LOCAL_WRONG_ANSWER_ENGLISH[2]="In my humble opinion, there is something bad."
LOCAL_WRONG_ANSWER_ENGLISH[3]="Oh oh, not this time."
LOCAL_WRONG_ANSWER_ENGLISH[4]="No, no, no."

LOCAL_CORRECT_ANSWER_SPANISH[0]="Es correcto"
LOCAL_CORRECT_ANSWER_SPANISH[1]="Sí, claro"
LOCAL_CORRECT_ANSWER_SPANISH[2]="Es justo la respuesta"
LOCAL_CORRECT_ANSWER_SPANISH[3]="Creo que estás en lo correcto"
LOCAL_CORRECT_ANSWER_SPANISH[4]="Totalmente de acuerdo"

LOCAL_WRONG_ANSWER_SPANISH[0]="Me temo que no es del todo correcto"
LOCAL_WRONG_ANSWER_SPANISH[1]="Me temo que estás equivocado"
LOCAL_WRONG_ANSWER_SPANISH[2]="En mi humilde opinión, hay algo mal"
LOCAL_WRONG_ANSWER_SPANISH[3]="Oh oh, no por esta ocasión"
LOCAL_WRONG_ANSWER_SPANISH[4]="No, no, no"

# =============================================================================
# Functions
# =============================================================================

chooseAnswerCorrect()
{
    LANGUAGE=$1
    rand=$[ $RANDOM % 5 ]
    if [ "$LANGUAGE" = "english" ]; then
        LOCAL_CORRECT_ANSWER=${LOCAL_CORRECT_ANSWER_ENGLISH[$rand]}
    else
        LOCAL_CORRECT_ANSWER=${LOCAL_CORRECT_ANSWER_SPANISH[$rand]}
    fi
}

chooseWrongCorrect()
{
    LANGUAGE=$1
    rand=$[ $RANDOM % 5 ]
    if [ "$LANGUAGE" = "english" ]; then
        LOCAL_WRONG_ANSWER=${LOCAL_WRONG_ANSWER_ENGLISH[$rand]}
    else
        LOCAL_WRONG_ANSWER=${LOCAL_WRONG_ANSWER_SPANISH[$rand]}
    fi
}


# =============================================================================
# Main
# =============================================================================

LOCAL_OPTION=`$HOCHOB_SERVER_SERVICES_KEYPAD/HandlerYesNo.sh virtual`

if [ "$LOCAL_OPTION" = "$LOCAL_CORRECT" ]; then

    chooseAnswerCorrect $LOCAL_LANGUAGE
    if [ "$LOCAL_LANGUAGE" = "english" ]; then
        StreamText.sh $LOCAL_DEVICE $LOCAL_LANGUAGE $LOCAL_CHARACTER \
                    "${LOCAL_CORRECT_ANSWER}"
    else
        StreamText.sh $LOCAL_DEVICE $LOCAL_LANGUAGE $LOCAL_CHARACTER \
                    "${LOCAL_CORRECT_ANSWER}"
    fi

else

    chooseWrongCorrect "$LOCAL_LANGUAGE"
    if [ "$LOCAL_LANGUAGE" = "english" ]; then
        StreamText.sh $LOCAL_DEVICE $LOCAL_LANGUAGE $LOCAL_CHARACTER \
                    "${LOCAL_WRONG_ANSWER}. the correct answer is ${LOCAL_CORRECT}"
    else
        StreamText.sh $LOCAL_DEVICE $LOCAL_LANGUAGE $LOCAL_CHARACTER \
                    "${LOCAL_WRONG_ANSWER}. La respuesta correcta es ${LOCAL_CORRECT}"
    fi

fi

# End of File
