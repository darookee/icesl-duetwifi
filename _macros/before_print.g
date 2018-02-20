M116    ; Wait for tools and bed to heat up

G32     ; call bed.g, which basically just does `G29 S1`

; Purge line
G1 Z0.2
G1 Y2 X25 F15000        ; move out of build volume
G1 X175.0 E24 F1200     ; finish purge line
G4 P5000                ; Wait to let the plastic cool a little
G1 X100.0 Y100.0 F15000 ; Move to middle to rip plastic off tip
G92 E0                  ; set reset extruder position to 0
