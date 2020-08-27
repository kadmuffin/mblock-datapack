function mblock:objects/music_player/plugins/note_player/utils/bpm_accuracy/scale

execute if entity @s[tag=!direct_bpm] run function mblock:objects/music_player/plugins/note_player/utils/compute_bpm
execute if entity @s[tag=direct_bpm] run scoreboard players operation @s mb.true_bpm = @s mb.bpm
execute if entity @s[tag=direct_bpm,tag=!disable_double] run scoreboard players operation @s mb.true_bpm *= .scale mb.true_bpm