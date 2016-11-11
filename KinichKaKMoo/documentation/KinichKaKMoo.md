# Kinich KaK Moo

```sh
root@edison:~# opkg update
root@edison:~# opkg install mraa
root@edison:~# npm install mraa
root@edison:~# npm install galileo-io
root@edison:~# npm install -g node-red
root@edison:~# mkdir .node-red
root@edison:~# cd .node-red/
root@edison:~/.node-red# npm install node-red-contrib-gpio
root@edison:~/.node-red# npm install node-red-node-intel-gpio
root@edison:~/.node-red# npm install node-red-contrib-grove-edison
root@edison:~/.node-red# npm install node-red-node-upm
root@edison:~/.node-red# npm install node-red-contrib-upm
root@edison:~/.node-red# npm install node-red-node-watson
root@edison:~/.node-red# npm install node-red-contrib-play-audio
root@edison:~/.node-red# npm install node-red-bluemix-nodes
root@edison:~/.node-red# npm install node-red-contrib-telegrambot
root@edison:~/.node-red# npm install node-telegram-bot-api
```

```sh
[{"id":"d80f67c6.08b8e8","type":"inject","z":"4de7f931.56eb28","name":"","topic":"","payload":"hello world","payloadType":"string","repeat":"","crontab":"","once":false,"x":110.5,"y":88,"wires":[["42940cf3.2c0a64","cdd7047.02819f8"]]},{"id":"42940cf3.2c0a64","type":"debug","z":"4de7f931.56eb28","name":"","active":false,"console":"false","complete":"false","x":358.5,"y":38,"wires":[]},{"id":"cdd7047.02819f8","type":"watson-text-to-speech","z":"4de7f931.56eb28","name":"","lang":"english","voice":"en-US_MichaelVoice","format":"audio/wav","x":298.5,"y":175,"wires":[["44d12193.412d3","a208d7a1.66e858"]]},{"id":"44d12193.412d3","type":"debug","z":"4de7f931.56eb28","name":"","active":false,"console":"false","complete":"speech","x":536.5,"y":110,"wires":[]},{"id":"9af43c00.e81b5","type":"play audio","z":"4de7f931.56eb28","name":"","x":665,"y":186,"wires":[]},{"id":"a208d7a1.66e858","type":"change","z":"4de7f931.56eb28","name":"set speech as payload","rules":[{"t":"set","p":"payload","to":"speech","tot":"msg"},{"t":"delete","p":"speech"}],"action":"","property":"","from":"","to":"","reg":false,"x":467,"y":254,"wires":[["9af43c00.e81b5"]]},{"id":"69389c1.1bdfe64","type":"twitter in","z":"4de7f931.56eb28","twitter":"","tags":"#readtweet","user":"false","name":"","topic":"tweets","x":65,"y":426,"wires":[["9871dd28.633ae"]]},{"id":"9871dd28.633ae","type":"change","z":"4de7f931.56eb28","name":"clean tweet","rules":[{"t":"change","p":"payload","from":"#readtweet","to":"","re":false}],"action":"","property":"","from":"","to":"","reg":false,"x":181,"y":302,"wires":[["cdd7047.02819f8","6fd4a43f.cdaaac"]]},{"id":"6fd4a43f.cdaaac","type":"debug","z":"4de7f931.56eb28","name":"","active":false,"console":"false","complete":"false","x":425,"y":360,"wires":[]}]
```