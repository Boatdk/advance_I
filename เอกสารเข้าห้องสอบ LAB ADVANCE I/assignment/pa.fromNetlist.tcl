
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name assignment -dir "C:/Users/comeng/Downloads/17/17/assignment/planAhead_run_1" -part xc3s200tq144-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/comeng/Downloads/17/17/assignment/musicpad.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/comeng/Downloads/17/17/assignment} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "musicpad.ucf" [current_fileset -constrset]
add_files [list {musicpad.ucf}] -fileset [get_property constrset [current_run]]
open_netlist_design
