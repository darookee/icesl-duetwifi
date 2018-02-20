M400                     ; Wait for buffer to be cleared

G91                      ; relative positioning
G1 Z+30 E-1              ; move Z up and retract filament 1mm
G90                      ; absolute positioning
G1 X0 Y200 F5600         ; move extruder to the back of the printer

M1                       ; heaters and motors off
M106 S255                ; fan at 100% to cool nozzle
M81 S1                   ; turn off PSU when thermo controlled fans turn off
