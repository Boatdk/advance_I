
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name test -dir "F:/lab8/test/planAhead_run_2" -part xc3s200tq144-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "F:/lab8/test/dd.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {F:/lab8/test} }
set_property target_constrs_file "dd.ucf" [current_fileset -constrset]
add_files [list {dd.ucf}] -fileset [get_property constrset [current_run]]
open_netlist_design
