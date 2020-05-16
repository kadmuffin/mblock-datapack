
scoreboard players reset @s _aparse_tmp1
execute positioned ~1 ~ ~ if entity @s[tag=x_axis] run function mblock:objects/area_parser/lib/movement/horizontal_plus_x
execute positioned ~ ~ ~1 if entity @s[tag=z_axis] run function mblock:objects/area_parser/lib/movement/horizontal_plus_z

scoreboard players reset @s _aparse_tmp1
execute positioned ~-1 ~ ~ if entity @s[tag=x_axis] run function mblock:objects/area_parser/lib/movement/horizontal_neg_x
execute positioned ~ ~ ~-1 if entity @s[tag=z_axis] run function mblock:objects/area_parser/lib/movement/horizontal_neg_z
scoreboard players reset @s _aparse_tmp1

