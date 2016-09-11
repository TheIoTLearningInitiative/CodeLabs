import os
import commands
import time

if __name__ == "__main__":

    path = os.path.dirname(os.path.realpath(__file__))
    voicerss = path + '/VoiceRss.sh'
    language = 'en-us'
    while True:
        print " Type any text to make use of Text to Speech infraestructure"
        message = raw_input(" Type 'e' for exit: ")
        if message.lower() == 'e':
            break;
        else:
            command = voicerss + " " + language + " " + "\"" + message + "\""
            print command
            commands.getstatusoutput(command)
        time.sleep(1)
