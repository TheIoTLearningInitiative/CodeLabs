# Server

- __Codename__: Hochob
- NUC 5i5MYHE
- Linux Lubuntu Based
- Components
  - Media
  - Media Source
  - Services
  - Applications

# Linux Based Operating System

> Lubuntu is a fast, energy saving and lightweight variant of Ubuntu using LXDE. It is popular with PC and laptop users running on low-spec hardware. [Homepage](http://lubuntu.me/)

# Github Respository


```
user@server:~$ git clone https://github.com/TheIoTLearningInitiative/CodeLabs.git
Cloning into 'CodeLabs'...
remote: Counting objects: 29939, done.
remote: Compressing objects: 100% (31/31), done.
remote: Total 29939 (delta 17), reused 10 (delta 6), pack-reused 29901
Receiving objects: 100% (29939/29939), 13.50 MiB | 14.88 MiB/s, done.
Resolving deltas: 100% (18326/18326), done.
xe1gyq@server:~$ clear
```

```sh
user@server:~$ cd CodeLabs/
user@server:~/CodeLabs$ ls
Caracol        DosPilas       Hochob        LaRutaPuuc  Qumarkaj   SUMMARY.md  Uxmal
Chacmultun     Dzibilchaltun  Hormiguero    LICENSE     README.md  Tabasqueno  Xcambo
Chicanna       Edzna          Kaminaljuyu   Mayapan     Sandbox    tbd.md      Xpuhil
ChichenItza    EkBalam        Kanki         MixcoViejo  scripts    Tikal       Xunantunich
Coba           Food           KinichKaKMoo  Muyil       Seibal     Tools
Documentation  Gods           Kohunlich     Palenque    setup.sh   Tulum
xe1gyq@server:~/CodeLabs$ git checkout -b Hochob origin/Hochob
Branch Hochob set up to track remote branch Hochob from origin.
Switched to a new branch 'Hochob'
user@server:~/CodeLabs$ cd Hochob/
user@server:~/CodeLabs/Hochob$ ls
Applications  Demo.sh  documentation  Main.sh  Sandbox  Services  Setup
user@server:~/CodeLabs/Hochob$  
```

```sh
user@server:~/CodeLabs/Hochob$ cd Setup/
user@server:~/CodeLabs/Hochob/Setup$ ls
HochobServerMedia.sh  HochobServerMediaSource.sh  Packages.sh
user@server:~/CodeLabs/Hochob/Setup$ 
```

