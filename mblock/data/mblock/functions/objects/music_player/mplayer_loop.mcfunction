execute as @s[tag=mp_activated] unless entity @e[tag=note_player,distance=0..4] run tag @s remove mp_activated
execute unless score @s mb.bpm_accuracy matches 0.. run function mblock:objects/music_player/xyz_private/set_accuracy_mode
tag @s[tag=!mb_menu] add mb_menu

execute as @s[tag=!runned,tag=!invalid_pos] align xyz positioned ~.5 ~-1.2 ~.5 if block ~ ~.5 ~ note_block[powered=true] run function mblock:objects/music_player/plugins/note_player/summon_player
execute as @s[tag=runned,tag=!invalid_pos] positioned ~ ~-1 ~ if block ~ ~ ~ note_block[powered=false] run tag @s remove runned

execute if entity @s[nbt=!{Item: {id: "minecraft:arrow"}}] run function mblock:objects/music_player/block/end
execute unless block ~ ~-1 ~ note_block run function mblock:objects/music_player/block/end
execute unless block ~ ~ ~ air run function mblock:objects/music_player/block/end

function mblock:objects/music_player/plugins/box_display/main
