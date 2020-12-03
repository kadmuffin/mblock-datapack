execute unless entity @e[tag=_play_event_kill,distance=0..0.5,limit=1] run function #mb_plugin:play/event
execute if block ~ ~ ~ #mb_plugin:event unless entity @e[tag=play_event,distance=0..0.5,limit=1] run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["play_event", "_play_event_kill"]}

execute align xyz positioned ~.5 ~.5 ~.5 run function mblock:objects/music_player/plugins/note_player/utils/summon_note

execute if block ~ ~-1 ~ redstone_lamp run function mblock:objects/music_player/plugins/note_player/block_events/redstone_lamp

execute if block ~ ~ ~ note_block positioned ~ ~1 ~ if entity @e[type=item_frame,tag=music_player,distance=0..1,limit=1] run function mblock:objects/music_player/plugins/note_player/block_events/music_player_block
