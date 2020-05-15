execute as @e[tag=_scheduled] at @s if score @s _aparse_tmp < @s aparse.ysize run tp ~ ~1 ~
execute as @e[tag=_scheduled] at @s if score @s _aparse_tmp < @s aparse.ysize run function mblock:objects/area_parser/step/movement/vertical
execute if entity @e[tag=_scheduled] run schedule function mblock:objects/area_parser/step/schedule 7t