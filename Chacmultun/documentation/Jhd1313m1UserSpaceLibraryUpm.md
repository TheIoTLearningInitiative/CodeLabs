# User Space Library UPM

> Upm Sensor Library LCD [From IoT Sensors by Marco Antonio Salgado SourceCodeCat](https://theiotlearninginitiative.gitbooks.io/internetofthingssensors/content/)

## Hardware Requirements

- [Intel Edison for Arduino](https://www.seeedstudio.com/Intel%C2%AE-Edison-for-Arduino-p-2149.html)
- [Grove - LCD RGB Backlight](http://wiki.seeed.cc/Grove-LCD_RGB_Backlight/)

## Software Requierements

```sh
root@board:~# opkg install python-dev upm mraa
```

## Code



## Execution

```sh
root@edison:~/CodeLabs/Hochob# make
g++ -lmraa -lupm-i2clcd -I/usr/include/upm/ main.cpp -o main
root@edison:~/CodeLabs/Hochob#
```

```sh
root@edison:~/CodeLabs/Hochob# ./main

```