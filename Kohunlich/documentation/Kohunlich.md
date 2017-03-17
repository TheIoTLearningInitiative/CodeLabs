# Kohunlich

> Kohunlich (X-làabch'e'en in Modern Mayan) is a large archaeological site of the pre-Columbian Maya civilization, located on the Yucatán Peninsula in the state of Quintana Roo about 25 km east of the Rio Bec region, and about 65 km west of Chetumal on Highway 186, and 9 km south of the road. The Spanish name does not actually derive from Mayan but from the English Cohune Ridge where cohune palm grew. [Wikipedia](https://en.wikipedia.org/wiki/Kohunlich)


```sh
root@edison:~# ps
  PID USER       VSZ STAT COMMAND
    1 root      4456 S    {systemd} /sbin/init
    2 root         0 SW   [kthreadd]
    3 root         0 SW   [ksoftirqd/0]
    5 root         0 SW<  [kworker/0:0H]
    6 root         0 SW   [kworker/u4:0]
    7 root         0 SW   [migration/0]
    8 root         0 SW   [rcu_preempt]
    9 root         0 SW   [rcu_bh]
   10 root         0 SW   [rcu_sched]
   11 root         0 SW   [watchdog/0]
   12 root         0 SW   [watchdog/1]
   13 root         0 SW   [migration/1]
   14 root         0 SW   [ksoftirqd/1]
   16 root         0 SW<  [kworker/1:0H]
   17 root         0 SW<  [khelper]
   18 root         0 SW   [kdevtmpfs]
   19 root         0 SW<  [netns]
   20 root         0 SW<  [writeback]
   21 root         0 SW<  [bioset]
   22 root         0 SW<  [crypto]
   23 root         0 SW<  [kblockd]
   24 root         0 SW   [khubd]
   25 root         0 SW   [kworker/0:1]
   26 root         0 SW<  [devfreq_wq]
   27 root         0 SW   [kworker/1:1]
   28 root         0 SW<  [cfg80211]
   29 root         0 SW   [irq/47-intel_ps]
   30 root         0 SW<  [rpciod]
   31 root         0 SW   [irq/50-adc]
   44 root         0 SW   [khungtaskd]
   45 root         0 SW   [kswapd0]
   46 root         0 SW   [fsnotify_mark]
   47 root         0 SW<  [nfsiod]
   60 root         0 SW<  [kthrotld]
   61 root         0 SW<  [hsu_bt_port_p]
   62 root         0 SW<  [hsu_uart1_port_]
   63 root         0 SW<  [hsu_uart2_port_]
   64 root         0 SW   [kworker/0:2]
   65 root         0 SW   [irq/271-1-0020]
   66 root         0 SW   [irq/52-bcove_th]
   67 root         0 SW   [irq/1-soc_thrm]
   68 root         0 SW   [kworker/u4:1]
   69 root         0 SW   [mmcqd/0]
   70 root         0 SW   [mmcqd/0boot0]
   71 root         0 SW   [mmcqd/0boot1]
   72 root         0 SW   [mmcqd/0rpmb]
   73 root         0 SW<  [kworker/0:1H]
   76 root         0 SW<  [sst_mad_wq]
   77 root         0 SW<  [sst_post_msg_wq]
   78 root         0 SW   [irq/24-intel_ss]
   79 root         0 SW<  [krfcommd]
   80 root         0 SW<  [deferwq]
   81 root         0 SW<  [intel_mid_ssp_s]
   82 root         0 SW<  [0000:00:07.0]
   83 root         0 SW<  [spi_poll_wr]
   84 root         0 SW<  [intel_mid_ssp_s]
   85 root         0 SW<  [0000:00:07.1]
   86 root         0 SW<  [spi_poll_wr]
   87 root         0 SW<  [intel_mid_ssp_s]
   88 root         0 SW<  [0000:00:07.2]
   89 root         0 SW<  [spi_poll_wr]
   90 root         0 SW   [irq/27-pmic_ccs]
   91 root         0 SW   [kworker/1:2]
   92 root         0 SW   [irq/30-msic_pow]
   93 root         0 SW   [jbd2/mmcblk0p8-]
   94 root         0 SW<  [ext4-dio-unwrit]
  103 root         0 SW<  [kworker/1:1H]
  116 root      8680 S    /lib/systemd/systemd-journald
  125 root         0 SW   [wl_event_handle]
  126 root         0 SW   [dhd_watchdog_th]
  127 root         0 SW   [dhd_dpc]
  131 root         0 SW   [file-storage]
  132 root         0 SW   [otg]
  142 root      3120 S    /lib/systemd/systemd-udevd
  164 root         0 SW<  [ext4-dio-unwrit]
  166 systemd- 12092 S    /lib/systemd/systemd-timesyncd
  187 root      1728 S    /usr/bin/pwr_button_handler /bin/systemctl start bli
  189 root      6464 S    /usr/sbin/wpa_supplicant -u -c/etc/wpa_supplicant/wp
  193 root      5128 S    /usr/sbin/ofonod -n
  198 root      3228 S    /usr/sbin/bluetooth_rfkill_event
  202 root      3128 S    {launcher.sh} /bin/sh /opt/edison/launcher.sh
  203 root      1920 S    /opt/edison/clloader --escape --binary --zmodem --di
  205 root      1728 S    /opt/edison/sketch_reset -i 207 -o 215 -s /opt/ediso
  214 root      2836 S    /lib/systemd/systemd-logind
  215 messageb  2900 S    /usr/bin/dbus-daemon --system --address=systemd: --n
  216 root      2648 S    /lib/systemd/systemd-networkd
  217 root      2364 S    /usr/bin/watchdog-sample 30
  243 root      4684 S    /usr/lib/bluez5/bluetooth/bluetoothd -E
  247 root      3120 S    /bin/login --
  248 root      2128 S    /sbin/agetty --noclear tty1 linux
  250 root         0 SW   [jbd2/mmcblk0p10]
  251 root         0 SW<  [ext4-dio-unwrit]
  277 root      2116 S    /lib/systemd/systemd-resolved
  281 root      4536 S    /usr/sbin/mosquitto -c /etc/mosquitto/mosquitto.conf
  284 nobody    2616 S    /usr/sbin/mdnsd
  287 pulse     109m S <  /usr/bin/pulseaudio --system --resample-method=src-s
  288 root      1924 S    /usr/sbin/wpa_cli -a /etc/wpa_supplicant/wpa_cli-act
  290 root      2372 S    /lib/systemd/systemd-hostnamed
  291 root      3040 S    /bin/su root -c node /usr/lib/edison_config_tools/ed
  296 root      3132 S    {xdk-daemon} /bin/sh /opt/xdk-daemon/xdk-daemon
  300 root     77012 S    /usr/bin/node /opt/xdk-daemon/main.js
  305 root      3636 S    /lib/systemd/systemd --user
  306 root      5276 S    (sd-pam)
  307 root      1924 S    /usr/sbin/wpa_cli -a /etc/wpa_supplicant/wpa_cli-act
  310 root     80208 S    node /usr/lib/edison_config_tools/edison-config-serv
  340 root         0 SW<  [loop0]
  353 root     19896 S    /usr/bin/redis-server /etc/redis/redis.conf
  356 root      111m S    /usr/bin/node /opt/xdk-daemon/current/appDaemon.js
  379 root      2652 S    udhcpc -i wlan0 -p /var/run/udhcpc-wlan0.pid -S
  395 root      3220 S    -sh
  501 root         0 SW   [kworker/0:0]
  553 root      2892 R    ps
root@edison:~#                    
```

```sh
root@edison:~# systemctl disable bluetooth-rfkill-event.service
root@edison:~# systemctl disable bluetooth.service
root@edison:~# systemctl disable 
root@edison:~# systemctl disable 
root@edison:~# systemctl disable 
root@edison:~# systemctl disable 
root@edison:~# systemctl disable 
root@edison:~# systemctl disable 
root@edison:~# systemctl disable 
root@edison:~# systemctl disable 
root@edison:~# systemctl disable 
root@edison:~# systemctl disable 
root@edison:~# systemctl disable 
```