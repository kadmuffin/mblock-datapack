execute store result score length _array_tmp run data get entity @s Item.tag.tmp_2

#data modify entity @s Item.tag.tmp2 set value []

execute if score length _array_tmp matches 1.. run function mblock:objects/item_reader/saving/y_axis/xyz_private/append_items_loop