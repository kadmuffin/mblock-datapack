execute if entity @s[scores={mb.dir=0..1}] positioned ~1 ~ ~ run function mblock:objects/area_parser/box/movement/x/horizontal_plus_x
execute if entity @s[scores={mb.dir=2..3}] positioned ~ ~ ~1 run function mblock:objects/area_parser/box/movement/x/horizontal_plus_z

scoreboard players reset @s _aparse.x

execute if entity @s[scores={mb.dir=0..1}] positioned ~-1 ~ ~ run function mblock:objects/area_parser/box/movement/x/horizontal_neg_x
execute if entity @s[scores={mb.dir=2..3}] positioned ~ ~ ~-1 run function mblock:objects/area_parser/box/movement/x/horizontal_neg_z

scoreboard players reset @s _aparse.x

