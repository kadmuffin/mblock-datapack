scoreboard players remove length _array_tmp 1

#data modify entity @s Item.tag.data.notes append from entity @s Item.tag.data.notes[0]
#data remove entity @s Item.tag.data.notes[0]

execute unless score length _array_tmp matches 1.. run data modify entity @s Item.tag.tmp_2 append from entity @s Item.tag.tmp[0]
data remove entity @s Item.tag.tmp[0]

execute if score length _array_tmp matches 1.. run function mblock:objects/item_reader/utils/xyz_private/flip_stage_2
