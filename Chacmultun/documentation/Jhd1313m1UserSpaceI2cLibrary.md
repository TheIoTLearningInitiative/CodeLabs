# User Space I2C Library

> I2C Library LCD [From IoT Sensors by Marco Antonio Salgado SourceCodeCat](https://theiotlearninginitiative.gitbooks.io/internetofthingssensors/content/)

## Hardware Requirements

- [Intel Edison for Arduino](https://www.seeedstudio.com/Intel%C2%AE-Edison-for-Arduino-p-2149.html)
- [Grove - LCD RGB Backlight](http://wiki.seeed.cc/Grove-LCD_RGB_Backlight/)

## Software Requirements

```sh
root@board:~# opkg install i2c-tools-dev
```

## Code

Go to CodeLabs/Chacmultun/jhd1313m1/i2clibrary directory

```sh
root@edison:~/CodeLabs/Chacmultun/jhd1313m1/i2clibrary# ls
Makefile  main.c
```

```sh
root@edison:~/CodeLabs/Chacmultun/jhd1313m1/i2clibrary# make
gcc -O main.c -o main
```

## Execution

```sh
root@edison:~/CodeLabs/Chacmultun/jhd1313m1/i2clibrary# ./main 
```
