I flash with my Pi3b+

Used this guide and changed some Pins
https://www.fission3d.com/guides/flash-bootloader-and-install-firmware-with-raspberry-pi

GPIO config avrdude

    programmer
      id	= "ender_3";
      desc	= "used to flash ender 3 3d printer";
      type	= "linuxgpio";
      reset	= 17;
      sck	= 24;
      mosi	= 23;
      miso	= 18;
    ;

Firmware for Ender 3 with ABL
- Latest Marlin 2.0.x-bugfix
- ABL support
- No SD Card
- LCD Corner Level

