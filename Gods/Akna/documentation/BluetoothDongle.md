# Bluetooth Dongle

- [1](https://bbs.archlinux.org/viewtopic.php?id=166678&p=2)

```sh
root@workstation:~# dmesg
[48896.348474] usb 2-2.3: new full-speed USB device number 81 using xhci_hcd
[48896.516916] usb 2-2.3: New USB device found, idVendor=0a12, idProduct=0001
[48896.516919] usb 2-2.3: New USB device strings: Mfr=1, Product=2, SerialNumber=0
[48896.516921] usb 2-2.3: Product: Bluetooth V2.0 Dongle
[48896.516922] usb 2-2.3: Manufacturer: Bluetooth v2.0
```

```sh
user@workstation:~$ /etc/init.d/bluetooth status
● bluetooth.service - Bluetooth service
   Loaded: loaded (/lib/systemd/system/bluetooth.service; disabled; vendor preset: disabled)
   Active: inactive (dead)
     Docs: man:bluetoothd(8)
user@workstation:~$ /etc/init.d/bluetooth start
[ ok ] Starting bluetooth (via systemctl): bluetooth.service.
user@workstation:~$ 
```

# Pair and Connect