execute if entity @s[scores={aparse.dir=0}] positioned ~1 ~ ~ run function mblock:objects/area_parser/lib/movement/horizontal_plus_x
execute if entity @s[scores={aparse.dir=1}] positioned ~ ~ ~1 run function mblock:objects/area_parser/lib/movement/horizontal_plus_z

scoreboard players reset @s _aparse_tmp1

execute if entity @s[scores={aparse.dir=0}] positioned ~-1 ~ ~ run function mblock:objects/area_parser/lib/movement/horizontal_neg_x
execute if entity @s[scores={aparse.dir=1}] positioned ~ ~ ~-1 run function mblock:objects/area_parser/lib/movement/horizontal_neg_z

scoreboard players reset @s _aparse_tmp1

