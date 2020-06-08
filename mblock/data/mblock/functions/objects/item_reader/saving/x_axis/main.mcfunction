tag @s add store_on_tmp_2
execute if entity @s[scores={aparse.dir=0}] positioned ~-1 ~ ~ run function mblock:objects/item_reader/saving/x_axis/horizontal_neg_x
execute if entity @s[scores={aparse.dir=1}] positioned ~ ~ ~-1 run function mblock:objects/item_reader/saving/x_axis/horizontal_neg_z

function mblock:objects/item_reader/saving/y_axis/append_items

tag @s remove store_on_tmp_2

scoreboard players reset @s _aparse_tmp1

execute positioned ~ ~-1 ~ run function mblock:objects/item_reader/saving/y_axis/prepare_y_axis

execute if entity @s[scores={aparse.dir=0}] positioned ~1 ~ ~ run function mblock:objects/item_reader/saving/x_axis/horizontal_plus_x
execute if entity @s[scores={aparse.dir=1}] positioned ~ ~ ~1 run function mblock:objects/item_reader/saving/x_axis/horizontal_plus_z

scoreboard players reset @s _aparse_tmp1
