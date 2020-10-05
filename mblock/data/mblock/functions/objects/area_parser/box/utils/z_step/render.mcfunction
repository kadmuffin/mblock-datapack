execute as @s[tag=show_signature] run function mblock:objects/area_parser/box/utils/z_step/calculate_signature

execute as @s[tag=!show_top,tag=!on_center] positioned ~ ~.5 ~ run function mblock:objects/area_parser/box/utils/summon_y
execute as @s[tag=show_top] positioned ~ ~.5 ~ run function mblock:objects/area_parser/box/utils/summon_y

scoreboard players reset @s _aparse.x
execute if entity @a[distance=0..25] run function mblock:objects/area_parser/box/movement/run_x

function mblock:objects/area_parser/checks/block/check_block

tag @s[scores={_aparse.z=2..}] remove no_line