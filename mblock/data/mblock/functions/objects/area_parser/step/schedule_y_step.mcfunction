scoreboard players set schedule_y _aparse_tmp 1

execute as @e[tag=_scheduled] at @s run function mblock:objects/area_parser/step/step_functions/y_step
schedule function mblock:objects/area_parser/step/schedule_y_step 17t
