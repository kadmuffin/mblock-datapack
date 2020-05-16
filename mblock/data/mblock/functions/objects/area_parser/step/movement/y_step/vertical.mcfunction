# > Vertical
#
# Runs in the y direction and checks
# for blocks in area using x or z axis.

scoreboard players add @s _aparse_tmp 1

execute if score @s aparse.zsize matches ..1 run scoreboard players set @s _aparse_tmp2 0
execute if score @s aparse.zsize matches ..1 run function mblock:objects/area_parser/lib/block/check_block
execute if score @s aparse.zsize matches ..1 if score @s aparse.xsize matches 1.. run function mblock:objects/area_parser/lib/utils/clean_and_run_horiz
execute if score @s aparse.zsize matches 2.. run function mblock:objects/area_parser/lib/utils/clean_and_run_depth

execute unless score @s _aparse_tmp < @s aparse.ysize run kill @s
