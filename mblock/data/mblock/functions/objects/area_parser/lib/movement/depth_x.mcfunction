scoreboard players add @s _aparse_tmp2 1

function mblock:objects/area_parser/lib/block/check_block
execute if score @s aparse.xsize matches 1.. run function mblock:objects/area_parser/lib/utils/clean_and_run_horiz

execute positioned ~ ~ ~1 if score @s[tag=!look_neg] _aparse_tmp2 < @s aparse.zsize run function mblock:objects/area_parser/lib/movement/depth_x
execute positioned ~ ~ ~-1 if score @s[tag=look_neg] _aparse_tmp2 < @s aparse.zsize run function mblock:objects/area_parser/lib/movement/depth_x