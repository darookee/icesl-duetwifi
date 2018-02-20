-- Hypercube with DuetWifi

version = 1

bed_size_x_mm = 200
bed_size_y_mm = 200
bed_size_z_mm = 240
nozzle_diameter_mm = 0.4

extruder_count = 1

default_fan_speed = 0

first_layer_flag = -1000 -- a magic value

fan_speed = {{first_layer_flag, 0}, -- first layer fan speed
				{10, 255}, -- if 10mm or less was extruded then set the fan speed to 255
				{20, 155} -- if extrusion was >10 but less than 20 set the fan speed to 155
			} -- otherwise use the default_fan_speed


z_layer_height_mm_min = 0.04
z_layer_height_mm_max = nozzle_diameter_mm * 0.75

print_speed_mm_per_sec = 80
print_speed_mm_per_sec_min = 5
print_speed_mm_per_sec_max = 95

bed_temp_degree_c = 50
bed_temp_degree_c_min = 0
bed_temp_degree_c_max = 120

perimeter_print_speed_mm_per_sec_min = print_speed_mm_per_sec*0.5
perimeter_print_speed_mm_per_sec_max = print_speed_mm_per_sec

first_layer_print_speed_mm_per_sec = print_speed_mm_per_sec*0.8
first_layer_print_speed_mm_per_sec_min = print_speed_mm_per_sec*0.5
first_layer_print_speed_mm_per_sec_max = print_speed_mm_per_sec

for i=0,63,1 do
  _G['filament_diameter_mm_'..i] = 1.75
  _G['extruder_temp_degree_c_' ..i] = 220
  _G['extruder_temp_degree_c_'..i..'_min'] = 150
  _G['extruder_temp_degree_c_'..i..'_max'] = 290
  _G['extruder_mix_count_'..i] = 1
  -- priming needs to be set to <> 0 for the retraction
  -- generation function to be called
  _G['filament_priming_mm_'..i] = 0.1
  _G['priming_mm_per_sec_'..i] = 1
end
