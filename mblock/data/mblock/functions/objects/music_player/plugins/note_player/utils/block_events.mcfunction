execute if score #external_events _mbtmp matches 1.. run function mbe_event:event_call
execute if block ~ ~ ~ #mb_plugin:event unless entity @e[tag=play_event,distance=0..1,limit=1] run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["play_event", "_play_event_kill"]}

execute align xyz positioned ~.1 ~.5 ~.1 run function mblock:objects/music_player/plugins/note_player/utils/summon_note

execute as @s[tag=note_player_center] at @s align xyz positioned ~.5 ~.5 ~.5 positioned ~ ~1 ~ if block ~ ~ ~ black_glazed_terracotta run function mblock:objects/music_player/plugins/note_player/block_events/black_glazed_terracotta
execute as @s[tag=note_player_center] at @s align xyz positioned ~.5 ~.5 ~.5 positioned ~ ~1 ~ if block ~ ~ ~ purple_glazed_terracotta run function mblock:objects/music_player/plugins/note_player/block_events/purple_glazed_terracotta
execute as @s[tag=note_player_center] at @s positioned ~ ~1 ~ if block ~ ~ ~ magenta_glazed_terracotta run function mblock:objects/music_player/plugins/note_player/block_events/magenta_glazed_terracotta
execute as @s[tag=note_player_center] at @s align xyz positioned ~.5 ~.5 ~.5 positioned ~ ~1 ~ if block ~ ~ ~ blue_glazed_terracotta run function mblock:objects/music_player/plugins/note_player/block_events/blue_glazed_terracotta

execute align xyz positioned ~.5 ~.5 ~.5 if block ~ ~-1 ~ redstone_lamp run function mblock:objects/music_player/plugins/note_player/block_events/redstone_lamp

execute if block ~ ~ ~ note_block positioned ~ ~1 ~ if entity @e[type=item_frame,tag=music_player,distance=0..1,limit=1] run function mblock:objects/music_player/plugins/note_player/block_events/music_player_block
