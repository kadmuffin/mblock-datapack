execute if score #external_events _mbtmp matches 1.. run function mbe_event:event_call

execute align xyz positioned ~.1 ~.5 ~.1 run function mblock:objects/music_player/plugins/note_player/utils/summon_note

execute as @s[tag=note_player_center] at @s align xyz positioned ~.5 ~.5 ~.5 positioned ~ ~1 ~ if block ~ ~ ~ black_glazed_terracotta run function mblock:objects/music_player/plugins/note_player/block_events/black_glazed_terracotta
execute as @s[tag=note_player_center] at @s align xyz positioned ~.5 ~.5 ~.5 positioned ~ ~1 ~ if block ~ ~ ~ purple_glazed_terracotta run function mblock:objects/music_player/plugins/note_player/block_events/purple_glazed_terracotta
execute as @s[tag=note_player_center] at @s align xyz positioned ~.5 ~.5 ~.5 positioned ~ ~1 ~ if block ~ ~ ~ magenta_glazed_terracotta run function mblock:objects/music_player/plugins/note_player/block_events/magenta_glazed_terracotta
execute as @s[tag=note_player_center] at @s align xyz positioned ~.5 ~.5 ~.5 positioned ~ ~1 ~ if block ~ ~ ~ blue_glazed_terracotta run function mblock:objects/music_player/plugins/note_player/block_events/blue_glazed_terracotta

execute align xyz positioned ~.5 ~.5 ~.5 if block ~ ~-1 ~ redstone_lamp run function mblock:objects/music_player/plugins/note_player/block_events/redstone_lamp

execute if block ~ ~ ~ note_block positioned ~ ~1 ~ if entity @e[type=item_frame,tag=music_player,distance=0..1,limit=1] run function mblock:objects/music_player/plugins/note_player/block_events/music_player_block
