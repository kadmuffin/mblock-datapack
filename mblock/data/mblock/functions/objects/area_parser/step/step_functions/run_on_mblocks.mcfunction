
execute as @e[tag=_scheduled2,tag=!step_runned,limit=2,sort=nearest] at @s run function mblock:objects/area_parser/step/step_functions/z_step

execute as @e[tag=_scheduled2,tag=!step_runned,limit=1,sort=furthest] at @s run function mblock:objects/area_parser/step/step_functions/z_step
