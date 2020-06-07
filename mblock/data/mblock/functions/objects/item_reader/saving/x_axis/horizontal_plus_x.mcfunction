scoreboard players add @s _aparse_tmp1 1
scoreboard players operation ylength _array_tmp = @e[tag=music_player,sort=nearest,limit=1] aparse.ysize

scoreboard players reset estimated_zsize _array_tmp
scoreboard players reset internal_zsize _array_tmp

execute positioned ~ ~-1 ~ run function mblock:objects/item_reader/saving/y_axis/y_axis_loop

data modify entity @s Item.tag.x_tmp append from entity @s Item.tag.data.notes
data modify entity @s Item.tag.data.notes set value []

execute positioned ~1 ~ ~ if entity @s if score @s _aparse_tmp1 < @s aparse.xsize run function mblock:objects/item_reader/saving/x_axis/horizontal_plus_x
