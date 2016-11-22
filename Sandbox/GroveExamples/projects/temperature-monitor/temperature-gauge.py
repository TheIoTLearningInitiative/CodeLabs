from time import sleep
import pyupm_servo as s
import pyupm_grove as g

servo = s.ES08A(5)
servo.setAngle(30)
temp = g.GroveTemp(0)
print 'Setting servo at home position'
sleep(1)

if __name__ == '__main__':
        while True:
            angle = (temp.value()*24)-570
            if angle > 180 or angle < 0:
                servo.setAngle(30)
            else:
                servo.setAngle(angle)
            sleep(1.5)
del servo
