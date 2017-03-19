#!/usr/bin/python

from __future__ import absolute_import, print_function, unicode_literals

from optparse import OptionParser, make_option
import os
import errno
import sys
import socket
import uuid
import dbus
import dbus.service
import dbus.mainloop.glib
try:
  from gi.repository import GObject
except ImportError:
  import gobject as GObject

class ArduinoFifo:
	fifofile = -1
	OUT_PIPE_FILE = '/tmp/ble_pipe_out'

	def removeFile(self, filename):
	    try:
	        os.remove(filename)
	    except OSError as e: # this would be "except OSError, e:" before Python 2.6
	        if e.errno != errno.ENOENT: # errno.ENOENT = no such file or directory
	            print(e)
	            raise # re-raise exception if a different error occured

	def createFifo(self):
	    print('removing pipe file\n')
	    self.removeFile(self.OUT_PIPE_FILE)

	    print('making pipe\n')
	    try:
	        os.mkfifo(self.OUT_PIPE_FILE, 0777)
	    except OSError as err:
	        print (err)
	        raise

	def openFifo(self):
	    print('waiting to open pipe\n')
	    try:
	        self.fifofile = os.open(self.OUT_PIPE_FILE, os.O_WRONLY) # | os.O_NONBLOCK)
	    except OSError as err:
	        print (err)

	def writeFifo(self, data):
	    try:
	        if (self.fifofile == -1):
	            openFifo(self)
	        os.write(self.fifofile, data)
	    except OSError as err:
	        print (err)

myfifo = ArduinoFifo()

class Profile(dbus.service.Object):
	fd = -1

	@dbus.service.method("org.bluez.Profile1",
					in_signature="", out_signature="")
	def Release(self):
		print("Release")
		mainloop.quit()

	@dbus.service.method("org.bluez.Profile1",
					in_signature="", out_signature="")
	def Cancel(self):
		print("Cancel")

	@dbus.service.method("org.bluez.Profile1",
				in_signature="oha{sv}", out_signature="")
	def NewConnection(self, path, fd, properties):
		self.fd = fd.take()
		print("NewConnection(%s, %d)" % (path, self.fd))


		server_sock = socket.fromfd(self.fd, socket.AF_UNIX, socket.SOCK_STREAM)
		server_sock.setblocking(1)
		server_sock.send("This is Edison SPP loopback test\nAll data will be loopback\nPlease start:\n")

		myfifo.openFifo()

		print('enter recv loop\n')
		try:
		    while True:
		        data = server_sock.recv(1024)
		        print("received: %s" % data)
		        myfifo.writeFifo(data)
		        #server_sock.send("looping back: %s\n" % data)
		except IOError as err:
		    print (err)
		    pass

		server_sock.close()
		print("all done")



	@dbus.service.method("org.bluez.Profile1",
				in_signature="o", out_signature="")
	def RequestDisconnection(self, path):
		print("RequestDisconnection(%s)" % (path))

		if (self.fd > 0):
			os.close(self.fd)
			self.fd = -1

if __name__ == '__main__':
	dbus.mainloop.glib.DBusGMainLoop(set_as_default=True)

	bus = dbus.SystemBus()

	manager = dbus.Interface(bus.get_object("org.bluez",
				"/org/bluez"), "org.bluez.ProfileManager1")

	option_list = [
			make_option("-C", "--channel", action="store",
					type="int", dest="channel",
					default=None),
			]

	parser = OptionParser(option_list=option_list)

	(options, args) = parser.parse_args()

	options.uuid = "1101"
	options.psm = "3"
	options.role = "server"
	options.name = "Edison SPP Loopback"
	options.service = "spp char loopback"
	options.path = "/foo/bar/profile"
	options.auto_connect = False
	options.record = ""

	profile = Profile(bus, options.path)

	mainloop = GObject.MainLoop()

	opts = {
			"AutoConnect" :	options.auto_connect,
		}

	if (options.name):
		opts["Name"] = options.name

	if (options.role):
		opts["Role"] = options.role

	if (options.psm is not None):
		opts["PSM"] = dbus.UInt16(options.psm)

	if (options.channel is not None):
		opts["Channel"] = dbus.UInt16(options.channel)

	if (options.record):
		opts["ServiceRecord"] = options.record

	if (options.service):
		opts["Service"] = options.service

	if not options.uuid:
		options.uuid = str(uuid.uuid4())

	manager.RegisterProfile(options.path, options.uuid, opts)

	myfifo.createFifo()

	mainloop.run()


