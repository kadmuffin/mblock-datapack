scoreboard players add @s[scores={_aparse_tmp=2..}] _aparse.tmp 1
scoreboard players add @s _aparse.tmp 1

execute if entity @a[distance=0..25] run function mblock:objects/area_parser/checks/block/check_block

execute if entity @s[tag=!on_center] if score @s aparse.xsize matches 1.. run function mblock:objects/area_parser/box/movement/run_x
execute if entity @s[tag=on_center,tag=show_top] if score @s _aparse.tmp >= @s aparse.ysize if score @s aparse.xsize matches 1.. run function mblock:objects/area_parser/box/movement/run_x

execute unless score @s _aparse.tmp < @s aparse.ysize run kill @s
