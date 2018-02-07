
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name couter4 -dir "C:/Users/comeng/Desktop/lab5/couter4/planAhead_run_1" -part xc3s200tq144-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "couter4.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {couter4.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top couter4 $srcset
add_files [list {couter4.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s200tq144-4
