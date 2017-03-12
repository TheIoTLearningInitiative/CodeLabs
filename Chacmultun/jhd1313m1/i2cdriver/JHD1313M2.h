/*
 * JHD1313M2 Driver
 *
 * Copyright (C) 2016 Marco Antonio Salgado Martinez
		      (marco.antonio.salgado.martinez@intel.com
		       ing.marco@gmail.com)
 *
 *	This program is free software; you can redistribute it and/or modify
 *	it under the terms of the GNU General Public License as published by
 *	the Free Software Foundation, version 2 of the License.
 *
 * This driver shows how toimplement a minimal driver for the I2C JHD1313M2
 * RGB-LCD.
 */

#ifndef JHD1313M2_H
#define JHD1313M2_H

#include <linux/kernel.h>
#include <linux/init.h>
#include <linux/module.h>
#include <linux/slab.h>
#include <linux/i2c.h>
#include <linux/stddef.h>
#include <linux/delay.h>
#include <linux/ctype.h>
#include <linux/string.h>
#include <linux/kobject.h>
#include <linux/sysfs.h>


#define TAG "JHD1313M2"
//////////////////////////////////////////////////////////
#define RGB_SLAVE		0x62
#define LCD_SLAVE		0x3E
#define BUS			0x06
#define REG_RED			0x04        // pwm2
#define REG_GREEN		0x03        // pwm1
#define REG_BLUE		0x02        // pwm0
#define REG_MODE1		0x00
#define REG_MODE2		0x01
#define REG_OUTPUT		0x08

// commands
#define LCD_CLEARDISPLAY	0x01
#define LCD_RETURNHOME		0x02
#define LCD_ENTRYMODESET	0x04
#define LCD_DISPLAYCONTROL	0x08
#define LCD_CURSORSHIFT		0x10
#define LCD_FUNCTIONSET 	0x20
#define LCD_SETCGRAMADDR	0x40
#define LCD_SETDDRAMADDR	0x80

// flags for display entry mode
#define LCD_ENTRYRIGHT		0x00
#define LCD_ENTRYLEFT		0x02
#define LCD_ENTRYSHIFTINCREMENT 0x01
#define LCD_ENTRYSHIFTDECREMENT 0x00

// flags for display on/off control
#define LCD_DISPLAYON		0x04
#define LCD_DISPLAYOFF		0x00
#define LCD_CURSORON		0x02
#define LCD_CURSOROFF		0x00
#define LCD_BLINKON		0x01
#define LCD_BLINKOFF		0x00

// flags for display/cursor shift
#define LCD_DISPLAYMOVE 	0x08
#define LCD_CURSORMOVE		0x00
#define LCD_MOVERIGHT		0x04
#define LCD_MOVELEFT		0x00

// flags for function set
#define LCD_8BITMODE		0x10
#define LCD_2LINE		0x08

//////////////////////////////////////////////////////////
uint8_t _displayfunction = 0;
uint8_t _displaycontrol = 0;
uint8_t _displaymode = 0;
uint8_t lines = 2;


/////////////////////////////////////////////////////////


static struct i2c_client * JHD1313M2_RGB_client;
static struct i2c_client * JHD1313M2_LCD_client;
static struct i2c_adapter * JHD1313M2_adapter;
static struct kobject * JHD1313M2_kobject;
char * lcd_text_; //variable to store user space lcd_text data
int rgb_r_; //variable to store the red color from usr space
int rgb_g_; //variable to store the green color from usr space
int rgb_b_; //variable to store the blue color from usr space

/////////////////////////////////////////////////////////
static struct i2c_device_id RGB_device_idtable[] = {
	{ "JHD1313M2_RGB", 0 },
	{ }
};
/**/
static struct i2c_device_id LCD_device_idtable[] = {
	{ "JHD1313M2_LCD", 1 },
	{ }
};

static struct i2c_board_info board_info[] = {

	{.type = "JHD1313M2_RGB",
	.addr = RGB_SLAVE},
	{.type = "JHD1313M2_LCD",
	.addr = LCD_SLAVE},
};
/////////////////////////////////////////////////////////
s32 readWordRegister(struct i2c_client *client, u8 reg);
s32 writeByteRegister(struct i2c_client *client,u8 reg, u8 value);
void clearLCD(struct i2c_client *client);
void writeToLCD(struct i2c_client *client, const char *c);
void set_R_Color(struct i2c_client *client, int r);
void set_G_Color(struct i2c_client *client, int g);
void set_B_Color(struct i2c_client *client, int b);
void initLCD(struct i2c_client *client);
void turnOffRGB(struct i2c_client *client);
void initRGB(struct i2c_client *client);
static ssize_t JHD1313M2_store(struct kobject *kobj, 
		struct kobj_attribute *attr, const char *buf, size_t count);
/////////////////////////////////////////////////////////

static struct kobj_attribute JHD1313M2_attributes[] = {
	__ATTR(lcd_text, 0222, NULL, JHD1313M2_store),
	__ATTR(rgb_r, 0222, NULL, JHD1313M2_store),
	__ATTR(rgb_g, 0222, NULL, JHD1313M2_store),
	__ATTR(rgb_b, 0222, NULL, JHD1313M2_store),
};  
/////////////////////////////////////////////////////////
static int JHD1313M2_RGB_probe(struct i2c_client *client, 
			const struct i2c_device_id *idp);
static int JHD1313M2_LCD_probe(struct i2c_client *client, 
			 const struct i2c_device_id *idp);
static int JHD1313M2_RGB_remove(struct i2c_client *client);
static int JHD1313M2_LCD_remove(struct i2c_client *client);
/////////////////////////////////////////////////////////
static struct i2c_driver JHD1313M2_RGB_driver = {

	.driver = {
		.name ="JHD1313M2_RGB",
		.owner=THIS_MODULE,
		
	},
	.id_table = RGB_device_idtable,
	.probe = JHD1313M2_RGB_probe,
	.remove = JHD1313M2_RGB_remove,
};
static struct i2c_driver JHD1313M2_LCD_driver = {

	.driver = {
		.name ="JHD1313M2_LCD",
		.owner=THIS_MODULE,
		
	},
	.id_table = LCD_device_idtable,
	.probe = JHD1313M2_LCD_probe,
	.remove = JHD1313M2_LCD_remove,
};
/////////////////////////////////////////////////////////
static int __init JHD1313M2_init(void);
static void __exit JHD1313M2_exit(void);

#endif
