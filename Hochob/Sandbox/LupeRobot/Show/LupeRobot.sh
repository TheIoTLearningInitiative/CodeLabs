#!/bin/sh

#pacmd "set-default-sink 1"

sleep 1

sh /home/hochob/CodeLabs/Hochob/LupeRobot/Show/LupeRobot01.sh &
(sleep 8.5) && echo "Perdon! Lo se!, Es que me emociono" | espeak -v es-la -a 200
(sleep 3.0) && echo "Por supuesto" | espeak -v es-la -a 200
(sleep 38.5) && echo "En mi caso, mi cerebro esta esta ubicado en mi pecho, com pueden ver aqui!" | espeak -v es-la -a 200
(sleep 25.3) && echo "Yo funciono con la plataforma Intel Edison" | espeak -v es-la -a 200
sleep 75

pkill vlc

# End Of File
