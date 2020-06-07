data modify entity @s Item.tag.x_tmp set value []


execute if entity @s[scores={aparse.dir=0}] positioned ~1 ~ ~ run function mblock:objects/item_reader/saving/x_axis/horizontal_plus_x
execute if entity @s[scores={aparse.dir=1}] positioned ~ ~ ~1 run function mblock:objects/item_reader/saving/x_axis/horizontal_plus_z

function mblock:objects/item_reader/saving/y_axis/flip_array
data modify entity @s Item.tag.data.notes set from entity @s Item.tag.x_tmp
data modify entity @s Item.tag.data.notes append from entity @s Item.tag.middle


scoreboard players reset @s _aparse_tmp1
data modify entity @s Item.tag.x_tmp set value []

execute if entity @s[scores={aparse.dir=0}] positioned ~-1 ~ ~ run function mblock:objects/item_reader/saving/x_axis/horizontal_neg_x
execute if entity @s[scores={aparse.dir=1}] positioned ~ ~ ~-1 run function mblock:objects/item_reader/saving/x_axis/horizontal_neg_z

function mblock:objects/item_reader/saving/y_axis/flip_array
data modify entity @s Item.tag.data.notes append from entity @s Item.tag.x_tmp

scoreboard players reset @s _aparse_tmp1

