# Main x86

```sh
user@workstation:~$ sudo apt-get install nodejs-legacy
user@workstation:~$ sudo apt-get install npm
user@workstation:~$ sudo npm install mqtt --save
user@workstation:~$ sudo npm install espeak --save
```

```sh
user@workstation:~# git clone https://github.com/TheIoTLearningInitiative/CodeLabs.git
Cloning into 'CodeLabs'...
remote: Counting objects: 14879, done.
remote: Compressing objects: 100% (186/186), done.
remote: Total 14879 (delta 114), reused 0 (delta 0), pack-reused 14682
Receiving objects: 100% (14879/14879), 10.18 MiB | 1.89 MiB/s, done.
Resolving deltas: 100% (8539/8539), done.
Checking connectivity... done.
user@workstation:~# 
```

```sh
user@workstation:~/CodeLabs/Hochob/LupeRobot$ ls
amikoo.js  command.js  ispeak.js  Learning  Sandbox  Show
user@workstation:~/CodeLabs/Hochob/LupeRobot$ 
```

```sh
user@workstation:~$ mosquitto_pub -h iot.eclipse.org -p 1883 -t lupe/say -m "yes it is"
user@workstation:~$ mosquitto_pub -h iot.eclipse.org -p 1883 -t lupe/leftup -m "yes it is"
user@workstation:~$ mosquitto_pub -h iot.eclipse.org -p 1883 -t lupe/leftdown -m "yes it is"
```

```sh
user@workstation:~/CodeLabs/Hochob/LupeRobot$ nodejs amikoo.js 
Sending state closed
Received message lupe/say yes it is
<Buffer 79 65 73 20 69 74 20 69 73>

Received message lupe/leftup yes it is
Left Up
Left Up

Received message lupe/leftdown yes it is
Left Down
Left Down
```