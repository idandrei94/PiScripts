#!/usr/bin/python
import RPi.GPIO as gp

gp.setwarnings(False)
gp.setmode(gp.BCM)
gp.setup(20, gp.OUT)
gp.output(20, gp.LOW)
