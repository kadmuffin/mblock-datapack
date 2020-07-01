tag @e[tag=step_executed] remove step_executed
scoreboard players set schedule_z _aparse_tmp 1

execute at @r run function mblock:objects/area_parser/step/step_functions/run_on_mblocks

schedule function mblock:objects/area_parser/step/schedule_z_step 4t
