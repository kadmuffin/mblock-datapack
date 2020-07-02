# > Vertical
#
# Runs in the y direction and checks
# for blocks in area using x or z axis.

scoreboard players add @s _aparse_tmp 1

function mblock:objects/area_parser/lib/block/check_block
execute if score @s aparse.xsize matches 1.. run function mblock:objects/area_parser/lib/utils/clean_and_run_horiz

execute unless score @s _aparse_tmp < @s aparse.ysize run scoreboard players reset @s _aparse_tmp
execute if score @s _aparse_tmp < @s aparse.ysize positioned ~ ~1 ~ run function mblock:objects/area_parser/lib/movement/vertical
