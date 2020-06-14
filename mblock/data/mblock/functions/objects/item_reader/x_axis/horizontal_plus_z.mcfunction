scoreboard players add @s _aparse_tmp1 1

function mblock:objects/item_reader/y_axis/prepare_y_axis

execute positioned ~ ~ ~1 if entity @s if score @s _aparse_tmp1 < @s aparse.xsize run function mblock:objects/item_reader/x_axis/horizontal_plus_z
