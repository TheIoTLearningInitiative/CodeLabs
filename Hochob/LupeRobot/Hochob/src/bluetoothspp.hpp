#ifndef _INTEL_EDISON_BT_SPP_HPP_
#define _INTEL_EDISON_BT_SPP_HPP_

#if 0 // No need for IoT Dev Kit
#if ARDUINO >= 100
 #include "Arduino.h"
#else
 #include "WProgram.h"
#endif
#endif

#define MAX_BUF 4096

class Intel_Edison_BT_SPP {
	public:
	int open();
	int read();
	 char * getBuf();
	~Intel_Edison_BT_SPP();

	private:
	int _fd = -1;
	const char * _pipeName = "/tmp/ble_pipe_out";
	char _buf[MAX_BUF];
};

#endif
