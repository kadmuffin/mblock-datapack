#function mblock:objects/item_reader/utils/reverse_data

execute if entity @s[scores={aparse.dir=0}] positioned ~-1 ~ ~ run function mblock:objects/item_reader/x_axis/horizontal_neg_x
execute if entity @s[scores={aparse.dir=1}] positioned ~ ~ ~-1 run function mblock:objects/item_reader/x_axis/horizontal_neg_z

scoreboard players reset @s _aparse_tmp1

tag @s add on_y_zero
tag @s add y_zero
function mblock:objects/item_reader/y_axis/prepare_y_axis
tag @s remove on_y_zero
tag @s remove y_zero

execute if entity @s[scores={aparse.dir=0}] positioned ~1 ~ ~ run function mblock:objects/item_reader/x_axis/horizontal_plus_x
execute if entity @s[scores={aparse.dir=1}] positioned ~ ~ ~1 run function mblock:objects/item_reader/x_axis/horizontal_plus_z

scoreboard players reset @s _aparse_tmp1
