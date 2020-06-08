scoreboard players set #2 _mbtmp 2

execute as @s store result score length _array_tmp run data get entity @s Item.tag.data.notes

scoreboard players operation length _array_tmp /= #2 _mbtmp

#execute as @s[tag=tmpx1] store result score length _array_tmp run data get entity @s Item.tag.x1_tmp
#data modify entity @s Item.tag.tmp2 set value []

execute if score length _array_tmp matches 1.. run function mblock:objects/item_reader/saving/y_axis/xyz_private/flip_array_loop
