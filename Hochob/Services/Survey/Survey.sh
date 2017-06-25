#!/bin/sh

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
LOCAL_CORRECT_ANSWER_ENGLISH[2]="You’ve hit the nail on the head. "
LOCAL_CORRECT_ANSWER_ENGLISH[3]="I’m afraid you’re right."
LOCAL_CORRECT_ANSWER_ENGLISH[4]="You are correct."

LOCAL_WRONG_ANSWER_ENGLISH[0]="I’m afraid that’s not quite right."
LOCAL_WRONG_ANSWER_ENGLISH[1]="I’m afraid you’re mistaken."
LOCAL_WRONG_ANSWER_ENGLISH[2]="In my humble opinion, there is another answer"
LOCAL_WRONG_ANSWER_ENGLISH[3]="Not this time."
LOCAL_WRONG_ANSWER_ENGLISH[4]="No, no, no."

LOCAL_CORRECT_ANSWER_SPANISH[0]="Zara"
LOCAL_CORRECT_ANSWER_SPANISH[1]="Qadir"
LOCAL_CORRECT_ANSWER_SPANISH[2]="Mahnaz"
LOCAL_CORRECT_ANSWER_SPANISH[3]="Ayan"
LOCAL_CORRECT_ANSWER_SPANISH[4]="Daisy"

LOCAL_WRONG_ANSWER_SPANISH[0]="Zara"
LOCAL_WRONG_ANSWER_SPANISH[1]="Qadir"
LOCAL_WRONG_ANSWER_SPANISH[2]="Mahnaz"
LOCAL_WRONG_ANSWER_SPANISH[3]="Ayan"
LOCAL_WRONG_ANSWER_SPANISH[4]="Daisy"

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
        LOCAL_CORRECT_ANSWER=${LOCAL_WRONG_ANSWER_ENGLISH[$rand]}
    else
        LOCAL_CORRECT_ANSWER=${LOCAL_WRONG_ANSWER_SPANISH[$rand]}
    fi
}


# =============================================================================
# Main
# =============================================================================

LOCAL_OPTION=`KeypadOption.sh`

if [ "$LOCAL_OPTION" = "$LOCAL_CORRECT" ]; then

    chooseAnswerCorrect "english"
    if [ "$LOCAL_LANGUAGE" = "english" ]; then
        StreamAudio.sh $LOCAL_DEVICE $LOCAL_LANGUAGE $LOCAL_CHARACTER \
                    "Awesome"
    else
        StreamAudio.sh $LOCAL_DEVICE $LOCAL_LANGUAGE $LOCAL_CHARACTER \
                    "Super"
    fi

else

    chooseAnswerCorrect "english"
    if [ "$LOCAL_LANGUAGE" = "english" ]; then
        StreamAudio.sh $LOCAL_DEVICE $LOCAL_LANGUAGE $LOCAL_CHARACTER \
                    "Keep up the great work, the correct answer is ${LOCAL_CORRECT}"
    else
        StreamAudio.sh $LOCAL_DEVICE $LOCAL_LANGUAGE $LOCAL_CHARACTER \
                    "Sigue participando, la respuesta correcta es ${LOCAL_CORRECT}"
    fi

fi




# End of File
