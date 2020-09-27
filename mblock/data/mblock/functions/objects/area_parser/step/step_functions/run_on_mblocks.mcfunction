execute unless entity @e[tag=music_player] run kill @e[tag=_scheduled2]

execute as @e[tag=_scheduled2,limit=2,sort=nearest] at @s run function mblock:objects/area_parser/step/step_functions/z_step
execute as @e[tag=box_render,tag=z_step,limit=2,sort=nearest] at @s run function mblock:box/loop/main

#execute as @e[tag=_scheduled2,tag=!step_executed,limit=1,sort=random] at @s run function mblock:objects/area_parser/step/step_functions/z_step
