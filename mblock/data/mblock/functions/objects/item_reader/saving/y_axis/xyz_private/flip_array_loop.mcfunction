scoreboard players remove length _array_tmp 1

data modify entity @s Item.tag.x_tmp append from entity @s Item.tag.x_tmp[0]
data remove entity @s Item.tag.x_tmp[0]

execute if score length _array_tmp matches 1.. run function mblock:objects/item_reader/saving/y_axis/xyz_private/flip_array_loop