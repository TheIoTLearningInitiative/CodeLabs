# Core

```sh
git clone
```

```sh
sudo apt-get -y upgrade
```

```sh
user@ubilinux:~/CodeLabs/ChichenItza$ sudo apt-get install curl mpg123
[sudo] password for user: 
Reading package lists... Done
Building dependency tree       
Reading state information... Done
The following extra packages will be installed:
  libmpg123-0
Suggested packages:
  jackd nas oss-compat oss4-base pulseaudio
The following NEW packages will be installed:
  curl libmpg123-0 mpg123
0 upgraded, 3 newly installed, 0 to remove and 8 not upgraded.
Need to get 498 kB of archives.
After this operation, 1,064 kB of additional disk space will be used.
Do you want to continue? [Y/n] Y
Get:1 http://security.debian.org/ jessie/updates/main curl amd64 7.38.0-4+deb8u5 [200 kB]
Get:2 http://httpredir.debian.org/debian/ jessie/main libmpg123-0 amd64 1.20.1-2 [133 kB]
Get:3 http://httpredir.debian.org/debian/ jessie/main mpg123 amd64 1.20.1-2 [165 kB]
Fetched 498 kB in 1s (379 kB/s)                            
Selecting previously unselected package libmpg123-0:amd64.
(Reading database ... 89152 files and directories currently installed.)
Preparing to unpack .../libmpg123-0_1.20.1-2_amd64.deb ...
Unpacking libmpg123-0:amd64 (1.20.1-2) ...
Selecting previously unselected package curl.
Preparing to unpack .../curl_7.38.0-4+deb8u5_amd64.deb ...
Unpacking curl (7.38.0-4+deb8u5) ...
Selecting previously unselected package mpg123.
Preparing to unpack .../mpg123_1.20.1-2_amd64.deb ...
Unpacking mpg123 (1.20.1-2) ...
Processing triggers for man-db (2.7.0.2-5) ...
Processing triggers for mime-support (3.58) ...
Setting up libmpg123-0:amd64 (1.20.1-2) ...
Setting up curl (7.38.0-4+deb8u5) ...
Setting up mpg123 (1.20.1-2) ...
update-alternatives: using /usr/bin/mpg123.bin to provide /usr/bin/mpg123 (mpg123) in auto mode
update-alternatives: using /usr/bin/mpg123.bin to provide /usr/bin/mp3-decoder (mp3-decoder) in auto mode
Processing triggers for libc-bin (2.19-18+deb8u6) ...
user@ubilinux:~/CodeLabs/ChichenItza$ 
```

```sh
user@ubilinux:~$ git clone https://github.com/TheIoTLearningInitiative/CodeLabs.git
Cloning into 'CodeLabs'...
remote: Counting objects: 5561, done.
remote: Compressing objects: 100% (34/34), done.
remote: Total 5561 (delta 15), reused 0 (delta 0), pack-reused 5524
Receiving objects: 100% (5561/5561), 9.22 MiB | 1013.00 KiB/s, done.
Resolving deltas: 100% (3011/3011), done.
Checking connectivity... done.
user@ubilinux:~$ 
```

```sh
user@ubilinux:~$ cd CodeLabs/ChichenItza/
user@ubilinux:~/CodeLabs/ChichenItza$ ls
documentation  irecognize.py  isay.py  isound.py  iwit.py  requirements.manual  requirements.opkg  requirements.pip  setup.sh  test.sh  voicerss.sh
user@ubilinux:~/CodeLabs/ChichenItza$ 
```

```sh
user@ubilinux:~/CodeLabs/ChichenItza$ mkdir configuration
user@ubilinux:~/CodeLabs/ChichenItza$ nano configuration/voicerss.ak
user@ubilinux:~/CodeLabs/ChichenItza$ nano configuration/voicerss.mk
user@ubilinux:~/CodeLabs/ChichenItza$ nano configuration/credentials.config
```

```sh
```