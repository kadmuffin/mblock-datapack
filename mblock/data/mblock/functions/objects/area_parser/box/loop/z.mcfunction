function mblock:objects/area_parser/box/utils/tags
function mblock:objects/area_parser/box/utils/z_step/skip_x

function mblock_events:box/main

execute as @s if score @s _aparse.z > @s aparse.zsize run kill @s

execute as @s[tag=!skip_x] run function mblock:objects/area_parser/box/utils/z_step/render

execute as @s[tag=!not_pos_update] run function mblock:objects/area_parser/box/movement/run_z

function mblock:objects/area_parser/box/utils/z_step/steps

tag @s[tag=_not_pos_update] remove _not_pos_update
execute at @s unless entity @e[tag=music_player,distance=0..30] unless entity @a[distance=0..50] run kill @s
execute at @s if entity @e[tag=music_player,distance=0..30] unless entity @a[distance=0..70] run kill @s
