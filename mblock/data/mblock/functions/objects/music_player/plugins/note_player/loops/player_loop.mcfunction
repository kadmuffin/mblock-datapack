execute as @s[tag=not_update] at @s run function mblock:objects/music_player/plugins/note_player/utils/summon_new_direction

execute as @s[tag=!not_update] run function mblock:objects/music_player/plugins/note_player/utils/update_position

execute as @s[tag=!not_update] unless block ~ ~1 ~ air positioned ~ ~1 ~ run function mblock:objects/music_player/plugins/note_player/utils/block_events

execute as @s[tag=!not_update] unless entity @e[tag=music_player,limit=1] run kill @s
