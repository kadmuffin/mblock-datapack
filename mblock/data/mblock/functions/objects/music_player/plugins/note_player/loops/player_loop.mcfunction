execute as @s[tag=note_player_center] run function mblock:objects/music_player/plugins/note_player/utils/update_center
execute as @s[tag=!note_player_center] run function mblock:objects/music_player/plugins/note_player/utils/update_position

execute as @s align xyz positioned ~ ~.5 ~ positioned ~ ~1 ~ run function mblock:objects/music_player/plugins/note_player/utils/block_events
execute as @s[tag=!disable_extended] align xyz positioned ~ ~.5 ~ run function mblock:objects/music_player/plugins/note_player/utils/run_when_extended
