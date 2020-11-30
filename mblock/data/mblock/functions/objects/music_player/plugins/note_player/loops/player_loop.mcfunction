execute as @s[tag=note_player_center] run function mblock:objects/music_player/plugins/note_player/utils/update_center
execute as @s[tag=!note_player_center] run function mblock:objects/music_player/plugins/note_player/utils/update_position

function #mb_plugin:play/loop
execute as @s[tag=note_player_center] align xyz positioned ~.5 ~.5 ~.5 positioned ~ ~1 ~ unless entity @e[tag=_play_event_kill,distance=0..1] run function mblock:objects/music_player/plugins/note_player/block_events/center_events
execute as @s align xyz positioned ~.5 ~.5 ~.5 positioned ~ ~1 ~ run function mblock:objects/music_player/plugins/note_player/utils/block_events
execute as @s[tag=!disable_extended] align xyz positioned ~.5 ~.5 ~.5 run function mblock:objects/music_player/plugins/note_player/utils/run_when_extended