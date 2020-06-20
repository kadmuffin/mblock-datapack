function mblock:interface/main

function mblock:objects/note_wand/main
function mblock:objects/music_player/main
function mblock:objects/item_reader/schedules/main

execute as @a at @s run function mblock:block/player/entity/play_blocks
#function mblock:block/player/entity/kill_away

execute as @e[tag=_block] at @s if block ~ ~ ~ air run kill @s
execute as @e[tag=_block] at @s positioned ~ ~ ~ unless entity @e[tag=player,distance=0..1.6] unless entity @e[tag=player,tag=extended,distance=0..2.6] positioned ~ ~-1 ~ unless entity @e[tag=player,tag=extended,distance=0..2.6] positioned ~ ~1 ~ run kill @s

execute unless score schedule_y _aparse_tmp matches 1.. run function mblock:objects/area_parser/step/schedule_y_step
execute unless score schedule_z _aparse_tmp matches 1.. run function mblock:objects/area_parser/step/schedule_z_step
