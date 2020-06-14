
function mblock:objects/note_wand/main
function mblock:objects/music_player/main
function mblock:objects/item_reader/schedules/main

execute as @a[tag=player] at @s run function mblock:block/player/entity/play_blocks
#function mblock:block/player/entity/kill_away

execute as @e[tag=_block] at @s if block ~ ~ ~ air run kill @s
execute as @e[tag=_block] at @s positioned ~ ~ ~ unless entity @e[tag=player,distance=0..1.2] run kill @s
