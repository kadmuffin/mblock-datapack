#execute as @e[tag=not_update] at @s run function mblock:objects/music_player/plugins/note_player/utils/summon_new_direction

scoreboard players add @e[tag=_play_event_lg] _mbtmp 1
scoreboard players add @e[tag=_run_redstone] _mbtmp 1
execute as @e[tag=_run_redstone,scores={_mbtmp=20..}] at @s run function mblock:objects/music_player/plugins/note_player/utils/setblock_air_and_kill

execute if entity @e[tag=note_player] as @e[tag=note_player_center,tag=!light_render_center,tag=!not_update] at @s run function mblock:objects/music_player/plugins/note_player/loops/player_loop
execute if entity @e[tag=note_player] as @e[tag=note_player,tag=!light_render_center,tag=!note_player_center,tag=!not_update] at @s run function mblock:objects/music_player/plugins/note_player/loops/player_loop
execute as @e[tag=_note,tag=!_note_lg] at @s align xyz positioned ~.5 ~.5 ~.5 run function mblock:objects/music_player/plugins/note_player/loops/note_entity
