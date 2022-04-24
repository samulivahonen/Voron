For heat soaking I'm using gcode instead of macro. This is because I can pause and stop gcode, but there is no way of stopping macro or even seeing how it's progressing.

This gcode heats my printer for ABS printing. What it is doing:
1. turns off extra fans, sets bed to 117C, homing
2. sets printhead middle of bed and 50mm heigth, and turns on part fan
3. waits 20min so bed gets to 117C and starts to stabilize
4. sets the underbed fans to 100%
5. waits 10 minutes so air in chamber gets hot, this is quite important
   for the next step as otherwise there might be error because bed temp 
   is dropping too much and not raising fast enough (safety mechanism
   in Klipper)
6. set underbed fans to smaller speed and starts the main air rotation fan
7. wait 10 minutes and printer should be around 55C and ready to print
8. move printhead around to notify printer operator that heatsoak is ready
