# VerneMQ

> VerneMQ is first and foremost a MQTT publish/subscribe message broker which implements the OASIS industry standard MQTT protocol. But VerneMQ is also built to take messaging and IoT applications to the next level by providing a unique set of features related to scalability, reliability and high-performance as well as operational simplicity. [Homepage](https://vernemq.com/)

Download [Ubuntu Xenial 1.0.0 Binary Package](https://bintray.com/artifact/download/erlio/vernemq/deb/xenial/vernemq_1.0.0-1_amd64.deb)


```sh
hochob@server:~/Downloads$ sudo dpkg -i vernemq_1.0.0-1_amd64.deb
Selecting previously unselected package vernemq.
(Reading database ... 165480 files and directories currently installed.)
Preparing to unpack vernemq_1.0.0-1_amd64.deb ...
Unpacking vernemq (1.0.0-1) ...
Setting up vernemq (1.0.0-1) ...
Adding group `vernemq' (GID 127) ...
Done.
Adding system user `vernemq' (UID 118) ...
Adding new user `vernemq' (UID 118) with group `vernemq' ...
Not creating home directory `/var/lib/vernemq'.
Processing triggers for systemd (231-9ubuntu3) ...
Processing triggers for ureadahead (0.100.0-19) ...
ureadahead will be reprofiled on next reboot
```

```sh
hochob@server:~/Downloads$ dpkg -s vernemq | grep Status
Status: install ok installed
hochob@server:~/Downloads$ 
```

```sh
hochob@server:~/Downloads$ service vernemq start
hochob@server:~/Downloads$ 
```

```sh
hochob@server:~/Downloads$ whereis vernemq
vernemq: /usr/sbin/vernemq /usr/lib/vernemq /etc/vernemq /usr/share/vernemq
hochob@server:~/Downloads$ 
```

```sh
hochob@server:~$ sudo nano /etc/vernemq/vernemq.conf
```