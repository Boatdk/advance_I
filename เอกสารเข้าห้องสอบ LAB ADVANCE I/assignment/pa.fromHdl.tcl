
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name assignment -dir "C:/Users/comeng/Downloads/17/17/assignment/planAhead_run_1" -part xc3s500efg320-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "musicpad.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {musicpad.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top musicpad $srcset
add_files [list {musicpad.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500efg320-4
