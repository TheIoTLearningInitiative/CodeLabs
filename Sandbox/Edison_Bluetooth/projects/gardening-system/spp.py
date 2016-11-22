#!/usr/bin/python

# Python modules imports
from optparse import OptionParser, make_option
import pyupm_grove as g
import os, sys, socket, uuid, dbus, dbus.service
import dbus.mainloop.glib
#import gardening_system
try:
  from gi.repository import GObject
except ImportError:
  import gobject as GObject

# Set up constants
BUS_NAME = 'org.bluez'
AGENT_INTERFACE = 'org.bluez.Agent1'
PROFILE_INTERFACE = 'org.bluez.Profile1'

# Trusted device function
def set_trusted(path):
    props = dbus.Interface(bus.get_object("org.bluez", path), "org.freedesktop.DBus.Properties")
    props.Set("org.bluez.Device1", "Trusted", True)

# Agent class
class Agent(dbus.service.Object):
    @dbus.service.method(AGENT_INTERFACE, in_signature="ou", out_signature="")
    def RequestConfirmation(self, device, passkey):
        print("\nEnsure this passkey matches with the one in your device: %06d\nPress [ENTER] to continue" % passkey)
        set_trusted(device)
        return

#Profile class
class Profile(dbus.service.Object):
	fd = -1
	@dbus.service.method(PROFILE_INTERFACE, in_signature="oha{sv}", out_signature="")
	def NewConnection(self, path, fd, properties):
		self.fd = fd.take()
                device_path = os.path.basename(path)
		print("\nConnected to %s\nPress [ENTER] to continue" % device_path)

		server_sock = socket.fromfd(self.fd, socket.AF_UNIX, socket.SOCK_STREAM)
		server_sock.settimeout(1)
		server_sock.send("Hello, this is Edison!")
		try:
		    while True:
                        try:
                            data = server_sock.recv(1024)
                            gardening_system.function(data)
                            if data == 'b':
                                server_sock.send(gardening_system.requestData())
                        except socket.timeout:
                            pass
                        gardening_system.myProgram()
		except IOError:
		    pass
		server_sock.close()
                print("\nYour device is now disconnected\nPress [ENTER] to continue")

def bluetoothConnection():
    dbus.mainloop.glib.DBusGMainLoop(set_as_default=True)
    bus = dbus.SystemBus()
    obj = bus.get_object(BUS_NAME, "/org/bluez");
    profile_manager = dbus.Interface(obj, "org.bluez.ProfileManager1")
    profile_path = "/foo/bar/profile"
    auto_connect = {"AutoConnect": False}
    profile_uuid = "1101"
    profile = Profile(bus, profile_path)
    profile_manager.RegisterProfile(profile_path, profile_uuid, auto_connect)
    mainloop = GObject.MainLoop()
    mainloop.run()

if __name__ == '__main__':
        
        # Generic dbus config
        dbus.mainloop.glib.DBusGMainLoop(set_as_default=True)
	bus = dbus.SystemBus()
        obj = bus.get_object(BUS_NAME, "/org/bluez");

        # Agent config
        agent_capability = "KeyboardDisplay"
        agent_path = "/test/agent"
        agent = Agent(bus, agent_path)
        agent_manager = dbus.Interface(obj, "org.bluez.AgentManager1")
        agent_manager.RegisterAgent(agent_path, agent_capability)
        agent_manager.RequestDefaultAgent(agent_path)

        # Mainloop
	mainloop = GObject.MainLoop()
	mainloop.run()
