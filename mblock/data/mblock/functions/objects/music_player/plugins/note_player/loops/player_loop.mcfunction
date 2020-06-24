execute as @s[tag=not_update] at @s run function mblock:objects/music_player/plugins/note_player/utils/summon_new_direction

execute as @s[tag=!not_update,tag=note_player_center] run function mblock:objects/music_player/plugins/note_player/utils/update_center
execute as @s[tag=!not_update,tag=!note_player_center] run function mblock:objects/music_player/plugins/note_player/utils/update_position

execute as @s[tag=!not_update] positioned ~ ~ ~ run function mblock:objects/music_player/plugins/note_player/utils/block_events
execute as @s[tag=!not_update] positioned ~ ~1 ~ run function mblock:objects/music_player/plugins/note_player/utils/block_events
execute as @s[tag=!not_update] positioned ~ ~2 ~ run function mblock:objects/music_player/plugins/note_player/utils/block_events

execute as @s[tag=!not_update,tag=!disable_extended] run function mblock:objects/music_player/plugins/note_player/utils/detect_blocks_expanded

#execute as @s[tag=!not_update] unless block ~ ~1 ~ air positioned ~ ~1 ~ run function mblock:objects/music_player/plugins/note_player/utils/block_events

execute as @s[tag=!not_update] unless entity @e[tag=music_player,limit=1] run kill @s
