#!/bin/sh

pacmd "set-default-sink 0"

sleep 2

echo "hola" | espeak -v es-la -a 200
echo "..." | espeak -v es-la -a 200
cvlc --no-video-title-show --fullscreen /home/hochob/LupeRobot/Parte1Museo.mp4 &
((sleep 2.4) && echo "..." | espeak -v es-la -a 200) && echo "Hola a todos, bienvenidos a Intel" | espeak -v es-la -a 200
cvlc --no-video-title-show --fullscreen /home/hochob/LupeRobot/Parte2Museo.mp4 &
(sleep 6.4) && echo "Como pueden ver, por lo que traigo en el pecho" | espeak -v es-la -a 200
cvlc --no-video-title-show --fullscreen /home/hochob/LupeRobot/Parte3Museo.mp4 &
(sleep 3.4) && echo "Yo funciono con la plataforma Intel Édison, que es una de las tantas cosas que hacemos en Intel" | espeak -v es-la -a 200
cvlc --no-video-title-show --fullscreen /home/hochob/LupeRobot/Parte4Museo.mp4 &
(sleep 2.4) && echo "Espero que les guste el recorrido tanto como a mí" | espeak -v es-la -a 200
cvlc --no-video-title-show --fullscreen /home/hochob/LupeRobot/Parte5Museo.mp4 &
(sleep 32.4) && echo "Por lo pronto, le cederé la palabra a mis compañeros humanos" | espeak -v es-la -a 200
cvlc --no-video-title-show --fullscreen /home/hochob/LupeRobot/Parte6Museo.mp4 &
(sleep 4.4) && echo "No, gracias a ti" | espeak -v es-la -a 200
pkill vlc

# End Of File
