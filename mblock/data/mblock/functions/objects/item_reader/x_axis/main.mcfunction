scoreboard players operation #xsize aparse.xsize = @s aparse.xsize
scoreboard players reset @s _aparse_tmp1


execute positioned ~ ~1 ~ run function mblock:objects/item_reader/x_axis/get_x1_row

scoreboard players reset @s _aparse_tmp1


tag @s add on_y_zero
tag @s add y_zero
function mblock:objects/item_reader/y_axis/prepare_y_axis
tag @s remove on_y_zero
tag @s remove y_zero


scoreboard players set #xsize aparse.xsize -1
scoreboard players reset @s _aparse_tmp1

execute positioned ~ ~1 ~ run function mblock:objects/item_reader/x_axis/get_x2_row

scoreboard players reset @s _aparse_tmp1
