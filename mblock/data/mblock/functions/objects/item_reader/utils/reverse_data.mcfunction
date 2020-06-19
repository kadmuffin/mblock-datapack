scoreboard players set #2 _mbtmp 3

execute as @s store result score t_length _array_tmp run data get entity @s Item.tag.data.notes

data modify entity @s[tag=!store_on_tmp_2] Item.tag.tmp set from entity @s Item.tag.data.notes
data modify entity @s[tag=store_on_tmp_2] Item.tag.tmp set from entity @s Item.tag.tmp_2
data modify entity @s[tag=store_on_tmp_2] Item.tag.tmp_3 set from entity @s Item.tag.tmp_2
data modify entity @s Item.tag.tmp_2 set value []

scoreboard players add t_length _array_tmp 1

execute if score t_length _array_tmp matches 2.. run function mblock:objects/item_reader/utils/xyz_private/flip_stage_1

data modify entity @s[tag=!store_on_tmp_2] Item.tag.data.notes set from entity @s Item.tag.tmp_2
data modify entity @s[tag=store_on_tmp_2] Item.tag.data.notes append from entity @s Item.tag.tmp_2
