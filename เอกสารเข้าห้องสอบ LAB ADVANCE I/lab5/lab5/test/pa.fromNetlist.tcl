
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name test -dir "J:/088/lab5/lab5/test/planAhead_run_1" -part xc3s200tq144-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "J:/088/lab5/lab5/test/ttt.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {J:/088/lab5/lab5/test} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "ttt.ucf" [current_fileset -constrset]
add_files [list {ttt.ucf}] -fileset [get_property constrset [current_run]]
open_netlist_design
