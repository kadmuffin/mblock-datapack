execute unless entity @e[tag=music_player] run kill @e[tag=_scheduled2]

execute as @e[tag=_scheduled2,tag=!step_executed,limit=1,sort=nearest] at @s run function mblock:objects/area_parser/step/step_functions/z_step

execute as @e[tag=_scheduled2,tag=!step_executed,limit=1,sort=random] at @s run function mblock:objects/area_parser/step/step_functions/z_step
