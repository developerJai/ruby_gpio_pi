import RPi.GPIO as GPIO
import time

GPIO.setmode(GPIO.BCM)
GPIO.setwarnings(False)
GPIO.setup(26,GPIO.OUT)
print("LED on")
GPIO.output(26,GPIO.HIGH)
time.sleep(2)
print("LED off")
GPIO.output(26,GPIO.LOW)
time.sleep(2)
GPIO.output(26,GPIO.HIGH)
time.sleep(2)
GPIO.output(26,GPIO.LOW)
