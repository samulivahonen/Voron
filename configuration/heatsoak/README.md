# Heat soaking

:warning: :warning: :warning:NOTICE/DISCLAIMER! This code is only for reference. Do not copy and use it directly. Your fans etc. are most likely named differently in your Klipper config so it would not work either. :warning: :warning: :warning:

For heat soaking I'm using gcode instead of macro. This is because I can pause and stop gcode, but there is no way of stopping macro or having any indication how many % we are in makro. With gcode all this is possible.

## What the gcode does?
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
9. Park hotend to location where reverse bowden is in good angle for changing filament

## How it works?

### First 20min - just heating the bed
In beginning both chamber and bed in 23.8°C room temperature. It took in my V2.4 about 19 minutes to reach 117°C bed temperature. As can be seen from graph the PWM started to modulate little earlier.
![First 20 minutes of heatsoaking](https://raw.githubusercontent.com/samulivahonen/Voron/main/configuration/heatsoak/images/First20min.png)

NOTICE! There is green (=chamber temperature) and red (=extruder temperature) graph, which are almost same. I have parts fan blowing air from same height in chamber as the chamber thermistor it seems that extruder temperature is quite closely following the chamber temperature. Typically there is 5-10min delay if extruder is heating up only "passively".

### Next 10min - underbed fans
Temperature keeps raising slowly and steadily for this 10min after underbed fans have started blowing air. At end of this phase chamber temperature reaches 48.5°C. On right side of the graphs we see the bed temperature  dropping all the way down to 110°C when the main fan moving air from top of enclosure to bottom of bed.
![Underbed fans stirring air keep raising the temperature](https://raw.githubusercontent.com/samulivahonen/Voron/main/configuration/heatsoak/images/Next20min_underbed_fans.png)

### Last 20min - main air rotation fan blowing
As can be seen from the graph chamber temperature raised nicely 51.8°C at end of this phase. Also at end of the script we drop the bed temperature to 115°C what are used in actual printing, the higher 117°C was used only because it's heating chamber faster.
Notice how the extruder temperature starts to differ radically from the chamber temperature after it's fan started. This is because the extruder/hotend cooling fan is about 6cm closer to the bed compared to chamber temperature. **It is extreme important to measure the chamber temperature from same height as parts cooling fan** - after all we heat the chamber because we want to use part cooling for ABS and other filaments.
![Last 20 minutes of heatsoaking, fans stirring the air in chamber](https://raw.githubusercontent.com/samulivahonen/Voron/main/configuration/heatsoak/images/Last20min.png)

### Temperature after the script
Just leaving machine running 10 minutes raises the chamber temperature to 53.5°C. When the print starts then also hotend will provide additional heat to chamber and we will reach 60°C around same time part fan starts blowing. This is assuming bedmesh is done and print is not tiny (=first layer takes at least few minutes) and part fan is enabled starting from 3rd layer.
![When printing and parts cooling fan starts we have 60C chamber temperature](https://raw.githubusercontent.com/samulivahonen/Voron/main/configuration/heatsoak/images/WhenPrintStartsPartsCoolingFanWeHave60CChamber.png)

### Progress reporting
In Mainsail progress of current phase is reported showing how many minutes gone from current phase.
![In Mainsail progress of current phase is reported showing how many minutes gone from current phase](https://raw.githubusercontent.com/samulivahonen/Voron/main/configuration/heatsoak/images/Mainsail_Progress_reporting.png)

Same information naturally available in the screen of the printer as well. The display has very small space, so can't describe what is happening and that is why we only show the minutes spend in current "phase" of the process
![Progress information shown in the printer's screen](https://raw.githubusercontent.com/samulivahonen/Voron/main/configuration/heatsoak/images/VoronDisplayProgress.jpg)
