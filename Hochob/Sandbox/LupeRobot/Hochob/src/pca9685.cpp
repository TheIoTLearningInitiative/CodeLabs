

/****************************************************************************
 * SparkFun_pca9685_Edison.cpp
 * Class functions for supporting the PCA9685 PWM IC on the Edison
 * Mike Hord @ SparkFun Electronics
 * 9 June 2015
 * https://github.com/sparkfun/SparkFun_PWM_Block_for_Edison_CPP_Library
 *
 * This file provides all the functions needed to provide robust LED and servo
 * drive support for the PCA9685 PWM IC used on SparkFun's PWM Block for Edison.
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

#include "pca9685.h"

#include "mraa.hpp"
#include <math.h>  // Included for log normalization of LED PWM values

// Constructor. Pretty self explanatory.
pca9685::pca9685(mraa::I2c* pca_port, uint8_t myI2CAddress):
  _pca_port(pca_port), _myAddress(myI2CAddress),
  _minServoPL(MIN_WIDTH), _maxServoPL(MAX_WIDTH),
  _minAngle(0), _maxAngle(180)
{
  setPrescaler(14); // f= ~400Hz
  _pca_port->address(_myAddress);
  _pca_port->writeReg(MODE1, AI); //enable autoincrement and osc
  _pca_port->writeReg(MODE2, INVRT); // open drain outs
}

// Hardware abstraction write. Choose the channel, start time and stop time.
//  Start and stop time are given in counts, and the length of one count
//  varies depending on the prescaler. For servos, it's about 4.5us.
void pca9685::channelWrite(uint8_t channel, uint16_t on, uint16_t off)
{
  uint8_t onL = LED0_ON_L + (channel*4);
  uint8_t onH = onL + 1;
  uint8_t offL = onL + 2;
  uint8_t offH = onL + 3;
  _pca_port->writeReg(onL, on);
  _pca_port->writeReg(onH, on>>8);
  _pca_port->writeReg(offL, off);
  _pca_port->writeReg(offH, off>>8);
}

// Hardware abstraction read.
void pca9685::channelRead(uint8_t channel, uint16_t *on, uint16_t *off)
{
  uint8_t onL = LED0_ON_L + (channel*4);
  uint8_t onH = onL + 1;
  uint8_t offL = onL + 2;
  uint8_t offH = onL + 3;
  uint8_t temp;
  temp = _pca_port->readReg(onL);
  *on = temp;
  temp = _pca_port->readReg(onH);
  *on += temp<<8;
  temp = _pca_port->readReg(offL);
  *off = temp;
  temp = _pca_port->readReg(offH);
  *off += temp<<8;
}

// Generic duty cycle setting. Automatically makes the start time 0, then
//  calculates the number of counts needed to realize the appropriate duty
//  cycle as nearly as possible.
void pca9685::setChlDuty(uint8_t channel, float duty)
{
  uint16_t onTime = 0;
  uint16_t offTime = uint16_t(duty*4096*.01)-1;
  channelWrite(channel, onTime, offTime);
}

// Public version of the hardware abstraction.
void pca9685::setChlTime(uint8_t channel, uint16_t start, uint16_t stop)
{
  channelWrite(channel, start, stop);
}

// Maybe you just want to change the start time? This allows you to do that
//  without worrying about what the stop time is, and without affecting it.
void pca9685::setChlStart(uint8_t channel, uint16_t start)
{
  uint16_t offTime, onTime;
  channelRead(channel, &onTime, &offTime);
  channelWrite(channel, start, offTime);
}

// Same as previous, for stop time.
void pca9685::setChlStop(uint8_t channel, uint16_t stop)
{
  uint16_t offTime, onTime;
  channelRead(channel, &onTime, &offTime);
  channelWrite(channel, onTime, stop);
}

// Get the current start/stop values from the device.
void pca9685::getChlTime(uint8_t channel, uint16_t *start, uint16_t *stop)
{
  channelRead(channel, start, stop);
}

// Set the mode registers on the part. LSB is MODE1, MSB is MODE2.
void pca9685::setModeRegisters(uint16_t modeRegisterValue)
{
  _pca_port->writeReg(MODE1, modeRegisterValue);
  _pca_port->writeReg(MODE2, modeRegisterValue>>8);
}

// Get the mode register values. MODE1 is LSB, MODE2 is MSB.
uint16_t pca9685::readModeRegisters()
{
  uint16_t modeReg = _pca_port->readReg(MODE1);
  modeReg |= _pca_port->readReg(MODE2)<<8;
  return modeReg;
}

// Set the prescaler. This requires some fancy twiddling of the SLEEP and
//  RESTART bits in the MODE1 register; this function handles all of that.
void pca9685::setPrescaler(unsigned char prescaler)
{
  uint8_t modeReg;

  // Set the SLEEP bit, which stops the oscillator on the part.
  modeReg = _pca_port->readReg(MODE1);
  modeReg |= SLEEP;
  _pca_port->writeReg(MODE1, modeReg);

  // This register can only be written when the oscillator is stopped.
  _pca_port->writeReg(PRE_SCALE, prescaler);

  // Clear the sleep bit.
  modeReg = _pca_port->readReg(MODE1);
  modeReg &= ~(SLEEP);
  _pca_port->writeReg(MODE1, modeReg);

  usleep(500); // According to the datasheet, we must wait 500us before
               //  we touch the RESTART bit after touching the SLEEP bit.
               //  *Maybe* we can count on that much time elapsing in the
               //  I2C transaction, but let's be on the safe side.

  // Set the RESTART bit which, counterintuitively, clears the actual RESTART
  //  bit in the register.
  modeReg = _pca_port->readReg(MODE1);
  modeReg |= RESTART;
  _pca_port->writeReg(MODE1, modeReg);
}

// Much simpler than setting the prescaler. See the datasheet or .h file for
//  more information on exactly what the prescaler number means.
uint8_t pca9685::getPrescaler()
{

  return _pca_port->readReg(PRE_SCALE);
}

// set/get frequency functions are private because they don't work exactly as
//  a user might expect. The resulting values are really coarse, so e.g. 400 Hz
//  and 450 Hz are probably going to have the same prescaler.
float pca9685::setFreq(float freq)
{
  uint8_t prescaler = static_cast<uint8_t>(((25000000)/(4096*freq))-1);
  setPrescaler(prescaler);
  return prescaler;
}

float pca9685::getFreq()
{
  uint16_t prescaler = getPrescaler();
  prescaler++;
  float freq = 1/float(static_cast<float>(prescaler)*4096/25000000);
  return freq;
}

// "LED Mode" means that the output is inverted and at a nice, high frequency
//   to avoid flickering.
void pca9685::enableLEDMode()
{
  setFreq(400);
  uint8_t mode2RegVal = _pca_port->readReg(MODE2);
  mode2RegVal |= INVRT;
  _pca_port->writeReg(MODE2, mode2RegVal); // open drain outs
}

// We want to calculate the visually weighted by-percent PWM value. To do
//  this, we want to to take the log of the desired percentage base 100, then
//  multiply that by the 100% value (4095). Of course, C++ doesn't have an
//  arbitrary base log function. Fortunately, we know that logb(x) is equal to
//  log10(x)/log10(b). Even MORE fortunately, we know that log10(100) is 2!

float pca9685::setChlLEDPercent(uint8_t channel, uint8_t percent)
{
  float weighted;
  if (percent != 100)
  {
    percent = 100 - percent;
    weighted = 1-(log10(percent)/2);
  }
  else
  {
    weighted = 1;
  }
  setChlDuty(channel, weighted*100);
  return weighted*100;
}

// Servo Mode means we're working at 50Hz, which is what most servos want. It
//  also means we've made the output non-inverted, although we leave it open
//  drain and let the pullup resistors handle the highs.
void pca9685::enableServoMode()
{
	setFreq(50);
	uint8_t mode2RegVal = _pca_port->readReg(MODE2);
	mode2RegVal &= ~INVRT;
	_pca_port->writeReg(MODE2, mode2RegVal);
//	setPrescaler(SERVO_PRESCALER);
}

// We can alter the minimum and maximum servo pulse lengths because different
//  servo models may like different lengths. E.g., the one SparkFun sells as a
//  "sub-micro generic" likes a minimum of ~108 pulses and a max of ~450.
void pca9685::setServoAnglePulseLimits(uint16_t minServoPL, uint16_t maxServoPL)
{
  _minServoPL = minServoPL;
  _maxServoPL = maxServoPL;
}

void pca9685::getServoAnglePulseLimits(uint16_t* minServoPL, uint16_t* maxServoPL)
{
  *minServoPL = _minServoPL;
  *maxServoPL = _maxServoPL;
}

// We can also alter the angle range. Again, taking the sub-micro generic as a
//  model, it has a range of about 160 degrees. Others may have more than 180,
//  or may use a gearing system.
void pca9685::setServoAngleLimits(int16_t minAngle, int16_t maxAngle)
{
  _minAngle = minAngle;
  _maxAngle = maxAngle;
}

void pca9685::getServoAngleLimits(int16_t* minAngle, int16_t* maxAngle)
{
  *minAngle = _minAngle;
  *maxAngle = _maxAngle;
}

// Once we've set our angle and pulse limits (which set by default too a fairly
//  modest value), we can tell the servo what angle we want and feel fairly
//  assured that it will give us that angle.
void pca9685::setChlAngle(uint8_t channel, int16_t angle)
{
  if ((angle > _maxAngle) ||
      (angle < _minAngle) )
  {
    return;
  }
  uint16_t pulseLen = (angle-_minAngle)*(_maxServoPL-_minServoPL)/(_maxAngle-_minAngle) + _minServoPL;
  setChlTime(channel, 0, pulseLen);
}




