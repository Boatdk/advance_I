
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name alarm -dir "D:/lab6/alarm/planAhead_run_2" -part xc3s200tq144-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "alarmtwodigit.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {alarm.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top alarmtwodigit $srcset
add_files [list {alarmtwodigit.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s200tq144-4
