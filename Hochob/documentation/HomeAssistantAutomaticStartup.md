# Home Assistant: Automatic Startup

```sh
hochob@server:~$ ps -p 1 -o comm=
systemd
hochob@server:~$ 
```

```sh
hochob@server:~$ cd /lib/systemd/system/
hochob@server:/lib/systemd/system$ ls
accounts-daemon.service                 dbus.socket                        ModemManager.service                rc.service                   stop-bootlogd-single.service           systemd-resolved.service.d
acpid.path                              debug-shell.service                module-init-tools.service           rcS.service                  suspend.target                         systemd-rfkill.service
acpid.service                           default.target                     motd.service                        reboot.service               swap.target                            systemd-rfkill.socket
acpid.socket                            dev-hugepages.mount                mountall-bootclean.service          reboot.target                sys-fs-fuse-connections.mount          systemd-suspend.service
alsa-restore.service                    dev-mqueue.mount                   mountall.service                    reboot.target.wants          sysinit.target                         systemd-sysctl.service
alsa-state.service                      emergency.service                  mountdevsubfs.service               remote-fs-pre.target         sysinit.target.wants                   systemd-timedated.service
alsa-utils.service                      emergency.target                   mountkernfs.service                 remote-fs.target             sys-kernel-config.mount                systemd-timesyncd.service
anacron-resume.service                  exit.target                        mountnfs-bootclean.service          rescue.service               sys-kernel-debug.mount                 systemd-timesyncd.service.d
anacron.service                         final.target                       mountnfs.service                    rescue.target                syslog.socket                          systemd-tmpfiles-clean.service
apparmor.service                        friendly-recovery.service          multi-user.target                   rescue.target.wants          systemd-ask-password-console.path      systemd-tmpfiles-clean.timer
apport-forward@.service                 fuse.service                       multi-user.target.wants             resolvconf.service           systemd-ask-password-console.service   systemd-tmpfiles-setup-dev.service
apport-forward.socket                   fwupdate-cleanup.service           netplan-wpa@.service                rmnologin.service            systemd-ask-password-plymouth.path     systemd-tmpfiles-setup.service
apt-daily.service                       getty@.service                     networking.service                  rpcbind.target               systemd-ask-password-plymouth.service  systemd-udevd-control.socket
apt-daily.timer                         getty-static.service               NetworkManager-dispatcher.service   rsync.service                systemd-ask-password-wall.path         systemd-udevd-kernel.socket
autovt@.service                         getty.target                       network-manager.service             rsyslog.service              systemd-ask-password-wall.service      systemd-udevd.service
avahi-daemon.service                    getty.target.wants                 NetworkManager.service              runlevel0.target             systemd-backlight@.service             systemd-udev-settle.service
avahi-daemon.socket                     gpu-manager.service                NetworkManager-wait-online.service  runlevel1.target             systemd-binfmt.service                 systemd-udev-trigger.service
basic.target                            graphical.target                   network-online.target               runlevel1.target.wants       systemd-exit.service                   systemd-update-utmp-runlevel.service
basic.target.wants                      graphical.target.wants             network-pre.target                  runlevel2.target             systemd-fsckd.service                  systemd-update-utmp.service
bluetooth.service                       halt.service                       network.target                      runlevel2.target.wants       systemd-fsckd.socket                   systemd-user-sessions.service
bluetooth.target                        halt.target                        nss-lookup.target                   runlevel3.target             systemd-fsck-root.service              system.slice
bootlogd.service                        halt.target.wants                  nss-user-lookup.target              runlevel3.target.wants       systemd-fsck@.service                  system-update.target
bootlogs.service                        hibernate.target                   ondemand.service                    runlevel4.target             systemd-halt.service                   system-update.target.wants
bootmisc.service                        hostname.service                   packagekit-offline-update.service   runlevel4.target.wants       systemd-hibernate-resume@.service      timers.target
busnames.target                         hwclock.service                    packagekit.service                  runlevel5.target             systemd-hibernate.service              timers.target.wants
busnames.target.wants                   hybrid-sleep.target                paths.target                        runlevel5.target.wants       systemd-hostnamed.service              time-sync.target
checkfs.service                         ifup@.service                      plymouth-halt.service               runlevel6.target             systemd-hwdb-update.service            udev.service
checkroot-bootclean.service             initrd-cleanup.service             plymouth-kexec.service              sendsigs.service             systemd-hybrid-sleep.service           udisks2.service
checkroot.service                       initrd-fs.target                   plymouth-log.service                serial-getty@.service        systemd-initctl.service                ufw.service
console-getty.service                   initrd-parse-etc.service           plymouth-poweroff.service           setvtrgb.service             systemd-initctl.socket                 umountfs.service
console-setup.service                   initrd-root-device.target          plymouth-quit.service               shutdown.target              systemd-journald-audit.socket          umountnfs.service
console-shell.service                   initrd-root-fs.target              plymouth-quit-wait.service          sigpwr.target                systemd-journald-dev-log.socket        umountroot.service
container-getty@.service                initrd-switch-root.service         plymouth-read-write.service         single.service               systemd-journald.service               umount.target
cron.service                            initrd-switch-root.target          plymouth-reboot.service             sleep.target                 systemd-journald.socket                upower.service
cryptdisks-early.service                initrd-switch-root.target.wants    plymouth.service                    -.slice                      systemd-journal-flush.service          urandom.service
cryptdisks.service                      initrd.target                      plymouth-start.service              slices.target                systemd-kexec.service                  ureadahead.service
cryptsetup-pre.target                   initrd-udevadm-cleanup-db.service  plymouth-switch-root.service        smartcard.target             systemd-localed.service                ureadahead-stop.service
cryptsetup.target                       kerneloops.service                 polkitd.service                     snapd.boot-ok.service        systemd-logind.service                 ureadahead-stop.timer
ctrl-alt-del.target                     kexec.target                       poweroff.target                     snapd.firstboot.service      systemd-machine-id-commit.service      usb_modeswitch@.service
cups.path                               kexec.target.wants                 poweroff.target.wants               snapd.frameworks-pre.target  systemd-modules-load.service           user@.service
cups.service                            keyboard-setup.service             pppd-dns.service                    snapd.frameworks.target      systemd-networkd.service               user@.service.d
cups.socket                             killprocs.service                  printer.target                      snapd.refresh.service        systemd-networkd.socket                user.slice
dbus-org.freedesktop.hostname1.service  kmod.service                       procps.service                      snapd.refresh.timer          systemd-networkd-wait-online.service   uuidd.service
dbus-org.freedesktop.locale1.service    kmod-static-nodes.service          proc-sys-fs-binfmt_misc.automount   snapd.service                systemd-poweroff.service               uuidd.socket
dbus-org.freedesktop.login1.service     lightdm.service                    proc-sys-fs-binfmt_misc.mount       snapd.socket                 systemd-quotacheck.service             wacom-inputattach@.service
dbus-org.freedesktop.network1.service   local-fs-pre.target                quotaon.service                     sockets.target               systemd-random-seed.service            whoopsie.service
dbus-org.freedesktop.resolve1.service   local-fs.target                    rc-local.service                    sockets.target.wants         systemd-reboot.service                 wpa_supplicant.service
dbus-org.freedesktop.timedate1.service  local-fs.target.wants              rc.local.service                    sound.target                 systemd-remount-fs.service             x11-common.service
dbus.service                            machine.slice                      rc-local.service.d                  stop-bootlogd.service        systemd-resolved.service
hochob@server:/lib/systemd/system$ 
```

```sh
hochob@server:/lib/systemd/system$ sudo nano home-assistant.service
```

```sh
[Unit]
Description=Home Assistant
After=network.target

[Service]
Type=simple
User=%i
ExecStart=/usr/bin/hass

[Install]
WantedBy=multi-user.target
```

```sh
root@server:/lib/systemd/system# sudo ln -s /lib/systemd/system/home-assistant.service /etc/systemd/system/home-assistant.service
root@server:/lib/systemd/system# 
```

```sh
root@server:/lib/systemd/system# sudo systemctl --system daemon-reload
root@server:/lib/systemd/system# sudo systemctl enable home-assistant.service
Created symlink /etc/systemd/system/multi-user.target.wants/home-assistant.service → /lib/systemd/system/home-assistant.service.
```

```sh
root@server:/lib/systemd/system# sudo systemctl start home-assistant.service
root@server:/lib/systemd/system# sudo systemctl status home-assistant.service
● home-assistant.service - Home Assistant
   Loaded: loaded (/lib/systemd/system/home-assistant.service; enabled; vendor preset: enabled)
   Active: active (running) since dom 2017-03-19 11:11:47 CST; 3s ago
 Main PID: 13429 (hass)
    Tasks: 11 (limit: 4915)
   CGroup: /system.slice/home-assistant.service
           ├─13429 /usr/bin/python3 /usr/local/bin/hass
           └─13441 /usr/bin/python3 -m pip install --quiet aiohttp_cors==0.5.0 --upgrade --target /root/.homeassistant/deps

mar 19 11:11:49 server hass[13429]: INFO:homeassistant.loader:Loaded tts from homeassistant.components.tts
mar 19 11:11:49 server hass[13429]: INFO:homeassistant.loader:Loaded tts.google from homeassistant.components.tts.google
mar 19 11:11:49 server hass[13429]: INFO:homeassistant.loader:Loaded updater from homeassistant.components.updater
mar 19 11:11:49 server hass[13429]: INFO:homeassistant.loader:Loaded history from homeassistant.components.history
mar 19 11:11:49 server hass[13429]: INFO:homeassistant.loader:Loaded conversation from homeassistant.components.conversation
mar 19 11:11:49 server hass[13429]: INFO:homeassistant.loader:Loaded discovery from homeassistant.components.discovery
mar 19 11:11:49 server hass[13429]: INFO:homeassistant.loader:Loaded config from homeassistant.components.config
mar 19 11:11:49 server hass[13429]: INFO:homeassistant.core:Bus:Handling <Event service_registered[L]: service=set_visibility, domain=group>
mar 19 11:11:49 server hass[13429]: INFO:homeassistant.core:Bus:Handling <Event service_registered[L]: service=reload, domain=group>
mar 19 11:11:49 server hass[13429]: INFO:homeassistant.core:Bus:Handling <Event component_loaded[L]: component=group>
root@server:/lib/systemd/system# 
```