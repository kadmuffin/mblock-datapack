scoreboard players add @e[tag=_run_redstone] _mbtmp 1
execute as @e[tag=_run_redstone,scores={_mbtmp=20..}] at @s run function mblock:objects/music_player/plugins/note_player/utils/setblock_air_and_kill

execute as @e[tag=_note] at @s run function mblock:objects/music_player/plugins/note_player/loops/note_entity
execute if entity @e[tag=note_player] as @e[tag=note_player] at @s run function mblock:objects/music_player/plugins/note_player/loops/player_loop
