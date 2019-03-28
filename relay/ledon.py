#!/usr/bin/python
import RPi.GPIO as gp

gp.setwarnings(False)
gp.setmode(gp.BCM)
gp.setup(21, gp.OUT)
gp.output(21, gp.HIGH)
