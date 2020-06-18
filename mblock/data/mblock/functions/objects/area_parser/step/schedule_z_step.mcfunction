scoreboard players set schedule_z _aparse_tmp 1
execute at @r as @e[tag=_scheduled2,limit=2,sort=nearest] at @s run function mblock:objects/area_parser/step/step_functions/z_step
schedule function mblock:objects/area_parser/step/schedule_z_step 3t
