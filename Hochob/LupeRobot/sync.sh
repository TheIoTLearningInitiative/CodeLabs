#!/bin/sh

echo "..." | espeak -v es-la -a 200
cvlc --no-video-title-show --fullscreen /home/hochob/Selfies/latest.mp4 &
((sleep 4.5) && echo "..." | espeak -v es-la -a 200) && echo "Hola a todos, bienvenidos a Intel" | espeak -v es-la -a 200
cvlc --no-video-title-show --fullscreen /home/hochob/Selfies/latest.mp4 &
(sleep 4.5) && echo "Como pueden ver, por lo que traigo en el pecho" | espeak -v es-la -a 200
cvlc --no-video-title-show --fullscreen /home/hochob/Selfies/latest.mp4 &
(sleep 4.5) && echo "Yo funciono con la plataforma Intel Édison, que es una de las tantas cosas que hacemos en Intel" | espeak -v es-la -a 200
cvlc --no-video-title-show --fullscreen /home/hochob/Selfies/latest.mp4 &
(sleep 4.5) && echo "Espero que les guste el recorrido tanto como a mí" | espeak -v es-la -a 200
cvlc --no-video-title-show --fullscreen /home/hochob/Selfies/latest.mp4 &
(sleep 4.5) && echo "Por lo pronto, le cederé la palabra a mis compañeros humanos" | espeak -v es-la -a 200
cvlc --no-video-title-show --fullscreen /home/hochob/Selfies/latest.mp4 &
(sleep 4.5) && echo "No, gracias a ti" | espeak -v es-la -a 200
pkill vlc
