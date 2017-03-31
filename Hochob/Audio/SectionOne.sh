killall -9 python stream2chromecast.py

cd /home/hochob/CodeLabs/Hochob/Audio/stream2chromecast
python stream2chromecast.py -devicename "Juum" /home/hochob/Audio/SectionOne01.mp3
sleep 10
python stream2chromecast.py -devicename "Juum" /home/hochob/Audio/SectionOne02.mp3
sleep 5
python stream2chromecast.py -devicename "Juum" /home/hochob/Audio/SectionOne03.mp3
sleep 3
python stream2chromecast.py -devicename "Juum" /home/hochob/Audio/SectionOne04.mp3

