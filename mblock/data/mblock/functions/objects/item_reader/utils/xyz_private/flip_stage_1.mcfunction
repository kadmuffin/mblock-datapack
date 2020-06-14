scoreboard players remove t_length _array_tmp 1

scoreboard players operation length _array_tmp = t_length _array_tmp
#execute as @s store result score length _array_tmp run data get entity @s Item.tag.data.notes
data modify entity @s[tag=!store_on_tmp_2] Item.tag.tmp set from entity @s Item.tag.data.notes
data modify entity @s[tag=store_on_tmp_2] Item.tag.tmp set from entity @s Item.tag.tmp_3
function mblock:objects/item_reader/utils/xyz_private/flip_stage_2

execute if score t_length _array_tmp matches 1.. run function mblock:objects/item_reader/utils/xyz_private/flip_stage_1
