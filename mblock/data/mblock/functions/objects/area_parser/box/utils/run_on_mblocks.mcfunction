execute unless entity @e[tag=music_player] run kill @e[tag=_scheduled2]
execute as @e[tag=_scheduled2,limit=3,sort=nearest] at @s run function mblock:objects/area_parser/box/loop/z_step
