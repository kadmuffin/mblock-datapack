scoreboard players operation @s mb.bpm = #bpm _mbtmp

execute as @s[tag=note_player_center] run function mblock:objects/music_player/plugins/note_player/utils/bpm_update
execute as @s[tag=note_player,tag=!note_player_center] run function mblock:utils/x_private/update_bpm