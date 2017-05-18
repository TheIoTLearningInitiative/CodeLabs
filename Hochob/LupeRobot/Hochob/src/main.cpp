/*
 * Author: Jessica Gomez <jessica.gomez.hernandez@intel.com>
 * Copyright (c) 2015 - 2016 Intel Corporation.
 *
 * Permission is hereby granted, free of charge, to any person obtaining
 * a copy of this software and associated documentation files (the
 * "Software"), to deal in the Software without restriction, including
 * without limitation the rights to use, copy, modify, merge, publish,
 * distribute, sublicense, and/or sell copies of the Software, and to
 * permit persons to whom the Software is furnished to do so, subject to
 * the following conditions:
 *
 * The above copyright notice and this permission notice shall be
 * included in all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
 * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
 * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
 * NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
 * LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
 * OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
 * WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */

/****************************************************************************
 * SparkFun_PWM_Edison_Block_Example.cpp
 * Example code showing how to use the SparkFun PWM Edison Block
 * Mike Hord @ SparkFun Electronics
 * 9 June 2015
 * https://github.com/sparkfun/SparkFun_PWM_Block_for_Edison_CPP_Library
 *
 * This file is a demonstration program showing the various functions that we've
 * provided for working with the PCA9685 IC on the SparkFun PWM Edison Block.
 * It uses an RGB LED and a small servo motor to show what the library can do.
 *
 * Resources:
 * Requires Intel's MRAA framework. This can be downloaded from either the
 * GitHub site (https://github.com/intel-iot-devkit/mraa) or in pre-built form
 * from http://iotdk.intel.com/sdk/mraa-update/.
 *
 * Development environment specifics:
 * Developed in the Intel iot-ide-dk Eclipse on Win 7 (v1.0.0.201502201135)
 * Using lib-mraa v0.6.2
 * On Edison poky-linux image build ww18-15
 *
 * This code is beerware; if you see me (or any other SparkFun employee) at the
 * local, and you've found our code helpful, please buy us a round!
 * ****************************************************************************/

#include <iomanip>
#include "mraa.hpp"
#include <iostream>
#include <unistd.h>

#include "pca9685.h"
#include "tb6612.h"
extern "C" {
#include <fcntl.h>
#include <stdio.h>
#include <sys/stat.h>
#include <unistd.h>
#include <errno.h>
#include <string.h>
}

#include "bluetoothspp.hpp"

using namespace std;

#define LEFT_UP				(buf[0]=='0') && (buf[1]=='0')
#define LEFT_FOLD			(buf[0]=='0') && (buf[1]=='1')
#define MOVE_LEFT			(buf[0]=='0') && (buf[1]=='2')
#define HEAD_LEFT			(buf[0]=='0') && (buf[1]=='4')
#define MOVE_FORWARD		(buf[0]=='0') && (buf[1]=='5')
#define MOVE_STOP			(buf[0]=='0') && (buf[1]=='6')
#define MOVE_BACKWARD		(buf[0]=='0') && (buf[1]=='7')
#define RIGHT_UP			(buf[0]=='0') && (buf[1]=='8')
#define RIGHT_FOLD			(buf[0]=='0') && (buf[1]=='9')
#define MOVE_RIGHT			(buf[0]=='1') && (buf[1]=='0')
#define RESET_ALL			(buf[0]=='1') && (buf[1]=='1')
#define BIENVENIDA			(buf[0]=='8') && (buf[1]=='0')
#define AGRADECE			(buf[0]=='8') && (buf[1]=='1')
#define DANCE				(buf[0]=='8') && (buf[1]=='2')
#define CREADOR				(buf[0]=='8') && (buf[1]=='3')
#define NORTE				(buf[0]=='8') && (buf[1]=='4')

#define HOLA				(buf[0]=='4') && (buf[1]=='0')
#define PERDON				(buf[0]=='4') && (buf[1]=='1')
#define SIMON				(buf[0]=='4') && (buf[1]=='2')
#define CEREBRO				(buf[0]=='4') && (buf[1]=='3')
#define EDISON				(buf[0]=='4') && (buf[1]=='4')

#define LEFT_DOWN			(buf[0]=='2') && (buf[1]=='0')
#define LEFT_UNFOLD			(buf[0]=='2') && (buf[1]=='1')
#define HEAD_RIGHT			(buf[0]=='2') && (buf[1]=='4')
#define RIGHT_DOWN			(buf[0]=='2') && (buf[1]=='8')
#define RIGHT_UNFOLD		(buf[0]=='2') && (buf[1]=='9')

#define RIGHT_ELBOW			0
#define RIGHT_ARM_FRONT		1
#define RIGHT_ARM_BACK		2
#define HEAD				3
#define LEFT_ELBOW			4
#define LEFT_ARM_FRONT		5
#define LEFT_ARM_BACK		6

#define US_DELAY			500000

#define T_TIME				500000

mraa::Gpio* d_pin_1 = NULL;
mraa::Gpio* d_pin_2 = NULL;
mraa::Gpio* d_pin_3 = NULL;

void LEDOne(){
	d_pin_1->write(1);
	d_pin_2->write(0);
	d_pin_3->write(0);
}

void LEDTwo(){
	d_pin_1->write(0);
	d_pin_2->write(1);
	d_pin_3->write(0);
}

void LEDThree(){
	d_pin_1->write(0);
	d_pin_2->write(0);
	d_pin_3->write(1);
}

void LEDAllOn(){
	d_pin_1->write(1);
	d_pin_2->write(1);
	d_pin_3->write(1);
}

void LEDAllOff(){
	d_pin_1->write(0);
	d_pin_2->write(0);
	d_pin_3->write(0);
}

void leftUp(pca9685 pwm, tb6612 motors){

	motors.standby(true);
	cout << "leftUp" << endl;
	pwm.setChlDuty(LEFT_ARM_FRONT,11.5);
	pwm.setChlDuty(LEFT_ARM_BACK,11.5);

}

void leftDown(pca9685 pwm, tb6612 motors){
	motors.standby(true);
	cout << "leftDown" << endl;
	pwm.setChlDuty(LEFT_ARM_FRONT,5.5);
	pwm.setChlDuty(LEFT_ARM_BACK,5.5);
}

void leftFold(pca9685 pwm, tb6612 motors){
	motors.standby(true);
	cout << "leftFold" << endl;
	pwm.setChlDuty(LEFT_ELBOW,11);
}

void leftUnfold(pca9685 pwm, tb6612 motors){
	motors.standby(true);
	cout << "leftUnfold" << endl;
	pwm.setChlDuty(LEFT_ELBOW,5);
}

void rightUp(pca9685 pwm, tb6612 motors){
	motors.standby(true);
	cout << "rightUp" << endl;
	pwm.setChlDuty(RIGHT_ARM_FRONT,6);
	pwm.setChlDuty(RIGHT_ARM_BACK,6);
}

void rightDown(pca9685 pwm, tb6612 motors){
	motors.standby(true);
	cout << "rightDown" << endl;
	pwm.setChlDuty(RIGHT_ARM_FRONT,12);
	pwm.setChlDuty(RIGHT_ARM_BACK,12);
}

void rightFold(pca9685 pwm, tb6612 motors){
	motors.standby(true);
	cout << "rightFold" << endl;
	pwm.setChlDuty(RIGHT_ELBOW,6);
}

void rightUnfold(pca9685 pwm, tb6612 motors){
	motors.standby(true);
	cout << "rightUnfold" << endl;
	pwm.setChlDuty(RIGHT_ELBOW,13);
}

void headLeft(pca9685 pwm, tb6612 motors){
	motors.standby(true);
	cout << "headLeft" << endl;
	pwm.setChlDuty(HEAD,14);
}

void headRight(pca9685 pwm, tb6612 motors){
	motors.standby(true);
	cout << "headRight" << endl;
	pwm.setChlDuty(HEAD,4);
}

void servosStop(pca9685 pwm){
	cout << "servosStop" << endl;
	//	pwm.setChlStop(LEFT_ARM_FRONT, 0);
	//	pwm.setChlStop(LEFT_ARM_BACK, 0);
	//	pwm.setChlStop(LEFT_ELBOW, 0);
	//	pwm.setChlStop(RIGHT_ARM_FRONT, 0);
	//	pwm.setChlStop(RIGHT_ARM_BACK, 0);
	//	pwm.setChlStop(RIGHT_ELBOW, 0);
	//	pwm.setChlStop(HEAD, 0);

	pwm.setChlDuty(LEFT_ARM_FRONT,5.5);
	pwm.setChlDuty(LEFT_ARM_BACK,5.5);
	pwm.setChlDuty(LEFT_ELBOW,5);
	pwm.setChlDuty(RIGHT_ARM_FRONT,12);
	pwm.setChlDuty(RIGHT_ARM_BACK,12);
	pwm.setChlDuty(RIGHT_ELBOW,13);
}

void servosSteady(pca9685 pwm){
	cout << "servosStop" << endl;
	pwm.setChlStop(LEFT_ARM_FRONT, 0);
	pwm.setChlStop(LEFT_ARM_BACK, 0);
	pwm.setChlStop(LEFT_ELBOW, 0);
	pwm.setChlStop(RIGHT_ARM_FRONT, 0);
	pwm.setChlStop(RIGHT_ARM_BACK, 0);
	pwm.setChlStop(RIGHT_ELBOW, 0);
	pwm.setChlStop(HEAD, 0);

	//	pwm.setChlDuty(LEFT_ARM_FRONT,5.5);
	//	pwm.setChlDuty(LEFT_ARM_BACK,5.5);
	//	pwm.setChlDuty(LEFT_ELBOW,5);
	//	pwm.setChlDuty(RIGHT_ARM_FRONT,12);
	//	pwm.setChlDuty(RIGHT_ARM_BACK,12);
	//	pwm.setChlDuty(RIGHT_ELBOW,13);
}

void moveForward(pca9685 pwm, tb6612 motors){
	cout << "moveForward" << endl;
	servosStop(pwm);
	usleep(US_DELAY);
	motors.standby(false);
	motors.diffDrive(0.7,0.7);
}

void moveBackward(pca9685 pwm, tb6612 motors){
	cout << "moveBackward" << endl;
	servosStop(pwm);
	usleep(US_DELAY);
	motors.standby(false);
	motors.diffDrive(-0.7,-0.7);
}

void moveStop(tb6612 motors){
	cout << "moveStop" << endl;
	motors.standby(true);
}

void moveLeft(pca9685 pwm, tb6612 motors){
	cout << "moveLeft" << endl;
	servosStop(pwm);
	usleep(US_DELAY);
	motors.standby(false);
	motors.diffDrive(-0.7,0.7);
}

void moveRight(pca9685 pwm, tb6612 motors){
	cout << "moveRight" << endl;
	servosStop(pwm);
	usleep(US_DELAY);
	motors.standby(false);
	motors.diffDrive(0.7,-0.7);
}

void resetAll(pca9685 pwm,tb6612 motors){
	cout << "resetAll" << endl;
	servosSteady(pwm);
	moveStop(motors);
}

//VIEJAS FUNCIONES DE MOVIMIENTO CON VARIABLE INTERNA

void leftUpDown(pca9685 pwm, tb6612 motors){
	static bool up = 1;
	motors.standby(true);
	if(up){
		cout << "leftUp" << endl;
		pwm.setChlDuty(LEFT_ARM_FRONT,11.5);
		pwm.setChlDuty(LEFT_ARM_BACK,11.5);
		up = 0;
	}else{
		cout << "leftDown" << endl;
		pwm.setChlDuty(LEFT_ARM_FRONT,5.5);
		pwm.setChlDuty(LEFT_ARM_BACK,5.5);
		up = 1;
	}
}

void leftFoldUnfold(pca9685 pwm, tb6612 motors){
	static bool fold = 1;
	motors.standby(true);
	if(fold){
		cout << "leftFold" << endl;
		pwm.setChlDuty(LEFT_ELBOW,11);
		fold = 0;
	}else{
		cout << "leftUnfold" << endl;
		pwm.setChlDuty(LEFT_ELBOW,5);
		fold = 1;
	}
}

void rightUpDown(pca9685 pwm, tb6612 motors){
	static bool up = 1;
	motors.standby(true);
	if(up){
		cout << "rightUp" << endl;
		pwm.setChlDuty(RIGHT_ARM_FRONT,6);
		pwm.setChlDuty(RIGHT_ARM_BACK,6);
		up = 0;
	}
	else{
		cout << "rightDown" << endl;
		pwm.setChlDuty(RIGHT_ARM_FRONT,12);
		pwm.setChlDuty(RIGHT_ARM_BACK,12);
		up = 1;
	}
}

void rightFoldUnfold(pca9685 pwm, tb6612 motors){
	static bool fold = 1;
	motors.standby(true);
	if(fold){
		cout << "rightFold" << endl;
		pwm.setChlDuty(RIGHT_ELBOW,6);
		fold = 0;
	}else{
		cout << "rightUnfold" << endl;
		pwm.setChlDuty(RIGHT_ELBOW,13);
		fold = 1;
	}
}

void headLeftRight(pca9685 pwm, tb6612 motors){
	static bool left = 0;
	motors.standby(true);
	if(left){
		cout << "headLeft" << endl;
		pwm.setChlDuty(HEAD,14);
		left = 0;
	}else{
		cout << "headRight" << endl;
		pwm.setChlDuty(HEAD,4);
		left = 1;
	}
}

//FUNCIONES DE HABLA PARA INICIO

void hola(){
	system("espeak -v es-la -a 200 'Hola a todos'");
}

void perdon(){
	system("espeak -v es-la -a 200 'Perdon! Lo se!, Es que me emociono'");
}

void simon(){
	system("espeak -v es-la -a 200 'Por supuesto'");
}

void cerebro(){
	system("espeak -v es-la -a 200 'En mi caso, mi cerebro esta aqui, en la caja azul!'");
}

void edison(){
	system("espeak -v es-la -a 200 'Yo funciono con la plataforma Intel Edison'");
}

void moveSomething(char *buf, pca9685 pwm, tb6612 motors){

	cout << "SPeak si entra" << endl;
	//LEDOne();
	if(LEFT_UP){
		leftUp(pwm, motors);
/////////////////////////////// CINCO FUNCIONES DE VOZ/////////////////////////
	}else if(HOLA){
		hola();
	}else if(PERDON){
		perdon();
	}else if(SIMON){
		simon();
	}else if(CEREBRO){
		cerebro();
	}else if(EDISON){
		edison();

	}else if(LEFT_DOWN){
		leftDown(pwm, motors);
	}else if(LEFT_FOLD){
		leftFold(pwm, motors);
	}else if(LEFT_UNFOLD){
		leftUnfold(pwm, motors);
	}else if(HEAD_LEFT){
		headLeft(pwm, motors);
	}else if(HEAD_RIGHT){
		headRight(pwm, motors);
	}else if(MOVE_FORWARD){
		moveForward(pwm, motors);
	}else if(MOVE_LEFT){
		moveLeft(pwm, motors);
	}else if(MOVE_STOP){
		moveStop(motors);
	}else if(MOVE_RIGHT){
		moveRight(pwm, motors);
	}else if(MOVE_BACKWARD){
		moveBackward(pwm, motors);
	}else if(RIGHT_UP){
		rightUp(pwm, motors);
	}else if(RIGHT_DOWN){
		rightDown(pwm, motors);
	}else if(RIGHT_FOLD){
		rightFold(pwm, motors);
	}else if(RIGHT_UNFOLD){
		rightUnfold(pwm, motors);
	}else if(RESET_ALL){
		resetAll(pwm,motors);
	}
	else if(BIENVENIDA){
		//			system("espeak -v en-sc I_am_just_a_robot,_I_dont_have_the_answer_to_that_question");
		//			leftUpDown(pwm, motors);
		//			leftFoldUnfold(pwm, motors);
		//			headLeftRight(pwm, motors);
		//			moveForward(pwm, motors);
		//			moveLeft(pwm, motors);
		//			moveStop(motors);
		//			moveRight(pwm, motors);
		//			moveBackward(pwm, motors);
		//			rightUpDown(pwm, motors);
		//			rightFoldUnfold(pwm, motors);
		resetAll(pwm,motors);
		usleep(250000);
		headLeftRight(pwm, motors);
		usleep(250000);
		rightFoldUnfold(pwm, motors);
		usleep(250000);

		system("espeak -v es-la -a 200 'Hola a todos, bienvenidos a Intel'");

		rightFoldUnfold(pwm, motors);
		usleep(250000);
		moveRight(pwm, motors);
		usleep(250000);
		moveLeft(pwm, motors);
		usleep(750000);
		moveStop(motors);

		system("espeak -v es-la -a 200 'Como pueden ver, por lo que traigo en el pecho'");

		leftFoldUnfold(pwm, motors);
		usleep(500000);
		//LEDAllOn();
		usleep(500000);
		//LEDAllOff();
		usleep(500000);
		//LEDAllOn();
		usleep(500000);
		//LEDAllOff();
		usleep(500000);
		//LEDAllOn();
		usleep(500000);
		//LEDAllOff();
		usleep(500000);
		//LEDAllOn();
		usleep(500000);
		//LEDTwo();
		usleep(500000);
		leftFoldUnfold(pwm, motors);
		usleep(500000);

		system("espeak -v es-la -a 200 'Funciono con la plataforma Intel Edison, que es una de las tantas cosas que hacemos en Intel'");

		headLeftRight(pwm, motors);
		usleep(500000);
		headLeftRight(pwm, motors);
		usleep(250000);

		system("espeak -v es-la -a 200 'Espero que les guste el recorrido tanto como a mi'");

		moveRight(pwm, motors);
		usleep(250000);
		moveLeft(pwm, motors);
		usleep(750000);
		moveStop(motors);

		system("espeak -v es-la -a 200 'Por lo pronto, le cedo la palabra a mis amigos los humanos'");

	}else if(AGRADECE){

		system("espeak -v es-la -a 200 'No, gracias a ti' &");

		leftFoldUnfold(pwm, motors);
		usleep(T_TIME + T_TIME + T_TIME);
		leftFoldUnfold(pwm, motors);
	}else if(DANCE){
		system("aplay roboto_short.wav &");
		usleep(T_TIME);
		headLeftRight(pwm, motors);
		//LEDAllOn();
		usleep(T_TIME);
		headLeftRight(pwm, motors);
		usleep(T_TIME);
		leftUpDown(pwm, motors);
		rightUpDown(pwm, motors);
		//LEDAllOff();
		usleep(T_TIME);
		leftFoldUnfold(pwm, motors);
		rightFoldUnfold(pwm, motors);
		usleep(T_TIME);
		leftFoldUnfold(pwm, motors);
		//LEDAllOn();
		usleep(T_TIME);
		rightFoldUnfold(pwm, motors);
		usleep(T_TIME);
		leftFoldUnfold(pwm, motors);
		rightFoldUnfold(pwm, motors);
		//LEDAllOff();
		usleep(T_TIME);
		leftUpDown(pwm, motors);
		rightUpDown(pwm, motors);
		usleep(T_TIME);
		leftFoldUnfold(pwm, motors);
		rightFoldUnfold(pwm, motors);
		headLeftRight(pwm, motors);
		usleep(T_TIME);

		moveRight(pwm, motors);
		usleep(T_TIME + T_TIME);
		moveLeft(pwm, motors);
		usleep(T_TIME + T_TIME + T_TIME);
		moveStop(motors);

		headLeftRight(pwm, motors);
		usleep(T_TIME);
		headLeftRight(pwm, motors);
		usleep(T_TIME);
		headLeftRight(pwm, motors);
		usleep(T_TIME);
		leftFoldUnfold(pwm, motors);
		usleep(T_TIME);
		leftFoldUnfold(pwm, motors);
		rightFoldUnfold(pwm, motors);
		usleep(T_TIME);
		leftUpDown(pwm, motors);
		rightUpDown(pwm, motors);
		leftFoldUnfold(pwm, motors);
		rightFoldUnfold(pwm, motors);
		usleep(T_TIME);
		leftFoldUnfold(pwm, motors);
		rightFoldUnfold(pwm, motors);
		headLeftRight(pwm, motors);
		usleep(T_TIME);
		headLeftRight(pwm, motors);
		usleep(T_TIME);
		leftFoldUnfold(pwm, motors);
		rightFoldUnfold(pwm, motors);
		usleep(T_TIME);
		leftFoldUnfold(pwm, motors);
		leftUpDown(pwm, motors);
		rightUpDown(pwm, motors);
		usleep(T_TIME + T_TIME);
		resetAll(pwm,motors);
	}else if(CREADOR){
		headLeftRight(pwm, motors);

		system("espeak -v es-la -a 200 'Mario es mi creador'");


		system("espeak -v es-la -a 200 'Es muy inteligente, guapo, capaz y sobre todo modesto'");

		headLeftRight(pwm, motors);
	}else if(NORTE){
		system("espeak -v es-la -a 200 '   Fierro, pariente. Echele viejoon' &");
		leftFoldUnfold(pwm, motors);
		usleep(T_TIME + T_TIME + T_TIME + T_TIME + T_TIME + T_TIME);
		leftFoldUnfold(pwm, motors);
	}else if(RESET_ALL){
		resetAll(pwm,motors);
	}else{
		resetAll(pwm,motors);
	}
	cout << "Nothing" << endl;

}


int main(int argc, char **buf)
{
	//Intel_Edison_BT_SPP spp = Intel_Edison_BT_SPP();
	tb6612 motors;
	//cout << "1" << endl;
	/*
	d_pin_1 = new mraa::Gpio(4, true, false);
	d_pin_2 = new mraa::Gpio(26, true, false);
	d_pin_3 = new mraa::Gpio(33, true, false);

	cout << "2" << endl;

	d_pin_1->dir(mraa::DIR_OUT);
	d_pin_2->dir(mraa::DIR_OUT);
	d_pin_3->dir(mraa::DIR_OUT);
	 */

	mraa::I2c* pwm_i2c;
	pwm_i2c = new mraa::I2c(1); // Tell the I2c object which bus it's on.


	pca9685 pwm(pwm_i2c, 0x40); // 0x40 is the default address for the PCA9685.



	motors.standby(false);


	pwm.enableServoMode();

	//spp.open();		// Open BT SPP

	//resetAll(pwm,motors);

/*
	cout << buf << endl; //Direccion
	cout << *buf << endl;//Hochob
	cout << buf[0] << endl; // ./Hochob
	cout << buf[1] << endl; //  01 excelente
	cout << *buf[0] << endl; //.
	cout << *buf[1] << endl; //0
	cout << buf[1][1] << endl;//1
	cout << buf[1][0] << endl;//0
*/
	//cout << *buf[1] << endl;
	//cout << *buf[2] << endl;


//
	moveSomething(buf[1],pwm,motors);

	//cout << argv[1] << endl;

	/*for (;;) {
		ssize_t size = spp.read();
		cout << size << endl;
		if (size > 0 && size < 32)
		{
			cout << "2" << endl;
			char * buf = spp.getBuf();
			cout << buf[0] << ", " << buf[1] << ", "  << buf[2] << endl;
			moveSomething(buf,pwm,motors);

		}
	}*/


	return MRAA_SUCCESS;
}
