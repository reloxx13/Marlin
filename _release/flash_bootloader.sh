#!/bin/bash

sudo avrdude -p atmega1284p -C /home/pi/Documents/Ender_3/avrdude_gpio.conf -c ender_3 -v -U flash:w:/home/pi/Documents/Ender_3/old/optiboot_atmega1284p.hex:i



sudo echo "17" >> /sys/class/gpio/unexport
