name_en = "fast"

--Slicing
z_layer_height_mm = 0.28
use_different_thickness_first_layer=false
z_layer_heigth_first_layer_mm=0.28
print_speed_mm_per_sec=80
perimeter_print_speed_mm_per_sec=print_speed_mm_per_sec
first_layer_print_speed_mm_per_sec=print_speed_mm_per_sec
process_thin_features=false
enable_fit_single_path=true
path_width_speed_adjustment_exponent=3

--Brush 0
extruder_0=0
num_shells_0=2
cover_thickness_mm_0=z_layer_height_mm*2
infill_percentage_0=10
print_perimeter_0=true

--Supports
gen_supports=false
supports_max_bridge_len_mm=10
support_spacing_min_mm=2.0
support_extruder=0
support_print_speed_mm_per_sec=20
support_flow_multiplier=0.8

--Raft
add_raft=false

--Brim
add_brim=true
brim_distance_to_print_mm=1.8
brim_num_contours=3

--Travel
travel_straight=true
travel_max_length_without_retract=20
travel_avoid_top_covers=false
