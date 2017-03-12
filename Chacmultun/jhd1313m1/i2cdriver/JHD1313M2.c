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
 * This driver shows how to implement a minimal driver for the I2C JHD1313M2
 * RGB-LCD.
 */
#include "JHD1313M2.h"

s32 readWordRegister(struct i2c_client *client, u8 reg)
{
	
	s32 res = -1;
	res = i2c_smbus_read_word_data(client, reg);
	if (res < 0)
	{
		/* ERROR HANDLING: i2c transaction failed */
		printk("%s: Error reading reg: 0x%x, code:%d \n",TAG,reg,res);
	}
	return res;
	
}
s32 writeByteRegister(struct i2c_client *client,u8 reg, u8 value)
{
	s32 res = -1;
	res = i2c_smbus_write_byte_data(client, reg, value);
	if (res < 0)
	{
		/* ERROR HANDLING: i2c transaction failed */
		printk("%s: Error reading reg: 0x%x, code:%d \n",TAG,reg,res);
	}
	return res;
}
void clearLCD(struct i2c_client *client)
{
	writeByteRegister(client, 0x00, LCD_CLEARDISPLAY );
	msleep(1);
}
void writeToLCD(struct i2c_client *client, const char *c)
{

	int ascii_val=0;
	int i;
	int s = strlen(c)-1; //this is to avoid writing the last character,
	//because the data received from sysfs buffer has a weird ending char
	for(i = 0 ; i < s; i++)
	{
		ascii_val = toascii(c[i]);				
		writeByteRegister(client, 0x40, ascii_val);
	}
}
void set_R_Color(struct i2c_client *client, int r)
{
	writeByteRegister(client, REG_RED, r);
}
void set_G_Color(struct i2c_client *client, int g)
{
	writeByteRegister(client, REG_GREEN, g);
}
void set_B_Color(struct i2c_client *client, int b)
{
    	writeByteRegister(client, REG_BLUE, b);
}
void setRGBColor(struct i2c_client *client, int r, int g, int b)
{
    	writeByteRegister(client, REG_RED, r);
	writeByteRegister(client, REG_GREEN, g);
    	writeByteRegister(client, REG_BLUE, b);    
}
void initLCD(struct i2c_client *client)
{

	writeByteRegister(client, 0x00, LCD_FUNCTIONSET | LCD_2LINE );
	msleep(10);
	writeByteRegister(client, 0x00,LCD_DISPLAYCONTROL | LCD_DISPLAYON 
						| LCD_CURSORON | LCD_BLINKON );
	msleep(10);
	writeByteRegister(client, 0x00, LCD_CLEARDISPLAY );
	msleep(40);
	writeByteRegister(client, 0x00,LCD_ENTRYMODESET | LCD_ENTRYLEFT 
						| LCD_ENTRYSHIFTDECREMENT );

}

void turnOffRGB(struct i2c_client *client)
{
	setRGBColor(client, 0x00, 0x00, 0x00);	
}
void turnOffLCD(struct i2c_client *client)
{
	
	writeByteRegister(client, 0x00, LCD_DISPLAYCONTROL );
	writeByteRegister(client, 0x00, LCD_CLEARDISPLAY );

}
void initRGB(struct i2c_client *client)
{
    	// backlight init
    	writeByteRegister(client, REG_MODE1, 0);
    	// set LEDs controllable by both PWM and GRPPWM registers
    	writeByteRegister(client, REG_OUTPUT, 0xFF);
    	// set MODE2 values
	writeByteRegister(client, REG_MODE2, 0x20);
	// set the baklight Color to white :)
	setRGBColor(client, 0xFF, 0xFF, 0xFF);//	
}

static ssize_t JHD1313M2_store(struct kobject *kobj, struct kobj_attribute *attr,
                      const char *buf, size_t count)
{
	//printk("%s: Message from user space:  %s\n",__FUNCTION__,buf);
	//printk("%s: attr:  %s\n",__FUNCTION__,attr->attr.name);

	if(strcmp(attr->attr.name,"lcd_text") == 0)
	{
		//sscanf(buf, "%c", lcd_text);
		//snprintf(lcd_text_, sizeof(buf)-1,"%s",buf);
		//buf[sizeof(buf)] = ' ';
		clearLCD(JHD1313M2_LCD_client);	
		writeToLCD(JHD1313M2_LCD_client,buf);
	}
	else if(strcmp(attr->attr.name,"rgb_r") == 0)
	{
		sscanf(buf, "%du", &rgb_r_);
		set_R_Color(JHD1313M2_RGB_client,rgb_r_);
	}
	else if(strcmp(attr->attr.name,"rgb_g") == 0)
	{
		sscanf(buf, "%du", &rgb_g_);
		set_G_Color(JHD1313M2_RGB_client,rgb_g_);
	}
	else if(strcmp(attr->attr.name,"rgb_b") == 0)
	{
		sscanf(buf, "%du", &rgb_b_);
		set_B_Color(JHD1313M2_RGB_client,rgb_b_);
	}
        return count;
}

static int JHD1313M2_RGB_probe(struct i2c_client *client, 
						const struct i2c_device_id *idp)
{
	printk("%s: trying to probe the device (%s)...\n",__FUNCTION__,client->name);
	JHD1313M2_RGB_client = client;	
	initRGB(JHD1313M2_RGB_client);	
	return 0;
}
static int JHD1313M2_LCD_probe(struct i2c_client *client, 
						const struct i2c_device_id *idp)
{
	printk("%s: trying to probe the device (%s)...\n",__FUNCTION__,client->name);
	JHD1313M2_LCD_client = client;	
	initLCD(JHD1313M2_LCD_client);
	writeToLCD(JHD1313M2_LCD_client,"nice!");
	return 0;
}
static int JHD1313M2_RGB_remove(struct i2c_client *client)
{
	printk("%s: trying to remove the device...\n",__FUNCTION__);
	printk("%s: turning OFF rgb device...\n",__FUNCTION__);
	turnOffRGB(client);
	//i2c_unregister_device(client);
	return 0;
}
static int JHD1313M2_LCD_remove(struct i2c_client *client)
{
	printk("%s: trying to remove the device...\n",__FUNCTION__);
	printk("%s: turning OFF lcd device...\n",__FUNCTION__);
	turnOffLCD(client);
	return 0;
}

static int __init JHD1313M2_init(void)
{

	int res_lcd,res_rgb,result;
	printk("%s: Obtaining adapter from bus %d\n",__FUNCTION__,BUS);	
	JHD1313M2_adapter = i2c_get_adapter(BUS);
	printk("%s: creating new device...\n",__FUNCTION__);
	JHD1313M2_RGB_client = i2c_new_device(JHD1313M2_adapter,&board_info[0]);
	JHD1313M2_LCD_client = i2c_new_device(JHD1313M2_adapter,&board_info[1]);
	printk("%s: trying to add the device driver...\n",__FUNCTION__);	
	res_rgb = i2c_add_driver(&JHD1313M2_RGB_driver);
	res_lcd = i2c_add_driver(&JHD1313M2_LCD_driver);
	printk("%s: creating sysfs access...\n",__FUNCTION__);	
	JHD1313M2_kobject = kobject_create_and_add("JHD1313M2", kernel_kobj);
	result = sysfs_create_file(JHD1313M2_kobject,&(JHD1313M2_attributes[0].attr));
	result = sysfs_create_file(JHD1313M2_kobject,&(JHD1313M2_attributes[1].attr));
	result = sysfs_create_file(JHD1313M2_kobject,&(JHD1313M2_attributes[2].attr));
	result = sysfs_create_file(JHD1313M2_kobject,&(JHD1313M2_attributes[3].attr));

	return 0;
	
}

static void __exit JHD1313M2_exit(void)
{

	printk("%s: trying to delete the device drivers...\n",__FUNCTION__);
	i2c_del_driver(&JHD1313M2_RGB_driver);
	i2c_del_driver(&JHD1313M2_LCD_driver);	
        pr_debug ("%s: Module un initialized successfully \n",__FUNCTION__);
        kobject_put(JHD1313M2_kobject);
}


MODULE_AUTHOR("Marco A Salgado Mtz <ing.marco@gmail.com>");
MODULE_DESCRIPTION("I2C JHD1313M2 RGB-LCD");
MODULE_LICENSE("GPL");

module_init(JHD1313M2_init);
module_exit(JHD1313M2_exit);
