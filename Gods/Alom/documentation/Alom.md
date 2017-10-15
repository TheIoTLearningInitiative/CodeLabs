# Alom

> A sky god and one of the creator deities who participated in the last two attempts at creating humanity.

## Briko

> Briko es una forma fácil y divertida de aprender programación mientras construyes proyectos de robótica, arte, tecnología y más. [Briko Homepage](https://brikorobotics.com/)

## Briko Workshop Non Official

- [Visitors Center Workshop Briko Main Repository Short Url](https://goo.gl/2BMyhE)
- [Visitors Center Workshop Briko Main Repository Url](https://drive.google.com/drive/folders/0B6h7kxp-oIy8enBvUmRRUkdWMXc)

Documents

- Visitors Center Workshop Briko
- Visitors Center Workshop Briko Teachers Guide


```c
#include <Briko.h>

motorbk motorizq(PORT2);//Se declaran los módulos de briko a utilizar
motorbk motorder(PORT6);
ledsbk leds(PORT4);
distancebk dist(PORT5);              

int distancia;  //Se declara una variable tipo int llamada distancia

code() {
// Aqui se escribe tu programa

distancia=dist.read();//Se guarda en la variable distancia del valor de la
//distancia medida por el sensor de distancia
if(distancia<25){  //Si el valor de la variable distance es menor a 25
    motorizq.set(LEFT,255); //hace que el motor izquierdo gire a la izquierda
    motorder.set(RIGHT,255); //hace que el motor derecho gire a la derecha
    leds.color(GREEN);//Se prenden los leds en color verde
}
   else{  //si no se cumple la condicion anterior el robot da vueltas 
    //y prende los leds de color rojo
    motorizq.set(RIGHT,255); //hace que el motor izquierdo gire a la derecha
    motorder.set(RIGHT,255); //hace que el motor derecho gire a la derecha
    leds.color(RED); //prende los leds de color rojo
   }  
}
```