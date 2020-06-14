scoreboard players remove length _array_tmp 1

data modify entity @s Item.tag.data.notes insert 0 from entity @s Item.tag.tmp_2[0]
data remove entity @s Item.tag.tmp_2[0]


execute if score length _array_tmp matches 1.. run function mblock:objects/item_reader/saving/y_axis/xyz_private/append_items_loop
