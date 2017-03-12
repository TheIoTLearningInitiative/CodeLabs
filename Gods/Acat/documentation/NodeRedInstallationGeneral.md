# General

## MRAA IO Library

> C/C++ library with bindings to JavaScript and Python to interface with the I/O on the Intel® Galileo board, Intel® Edison board, and other platforms. With board detection done at runtime, you can create portable code that works across multiple platforms.

* AIO Sensors requiring an ADC value to be read
* I2C Modules using the i2c bus
* SPI Modules using the SPI bus
* GPIO Modules using GPIOs directly
* PWM Modules using a PWM capable GPIO pin
* UART Modules using a serial connection (RX/TX)

- [MRAA Github](https://github.com/intel-iot-devkit/mraa)

```sh
root@edison:~# opkg install mraa
```

```sh
Upgrading mraa from 1.0.0-r0 to 1.5.1 on root.
Downloading http://iotdk.intel.com/repos/3.5/intelgalactic/opkg/i586//mraa_1.5.1_i586.ipk.
Removing package mraa-dev from root...
Removing package mraa-doc from root...
Removing obsolete file /usr/lib/libmraa.so.1.0.0.
Configuring mraa.
```

## UPM Sensors Library

> High-level repository for sensors and actuators that use libmraa. In other words, UPM gives you easy function calls to use your sensors, such as reading temperature values or writing data to an LCD screen. With over a hundred sensors and more being added, this library speeds up your development time. 

- [UPM Documentation](http://iotdk.intel.com/docs/master/upm/index.html)
- [UPM Sensor Categories](http://iotdk.intel.com/docs/master/upm/modules.html)
- [UPM Github](https://github.com/intel-iot-devkit/upm)
- [UPM Python Examples](https://github.com/intel-iot-devkit/upm/tree/master/examples/python)

```sh
root@edison:~# opkg install upm
```

```sh
Upgrading upm from 0.7.0-r0 to 1.1.0 on root.
Downloading http://iotdk.intel.com/repos/3.5/intelgalactic/opkg/i586//upm_1.1.0_i586.ipk.
Removing package upm-dev from root...
...
Removing obsolete file /usr/lib/python2.7/site-packages/pyupm_grovegprs.py.
Removing obsolete file /usr/lib/python2.7/site-packages/pyupm_lm35.py.
Removing obsolete file /usr/lib/python2.7/site-packages/_pyupm_itg3200.so.
Removing obsolete file /usr/lib/libupm-t6713.so.0.7.0.
Removing obsolete file /usr/lib/libupm-groveultrasonic.so.0.7.0.
Removing obsolete file /usr/lib/libupm-otp538u.so.0.7.0.
Removing obsolete file /usr/lib/python2.7/site-packages/pyupm_maxsonarez.py.
Removing obsolete file /usr/lib/libupm-my9221.so.0.Configuring upm.
Configuring upm.
```

## Npm Update

> npm is the package manager for JavaScript. Find, share, and reuse packages of code from hundreds of thousands of developers — and assemble them in powerful new ways. [Homepage](https://www.npmjs.com/)

- [Npm Getting Started](https://docs.npmjs.com/getting-started/)

```sh
root@edison:~# npm install npm@latest -g
```

```sh
-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/usr/bin/npm -> /usr/lib/node_modules/npm/bin/npm-clis
npm@4.4.1 /usr/lib/node_modules/npm
```

### Npm Libraries

```sh
root@edison:~# npm install npm@latest -g
```

```sh
-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/
> mraa@1.5.1 install /home/root/nodered/node_modules/mraa
> node-gyp rebuild
...
  SOLINK_MODULE(target) Release/obj.target/mraa.node
  COPY Release/mraa.node
make: Leaving directory '/home/root/nodered/node_modules/mraa/build'
mraa@1.5.1 node_modules/mraa
```

### Node-RED galileo-io / edison-io

> Intel Edison & Intel Galileo IO Plugin for Johnny-Five JavaScript Robotics

```sh
root@edison:~/nodered# npm install galileo-io
```

```sh
-\|/-\|/-\|/-\|/-\|/-\|/--\|/-\|/-\|/-\|/-\-\|/-galileo-io@0.10.0 node_modules/galileo-io
��├��─��─ es6-shim@0.35.3
��└��─��─ remapped@0.2.1 (getobject@0.1.0, traverse@0.6.6)
```
