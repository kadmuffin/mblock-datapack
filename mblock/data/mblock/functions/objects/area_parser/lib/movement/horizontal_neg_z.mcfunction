scoreboard players add @s _aparse_tmp1 1

function mblock:objects/area_parser/lib/block/check_block

execute positioned ~ ~ ~-1 if score @s _aparse_tmp1 < @s aparse.xsize run function mblock:objects/area_parser/lib/movement/horizontal_neg_z