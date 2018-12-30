#!/bin/bash


avrdude -v -p atmega1284p -c arduino -P /dev/ttyUSB0 -b 115200 -U flash:w:/home/pi/Documents/Ender_3/firmware.hex:i
