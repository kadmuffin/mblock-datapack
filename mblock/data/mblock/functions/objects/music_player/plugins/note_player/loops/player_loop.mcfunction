execute as @s[tag=not_update] at @s positioned ~ ~1 ~ run function mblock:objects/music_player/plugins/note_player/utils/summon_new_direction

execute as @s[tag=!not_update] run function mblock:objects/music_player/plugins/note_player/utils/update_position

execute as @s[tag=!not_update] positioned ~ ~1 ~ run function mblock:objects/music_player/plugins/note_player/utils/block_events