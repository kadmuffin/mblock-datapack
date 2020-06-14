scoreboard players add @s _aparse_tmp1 1

execute store result score ylength _array_tmp run data get entity @s Item.tag.data.notes[0]

scoreboard players reset estimated_zsize _array_tmp
scoreboard players reset internal_zsize _array_tmp

execute if score ylength _array_tmp matches 1.. positioned ~ ~-1 ~ run function mblock:objects/item_reader/y_axis/y_axis_loop

data remove entity @s Item.tag.data.notes[0]

execute positioned ~ ~ ~1 if entity @s if score @s _aparse_tmp1 < @s aparse.xsize run function mblock:objects/item_reader/x_axis/horizontal_plus_z