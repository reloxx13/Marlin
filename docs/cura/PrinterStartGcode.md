; Ender 3 Custom Start G-code
; Uses the mesh already stored in EEPROM (M420 S1).
; If you want to probe a fresh mesh every print, replace M420 S1 with G29.

G92 E0 ; Reset extruder distance
M220 S100 ; Reset feedrate override
M221 S100 ; Reset flow override
M140 S{material_bed_temperature_layer_0} ; Start heating bed
M104 S170 ; Preheat nozzle to reduce total wait time without excessive ooze

M190 S{material_bed_temperature_layer_0} ; Wait for bed temperature
G28 ; Home all axes
M420 S1 ; Enable saved bilinear mesh after homing
M109 S{material_print_temperature_layer_0} ; Wait for nozzle temperature

G1 Z5 F3000 ; Lift before moving
G1 X2 Y20 F5000 ; Go to purge start
G1 Z0.20 F1200 ; Use a more realistic first-layer purge height
G1 X2 Y180 E12 F1200 ; Draw the first prime line
G1 X2.6 Y180 F5000 ; Move sideways a little
G1 X2.6 Y20 E12 F1200 ; Draw the second prime line
G1 Z0.6 F1200 ; Lift slightly before the wipe move
G1 X7 Y20 F5000 ; Move aside to wipe off the nozzle
G1 X10 Y20 F5000 ; Extra wipe move before the print starts
G1 Z0.28 F1200 ; Approach the print start height cleanly
G92 E0 ; Reset extruder distance again
