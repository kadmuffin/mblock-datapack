#scoreboard players operation #tmp mb.bpm_accuracy = @s mb.bpm_accuracy
execute if score @s mb.bpm_accuracy > @s mb.max_accuracy run scoreboard players operation @s mb.bpm_accuracy = @s mb.max_accuracy
function mblock:objects/music_player/plugins/note_player/utils/bpm_accuracy/scale
#scoreboard players operation @s mb.bpm_accuracy = #tmp mb.bpm_accuracy

execute if entity @s[tag=!direct_bpm] run function mblock:objects/music_player/plugins/note_player/utils/compute_bpm
execute if entity @s[tag=direct_bpm] run scoreboard players operation @s mb.true_bpm = @s mb.bpm
execute if entity @s[tag=direct_bpm,tag=!disable_double] run scoreboard players operation @s mb.true_bpm *= .scale mb.true_bpm
