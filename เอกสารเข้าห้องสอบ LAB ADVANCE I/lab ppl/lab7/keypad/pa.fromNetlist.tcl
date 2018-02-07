
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name keypad -dir "C:/Users/comeng/Desktop/lab7/keypad/planAhead_run_1" -part xc3s200tq144-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/comeng/Desktop/lab7/keypad/keypad.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/comeng/Desktop/lab7/keypad} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "keypad.ucf" [current_fileset -constrset]
add_files [list {keypad.ucf}] -fileset [get_property constrset [current_run]]
open_netlist_design
