scoreboard players add @s _aparse_tmp1 1

execute positioned ~ ~-1 ~ run function mblock:objects/item_reader/saving/y_axis/prepare_y_axis

execute positioned ~1 ~ ~ if entity @s if score @s _aparse_tmp1 < @s aparse.xsize run function mblock:objects/item_reader/saving/x_axis/horizontal_plus_x
