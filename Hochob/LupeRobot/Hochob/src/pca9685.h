
/****************************************************************************
 * SparkFun_pca9685_Edison.h
 * Header file for supporting the PCA9685 PWM IC on the Edison
 * Mike Hord @ SparkFun Electronics
 * 9 June 2015
 * https://github.com/sparkfun/SparkFun_PWM_Block_for_Edison_CPP_Library
 *
 * This file provides all the function, class, and constant definitions
 * needed to provide robust LED and servo drive support for the PCA9685 PWM IC
 * used on SparkFun's PWM Block for Edison.
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

#ifndef __pca9685_h__
#define __pca9685_h__

#include "mraa.hpp"

// Let's make a big long hideous list of all the register names and pin names!

#define MODE1         0x00
 #define RESTART       0x80 // Has something to do with sleep mode. I don't
                            //  really get it.
 #define EXTCLK        0x40 // Write to '1' to disable internal clock. Cannot
                            //  be reset to '0' without power cycle or reset.
 #define AI            0x20 // Set to '1' to enable autoincrement register
                            //  during write operations. Defaults to '0'.
 #define SLEEP         0x10 // Set to '0' to leave sleep and enable internal
                            //  oscillator. Defaults to '1' on boot.
 #define SUB1          0x08 // Set to '1' to allow part to respond to address
 #define SUB2          0x04 //  in SUBADRx registers. Defaults to '0'.
 #define SUB3          0x02
 #define ALLCALL       0x01 // Set to '1' to allow part to respond to address
                            //  in ALLCALL register. Defaults to '1'.

#define MODE2         0x01
 #define INVRT         0x10 // Write to '1' to invert output (i.e., a when the
                            //  pin is ON, the output will be low, or the
                            //  open-drain transistor will be off).
 #define OCH           0x08 // '0' (default) is update PWM behavior on I2C STOP
                            // '1' is update on I2C ACK
 #define OUTDRV        0x04 // '0' is open-drain mode, '1' (default) is
                            //  totem-pole drive.
 #define OUTNE1        0x02 // These bits affect behavior when OE is high and
 #define OUTNE0        0x01 //  the outputs are disabled.
                            // 00 - Output is '0'
                            // 01 - Output is '1' in totem-pole mode
                            //      Output is Hi-z in open drain mode
                            // 1x - Output is Hi-z

// The SUBADR registers allow you to set a second (or third, or fourth) I2C
// address that the PCA9685 will respond to. Thus, you can set up multiple
// "subnets" on the I2C bus. These power up to 0xe2, 0xe4 and 0xe6, but can't
// be used until the SUBx bits in MODE1 are set.
#define SUBADR1       0x02

#define SUBADR2       0x03

#define SUBADR3       0x04

// This register powers up with a value of 0xE0, allowing the user to access
// *all* PCA9685 devices on the bus by writing to address 0x70. This function
// is enabled by default, but can be disabled by clearing the ALLCALL bit in
// MODE1.
#define ALLCALLADR    0x05

// Each channel has two 12-bit registers associated with it: ON and OFF. The
// PCA9685 has an internal 12-bit register which counts from 0-4095 and then
// overflows. When the ON register matches that counter, the pin asserts. When
// the OFF register matches, the pin de-asserts.
#define LED0_ON_L     0x06
#define LED0_ON_H     0x07
#define LED0_OFF_L    0x08
#define LED0_OFF_H    0x09
#define LED1_ON_L     0x0a
#define LED1_ON_H     0x0b
#define LED1_OFF_L    0x0c
#define LED1_OFF_H    0x0d
#define LED2_ON_L     0x0e
#define LED2_ON_H     0x0f
#define LED2_OFF_L    0x10
#define LED2_OFF_H    0x11
#define LED3_ON_L     0x12
#define LED3_ON_H     0x13
#define LED3_OFF_L    0x14
#define LED3_OFF_H    0x15
#define LED4_ON_L     0x16
#define LED4_ON_H     0x17
#define LED4_OFF_L    0x18
#define LED4_OFF_H    0x19
#define LED5_ON_L     0x1a
#define LED5_ON_H     0x1b
#define LED5_OFF_L    0x1c
#define LED5_OFF_H    0x1d
#define LED6_ON_L     0x1e
#define LED6_ON_H     0x1f
#define LED6_OFF_L    0x20
#define LED6_OFF_H    0x21
#define LED7_ON_L     0x22
#define LED7_ON_H     0x23
#define LED7_OFF_L    0x24
#define LED7_OFF_H    0x25
#define LED8_ON_L     0x26
#define LED8_ON_H     0x27
#define LED8_OFF_L    0x28
#define LED8_OFF_H    0x29
#define LED9_ON_L     0x2a
#define LED9_ON_H     0x2b
#define LED9_OFF_L    0x2c
#define LED9_OFF_H    0x2d
#define LED10_ON_L    0x2e
#define LED10_ON_H    0x2f
#define LED10_OFF_L   0x30
#define LED10_OFF_H   0x31
#define LED11_ON_L    0x32
#define LED11_ON_H    0x33
#define LED11_OFF_L   0x34
#define LED11_OFF_H   0x35
#define LED12_ON_L    0x36
#define LED12_ON_H    0x37
#define LED12_OFF_L   0x38
#define LED12_OFF_H   0x39
#define LED13_ON_L    0x3a
#define LED13_ON_H    0x3b
#define LED13_OFF_L   0x3c
#define LED13_OFF_H   0x3d
#define LED14_ON_L    0x3e
#define LED14_ON_H    0x3f
#define LED14_OFF_L   0x40
#define LED14_OFF_H   0x41
#define LED15_ON_L    0x42
#define LED15_ON_H    0x43
#define LED15_OFF_L   0x44
#define LED15_OFF_H   0x45

// These registers allow the user to load *all* the corresponding registers at
// the same time. This is useful for resetting all registers to zero or to a
// common brightness.
#define ALL_LED_ON_L  0xfa
#define ALL_LED_ON_H  0xfb
#define ALL_LED_OFF_L 0xfc
#define ALL_LED_OFF_H 0xfd

// The PRE_SCALE register allows the user to set the PWM frequency. The
// equation for determining this value is
//  PRE_SCALE = ((f_clk)/(4096*f_pwm))-1
// Of course, only positive integers are allowed, and futhermore, a minimum
// value of 3 is enforced on the value in this register.
// f_clk is, by default, 25MHz; external clocks can be applied.
#define PRE_SCALE     0xfe


// Servo angle calculation constants
//  We want to give the user the ability to specify an angle (range 0 to 180)
//  and have a servo simply move to that angle. Thus, we need two constants
//  to do the scaling math: MIN_WIDTH and MAX_WIDTH. A pulse of MIN_WIDTH
//  corresponds to an angle of 0, and MAX_WIDTH of 180. These values can vary
//  across servo models; the defaults here are a swag.
//  Servos expect a pulse train of varying duty cycle and 50Hz frequency; to
//  get that frequency, we want to set the prescaler to 121, which makes the
//  numbers below each represent ~4.5us per count.

#define SERVO_PRESCALER 121
#define MIN_WIDTH 200
#define MAX_WIDTH 450

// Let's make a class!

class pca9685
{
  public:
    // Constructor and destructor
    pca9685(mraa::I2c* pca_port, uint8_t myI2CAddress); //
    ~pca9685(){}; //

    // LED Mode stuff: "LED mode" means open drain, negative width pulses.
    //  Approximately 400Hz. Connect anode to supply, cathode to PWM pin.
    void enableLEDMode();
    // Maps raw percentages (0-100) to weighted PWM pulse widths that will
    //  look to a viewer more or less like the percentage.
    float setChlLEDPercent(uint8_t channel, uint8_t percent);

    // Servo mode stuff: "Servo mode" means open drain (there's a pull-up!),
    //  Positive pulses, 50Hz signals.
    void enableServoMode();
    // Set an angle. By default, this is from 0-180, and the resulting pulses
    //  are from ~900us (200 counts) to ~2000us (450 counts).
    void setChlAngle(uint8_t channel, int16_t angle);
    // Get/set functions for the minimum and maximum values of both angle and
    //  pulse width. This allows the user to tune the range of motion for their
    //  particular servo model as well as for their particular application.
    void setServoAnglePulseLimits(uint16_t minServoPL, uint16_t maxServoPL);
    void getServoAnglePulseLimits(uint16_t* minServoPL, uint16_t* maxServoPL);
    void setServoAngleLimits(int16_t minAngle, int16_t maxAngle);
    void getServoAngleLimits(int16_t* minAngle, int16_t* maxAngle);

    // Set/read for the mode registers. Returns mode2 as MSB and mode1 as LSB.
    //  Sets mode2 with MSB and mode1 with LSB.
    void setModeRegisters(uint16_t modeRegisterValues);
    uint16_t readModeRegisters();

    // Generic set/get functions for time/duty cycle. Broadly speaking, users
    //  should probably use the more application-specific functions for servo
    //  and LED mode, but I'm not the boss of them.
    void setChlDuty(uint8_t channel, float duty);
    void setChlTime(uint8_t channel, uint16_t start, uint16_t stop);
    void setChlStart(uint8_t channel, uint16_t start);
    void setChlStop(uint8_t channel, uint16_t stop);
    void getChlTime(uint8_t channel, uint16_t *start, uint16_t *stop);

    // Prescaler read/write. See above for an explanation of what the prescaler
    //  value represents.
    void setPrescaler(uint8_t prescaler);
    uint8_t getPrescaler();

  private:
    // Abstractions to allow reading/writing arbitrary channel registers.
    void channelWrite(uint8_t channel, uint16_t on, uint16_t off);
    void channelRead(uint8_t channel, uint16_t *on, uint16_t *off);

    // The I2c object from MRAA that holds all our device-specific comm data;
    //  things like port ID, speed, address, etc.
    mraa::I2c* _pca_port;

    uint8_t _myAddress; // I2C address. Defaults to 0x40.

    // These functions take a swag at setting up a prescaler to create an
    //  output signal of the desired frequency. However, the output is SUPER
    //  coarse, so I've made them private to avoid confusing users.
    float setFreq(float freq);
    float getFreq();

    // Minimum/maximum values for servo pulse widths. We default to assuming
    //  that a servo uses pulses from 900-2000us to represent 0-180 degrees;
    //  for many devices that will work fine. However, we provide an API to
    //  allow users to better specify the maximum and minimum values.
    uint16_t _minServoPL, _maxServoPL;
    int16_t _minAngle, _maxAngle;
};

#endif

