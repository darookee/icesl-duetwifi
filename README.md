# IceSL DuetWifi Hypercube profile

This is a IceSL printer profile for a DuetWifi-powered Hypercube using an Wanhao
i3 MK10 extruder. But that should not matter, as the biggest part of the
configuration happens on the DuetWifi.

It is based on the Wanhao i3 profile that is shipped with IceSL.

## Use of macros

The files in `_macros/` are supposed to be put into the `/sys/` folder of your
DuetWifi SD card, they will be called before and after printing; In the start
and end g-code of the generated g-code file.

## Configuration on the DuetWifi

The material configuration files for IceSL only set the bed temperature as the
material selection feature of the DuetWifi can be used to set the correct
temperatures for each material using the [`G10`](http://reprap.org/wiki/G-code#G10:_Tool_Offset)
command. The generated g-code will include `G10` and `G11`, which means that firmware
retraction will be used. Unfortunately IceSL does not call the `retract` and
`prime` functions with retraction set to 0, so it is set to 0.1, but the actual
retracted amount is configured using [`M207`](http://reprap.org/wiki/G-code#M207:_Set_retract_length).

## Cooling

The Wanhao i3 profile defines a function to cool the print according to the
filament used on previous layer, which this profile is also using. The actual
speeds can be configured with the `fan_speed` variable in `features.lua`.

### Things that could be improved

As far as I can tell there is no way to detect the type of movement IceSL is
generating, so it seems one cannot tell if it is printing a overhang or bridge,
which in turn could be useful to improve cooling.
