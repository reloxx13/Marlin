; Ender 3 (Bowden) - End G-code with retract, wipe, lift, and front park

M400 ; Wait for all buffered moves to finish
G92 E0 ; Reset extruder distance before retract
G91 ; Relative positioning

G1 E-3 F3000 ; Retract to reduce stringing / ooze
G1 Z0.5 F2400 ; Lift slightly off the print
G1 X5 Y5 F3000 ; Small wipe move forward/right
G1 X-2 Y-2 F3000 ; Wipe back to break the filament string
G1 Z50 F2400 ; Raise nozzle well clear of the print

G90 ; Absolute positioning

G1 X0 Y{machine_depth} F3000 ; Bring bed forward to present the print
G1 X10 Y{machine_depth} F3000 ; Park front-left with a little edge clearance
M107 ; Part cooling fan off
M104 S0 ; Hotend off
M140 S0 ; Bed off
M84 ; Disable steppers
