
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name lab -dir "C:/Users/comeng/Desktop/lab8/lab/planAhead_run_2" -part xc3s200tq144-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "music.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {music.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top music $srcset
add_files [list {music.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s200tq144-4
