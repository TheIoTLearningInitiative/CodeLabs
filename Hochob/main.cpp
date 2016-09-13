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
