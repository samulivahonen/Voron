; Heatsoak gcode
;
; This gcode heats my printer for ABS printing. What it is doing:
; 1. turns off extra fans, sets bed to 117C, homing
; 2. sets printhead middle of bed and 50mm heigth, and turns on part fan
; 3. waits 20min so bed gets to 117C and starts to stabilize
; 4. sets the underbed fans to 100%
; 5. waits 10 minutes so air in chamber gets hot, this is quite important
;    for the next step as otherwise there might be error because bed temp 
;    is dropping too much and not raising fast enough (safety mechanism
;    in Klipper)
; 6. set underbed fans to smaller speed and starts the main air rotation fan
; 7. wait 10 minutes and printer should be around 55C and ready to print
; 8. move printhead around to notify printer operator that heatsoak is ready
;
; Version history
; 2022-04-22, version 1,  initial version

; Turn off extra fans:
SET_FAN_SPEED FAN=underbed SPEED=0 
SET_FAN_SPEED FAN=toptobottom SPEED=0 

SET_HEATER_TEMPERATURE HEATER=heater_bed TARGET=117 ; bed temperature set to 117C
M117 Heatsoaking
G28                                                 ; home
G90                                                 ; set absolute coordinates
G0 X150 Y100 Z50 F20000                             ; move hotend to middle of enclosure
M106 S255                                           ; set part cooling fan to 100%

; 20 minute wait for the bed to get into temperature
M117 20s of 20min
G4 P20000                                           ; wait 20 seconds
M117 40s of 20min
G4 P20000                                           ; wait 20 seconds
M117 1min of 20min
G4 P20000                                           ; wait 20 seconds
M117 1:20 of 20min
G4 P20000                                           ; wait 20 seconds
M117 1:40 of 20min
G4 P20000                                           ; wait 20 seconds
M117 2:00 of 20min
G4 P20000                                           ; wait 20 seconds
M117 2:20 of 20min
G4 P20000                                           ; wait 20 seconds
M117 2:40 of 20min
G4 P20000                                           ; wait 20 seconds
M117 3:00 of 20min
G4 P20000                                           ; wait 20 seconds
M117 3:20 of 20min
G4 P20000                                           ; wait 20 seconds
M117 3:40 of 20min
G4 P20000                                           ; wait 20 seconds
M117 4:00 of 20min
G4 P20000                                           ; wait 20 seconds
M117 4:20 of 20min
G4 P20000                                           ; wait 20 seconds
M117 4:40 of 20min
G4 P20000                                           ; wait 20 seconds
M117 5:00 of 20min
G4 P20000                                           ; wait 20 seconds
M117 5:20 of 20min
G4 P20000                                           ; wait 20 seconds
M117 5:40 of 20min
G4 P20000                                           ; wait 20 seconds
M117 6:00 of 20min
G4 P20000                                           ; wait 20 seconds
M117 6:20 of 20min
G4 P20000                                           ; wait 20 seconds
M117 6:40 of 20min
G4 P20000                                           ; wait 20 seconds
M117 7:00 of 20min
G4 P20000                                           ; wait 20 seconds
M117 7:20 of 20min
G4 P20000                                           ; wait 20 seconds
M117 7:40 of 20min
G4 P20000                                           ; wait 20 seconds
M117 8:00 of 20min
G4 P20000                                           ; wait 20 seconds
M117 8:20 of 20min
G4 P20000                                           ; wait 20 seconds
M117 8:40 of 20min
G4 P20000                                           ; wait 20 seconds
M117 9:00 of 20min
G4 P20000                                           ; wait 20 seconds
M117 9:20 of 20min
G4 P20000                                           ; wait 20 seconds
M117 9:40 of 20min
G4 P20000                                           ; wait 20 seconds
M117 10:00 of 20min
G4 P20000                                           ; wait 20 seconds
M117 10:20 of 20min
G4 P20000                                           ; wait 20 seconds
M117 10:40 of 20min
G4 P20000                                           ; wait 20 seconds
M117 11:00 of 20min
G4 P20000                                           ; wait 20 seconds
M117 11:20 of 20min
G4 P20000                                           ; wait 20 seconds
M117 11:40 of 20min
G4 P20000                                           ; wait 20 seconds
M117 12:00 of 20min
G4 P20000                                           ; wait 20 seconds
M117 12:20 of 20min
G4 P20000                                           ; wait 20 seconds
M117 12:40 of 20min
G4 P20000                                           ; wait 20 seconds
M117 13:00 of 20min
G4 P20000                                           ; wait 20 seconds
M117 13:20 of 20min
G4 P20000                                           ; wait 20 seconds
M117 13:40 of 20min
G4 P20000                                           ; wait 20 seconds
M117 14:00 of 20min
G4 P20000                                           ; wait 20 seconds
M117 14:20 of 20min
G4 P20000                                           ; wait 20 seconds
M117 14:40 of 20min
G4 P20000                                           ; wait 20 seconds
M117 15:00 of 20min
G4 P20000                                           ; wait 20 seconds
M117 15:20 of 20min
G4 P20000                                           ; wait 20 seconds
M117 15:40 of 20min
G4 P20000                                           ; wait 20 seconds
M117 16:00 of 20min
G4 P20000                                           ; wait 20 seconds
M117 16:20 of 20min
G4 P20000                                           ; wait 20 seconds
M117 16:40 of 20min
G4 P20000                                           ; wait 20 seconds
M117 17:00 of 20min
G4 P20000                                           ; wait 20 seconds
M117 16:20 of 20min
G4 P20000                                           ; wait 20 seconds
M117 16:40 of 20min
G4 P20000                                           ; wait 20 seconds
M117 17:00 of 20min
G4 P20000                                           ; wait 20 seconds
M117 17:20 of 20min
G4 P20000                                           ; wait 20 seconds
M117 17:40 of 20min
G4 P20000                                           ; wait 20 seconds
M117 18:00 of 20min
G4 P20000                                           ; wait 20 seconds
M117 18:20 of 20min
G4 P20000                                           ; wait 20 seconds
M117 18:40 of 20min
G4 P20000                                           ; wait 20 seconds
M117 19:00 of 20min
G4 P20000                                           ; wait 20 seconds
M117 19:20 of 20min
G4 P20000                                           ; wait 20 seconds
M117 19:40 of 20min
G4 P20000                                           ; wait 20 seconds

SET_FAN_SPEED FAN=underbed SPEED=1                  ; underbed fans to full speed
M117 20s of 10min
G4 P20000                                           ; wait 20 seconds
M117 40s of 10min
G4 P20000                                           ; wait 20 seconds
M117 1min of 10min
G4 P20000                                           ; wait 20 seconds
M117 1:20 of 10min
G4 P20000                                           ; wait 20 seconds
M117 1:40 of 10min
G4 P20000                                           ; wait 20 seconds
M117 2:00 of 10min
G4 P20000                                           ; wait 20 seconds
M117 2:20 of 10min
G4 P20000                                           ; wait 20 seconds
M117 2:40 of 10min
G4 P20000                                           ; wait 20 seconds
M117 3:00 of 10min
G4 P20000                                           ; wait 20 seconds
M117 3:20 of 10min
G4 P20000                                           ; wait 20 seconds
M117 3:40 of 10min
G4 P20000                                           ; wait 20 seconds
M117 4:00 of 10min
G4 P20000                                           ; wait 20 seconds
M117 4:20 of 10min
G4 P20000                                           ; wait 20 seconds
M117 4:40 of 10min
G4 P20000                                           ; wait 20 seconds
M117 5:00 of 10min
G4 P20000                                           ; wait 20 seconds
M117 5:20 of 10min
G4 P20000                                           ; wait 20 seconds
M117 5:40 of 10min
G4 P20000                                           ; wait 20 seconds
M117 6:00 of 10min
G4 P20000                                           ; wait 20 seconds
M117 6:20 of 10min
G4 P20000                                           ; wait 20 seconds
M117 6:40 of 10min
G4 P20000                                           ; wait 20 seconds
M117 7:00 of 10min
G4 P20000                                           ; wait 20 seconds
M117 7:20 of 10min
G4 P20000                                           ; wait 20 seconds
M117 7:40 of 10min
G4 P20000                                           ; wait 20 seconds
M117 8:00 of 10min
G4 P20000                                           ; wait 20 seconds
M117 8:20 of 10min
G4 P20000                                           ; wait 20 seconds
M117 8:40 of 10min
G4 P20000                                           ; wait 20 seconds
M117 9:00 of 10min
G4 P20000                                           ; wait 20 seconds
M117 9:20 of 10min
G4 P20000                                           ; wait 20 seconds
M117 9:40 of 10min
G4 P20000                                           ; wait 20 seconds

SET_FAN_SPEED FAN=underbed SPEED=0.38               ; slow down the underbed fan to 38% speed (almost no noise / resonance)
SET_HEATER_TEMPERATURE HEATER=heater_bed TARGET=115 ; bed temperature set to 115C (when the main air rotation fan is turned on the temp drops to 111-112C and takes ages to raise back up)

SET_FAN_SPEED FAN=toptobottom SPEED=1               ; turn on the fan sucking hot air from top of enclosure and moving it to bottom
M117 20s of 10min
G4 P20000                                           ; wait 20 seconds
M117 40s of 10min
G4 P20000                                           ; wait 20 seconds
M117 1min of 10min
G4 P20000                                           ; wait 20 seconds
M117 1:20 of 10min
G4 P20000                                           ; wait 20 seconds
M117 1:40 of 10min
G4 P20000                                           ; wait 20 seconds
M117 2:00 of 10min
G4 P20000                                           ; wait 20 seconds
M117 2:20 of 10min
G4 P20000                                           ; wait 20 seconds
M117 2:40 of 10min
G4 P20000                                           ; wait 20 seconds
M117 3:00 of 10min
G4 P20000                                           ; wait 20 seconds
M117 3:20 of 10min
G4 P20000                                           ; wait 20 seconds
M117 3:40 of 10min
G4 P20000                                           ; wait 20 seconds
M117 4:00 of 10min
G4 P20000                                           ; wait 20 seconds
M117 4:20 of 10min
G4 P20000                                           ; wait 20 seconds
M117 4:40 of 10min
G4 P20000                                           ; wait 20 seconds
SET_HEATER_TEMPERATURE HEATER=heater_bed TARGET=117 ; bed temperature set to 117C to get little extra heat to chamber, by this time it usually has stabilized back to 115C
M117 5:00 of 10min
G4 P20000                                           ; wait 20 seconds
M117 5:20 of 10min
G4 P20000                                           ; wait 20 seconds
M117 5:40 of 10min
G4 P20000                                           ; wait 20 seconds
M117 6:00 of 10min
G4 P20000                                           ; wait 20 seconds
M117 6:20 of 10min
G4 P20000                                           ; wait 20 seconds
M117 6:40 of 10min
G4 P20000                                           ; wait 20 seconds
M117 7:00 of 10min
G4 P20000                                           ; wait 20 seconds
M117 7:20 of 10min
G4 P20000                                           ; wait 20 seconds
M117 7:40 of 10min
G4 P20000                                           ; wait 20 seconds
M117 8:00 of 10min
G4 P20000                                           ; wait 20 seconds
M117 8:20 of 10min
G4 P20000                                           ; wait 20 seconds
M117 8:40 of 10min
G4 P20000                                           ; wait 20 seconds
M117 9:00 of 10min
G4 P20000                                           ; wait 20 seconds
M117 9:20 of 10min
G4 P20000                                           ; wait 20 seconds
M117 9:40 of 10min
G4 P20000                                           ; wait 20 seconds
M117 Heatsoak ready

SET_HEATER_TEMPERATURE HEATER=heater_bed TARGET=115 ; bed temperature set to 115C
G90                                                 ; let's move toolhead to alert operator that heatsoak ready
G0 X50 Y50 F40000                                   ; move hotend few times...
G0 X250 Y50 F40000
G0 X250 Y250 F40000
G0 X50 Y250 F40000
G0 X250 Y50 F40000
G0 X250 Y250 F40000
G0 X50 Y50 F40000
; and let's leave to position where it's easy to load filament via reverse boden AND see the nozzle
G0 X299 Y0 F40000                        
M117
