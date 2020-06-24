# > Vertical
#
# Runs in the y direction and checks
# for blocks in area using x or z axis.

scoreboard players add @s[scores={_aparse_tmp=2..}] _aparse_tmp 1

scoreboard players add @s _aparse_tmp 1

function mblock:objects/area_parser/lib/block/check_block

execute if entity @s[tag=!on_center] if score @s aparse.xsize matches 1.. run function mblock:objects/area_parser/lib/utils/clean_and_run_horiz

execute if entity @s[tag=on_center] if score @s _aparse_tmp matches 0..2 if score @s aparse.xsize matches 1.. run function mblock:objects/area_parser/lib/utils/clean_and_run_horiz

execute if entity @s[tag=on_center,tag=show_top] if score @s _aparse_tmp >= @s aparse.ysize if score @s aparse.xsize matches 1.. run function mblock:objects/area_parser/lib/utils/clean_and_run_horiz

execute unless score @s _aparse_tmp < @s aparse.ysize run kill @s
