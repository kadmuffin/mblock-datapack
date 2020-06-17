execute as @s[tag=!runned] align xyz positioned ~.5 ~-1.2 ~.5 if block ~ ~.5 ~ note_block[powered=true] run function mblock:objects/music_player/plugins/note_player/summon_player
execute as @s[tag=runned] align xyz positioned ~.5 ~-1.2 ~.5 if block ~ ~.5 ~ note_block[powered=false] run tag @s remove runned

execute if entity @s[nbt=!{Item:{id:"minecraft:arrow"}}] run function mblock:objects/music_player/block/end
execute unless block ~ ~-1 ~ note_block run function mblock:objects/music_player/block/end
execute unless block ~ ~ ~ air run function mblock:objects/music_player/block/end

function mblock:objects/music_player/plugins/box_display/main
