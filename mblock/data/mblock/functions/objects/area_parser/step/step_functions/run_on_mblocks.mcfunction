
execute as @e[tag=_scheduled2,tag=!step_runned,limit=1,sort=nearest] at @s run function mblock:objects/area_parser/step/step_functions/z_step

execute as @e[tag=_scheduled2,tag=!step_runned,limit=1,sort=random,distance=0..35] at @s run function mblock:objects/area_parser/step/step_functions/z_step