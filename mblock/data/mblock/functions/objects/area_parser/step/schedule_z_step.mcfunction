tag @e[tag=step_executed] remove step_executed
scoreboard players set schedule_z _aparse_tmp 1

execute at @r if entity @e[tag=_scheduled2] run function mblock:objects/area_parser/step/step_functions/run_on_mblocks

execute unless score #render_speed _aparse_tmp matches 1.. run schedule function mblock:objects/area_parser/step/schedule_z_step 4t
execute if score #render_speed _aparse_tmp matches 1 run schedule function mblock:objects/area_parser/step/schedule_z_step 2t
execute if score #render_speed _aparse_tmp matches 2.. run schedule function mblock:objects/area_parser/step/schedule_z_step 1t
