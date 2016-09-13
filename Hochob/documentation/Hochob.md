# Hochob

> Upm Sensor Library LCD [From IoT Sensors by Marco Antonio Salgado SourceCodeCat](https://theiotlearninginitiative.gitbooks.io/internetofthingssensors/content/)

## Hardware Requirements

- None

## Software Requirements

```sh
root@board:~# echo "pip install none"
root@board:~# opkg install upm mraa
```

## Setup

```sh
root@board:~# curl https://raw.githubusercontent.com/TheIoTLearningInitiative/CodeLabs/master/Hochob/setup.sh -o - | sh
```

## Code

```sh
root@board:~/CodeLabs/Hochob# vi main.py
```

```c
#include <unistd.h>                                                             
#include <iostream>                                                             
#include <signal.h>                                                             
#include <string>                                                               
#include <sstream>                                                              
#include "jhd1313m1.hpp"                                                        
                                                                                
volatile int doWork = 0;                                                        
                                                                                
void sig_handler(int signo)                                                     
{                                                                               
    if (signo == SIGINT) {                                                      
        printf("\nCtrl-C received.\n");                                         
        doWork = 1;                                                             
    }                                                                           
}                                                                               
                                                                                
int main(int argc, char **argv)                                                 
{                                                                               
        signal(SIGINT, sig_handler);                                            
                                                                                
        upm::Jhd1313m1 *lcd = new upm::Jhd1313m1(0, 0x3E, 0x62);                
        lcd->setCursor(0,0);                                                    
        lcd->setColor(127, 255, 127);                                           
        lcd->write("Hello Main!");
        while (!doWork)                                                         
        {                                                                       
                usleep (500000);                                                
        }                                                                       
                                                                                
        delete lcd;                                                             
        return 0;                                                               
}
```

```sh
root@board:~/CodeLabs/Hochob# vi Makefile
```

```sh
all: main

main:
	g++ -lmraa -lupm-i2clcd -I/usr/include/upm/ main.cpp -o main
clean:
	rm main
```

## Execution

```sh
root@edison:~/CodeLabs/Hochob# make
g++ -lmraa -lupm-i2clcd -I/usr/include/upm/ main.cpp -o main
root@edison:~/CodeLabs/Hochob#
```

```sh

```