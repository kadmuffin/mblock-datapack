function mblock:interface/main

function mblock:box/main
function mblock:objects/note_wand/main
function mblock:objects/music_player/main
function mblock:objects/item_reader/schedules/main
function song_load:main

execute as @a[gamemode=!spectator] at @s run function mblock:block/player/entity/play_blocks

execute as @e[tag=_block] at @s if block ~ ~ ~ air run kill @s
execute as @e[tag=_block] at @s positioned ~ ~ ~ unless entity @e[tag=player,gamemode=!spectator,distance=0..1.6] unless entity @e[nbt={OnGround: 1b},tag=player,tag=extended,distance=0..2.6] positioned ~ ~-1 ~ unless entity @e[nbt={OnGround: 1b},tag=player,tag=extended,distance=0..2.6] positioned ~ ~1 ~ run kill @s

execute unless score schedule_y _aparse_tmp matches 1.. run function mblock:objects/area_parser/step/schedule_y_step
execute unless score schedule_z _aparse_tmp matches 1.. run function mblock:objects/area_parser/step/schedule_z_step
