
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name buzzer2 -dir "C:/Users/comeng/Desktop/lab6/buzzer2/planAhead_run_2" -part xc3s200tq144-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "buzzer2.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {buzzer2.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top buzzer2 $srcset
add_files [list {buzzer2.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s200tq144-4
