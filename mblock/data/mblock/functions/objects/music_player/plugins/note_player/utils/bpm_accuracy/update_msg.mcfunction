execute if score @s mb.bpm_accuracy matches 0 run title @a actionbar [{"text": "Updated Accuracy: ", "color": "gold"},{"text": "Low", "color": "red"}]
execute if score @s mb.bpm_accuracy matches 1 run title @a actionbar [{"text": "Updated Accuracy: ", "color": "gold"},{"text": "Medium", "color": "yellow"}]
execute if score @s mb.bpm_accuracy matches 2 run title @a actionbar [{"text": "Updated Accuracy: ", "color": "gold"},{"text": "Normal", "color": "green"}]
execute if score @s mb.bpm_accuracy matches 3 run title @a actionbar [{"text": "Updated Accuracy: ", "color": "gold"},{"text": "High", "color": "blue"}]

tag @s add updating_accuracy
function mblock:objects/music_player/plugins/note_player/utils/bpm_update

function mblock:objects/music_player/plugins/note_player/utils/bpm_accuracy/set

scoreboard players operation .x_1 _mbtmp = @s mb_x_pos
scoreboard players operation .x_1 _mbtmp /= #decimals _mbtmp
scoreboard players operation .z_1 _mbtmp = @s mb_z_pos
scoreboard players operation .z_1 _mbtmp /= #decimals _mbtmp

scoreboard players operation @s mb_tmpx = .x_1 _mbtmp
scoreboard players operation @s mb_tmpz = .z_1 _mbtmp

function mblock:objects/music_player/plugins/note_player/utils/bpm_update

scoreboard players operation #new_accuracy mb.bpm_accuracy = @s mb.bpm_accuracy
execute as @e[tag=note_player,tag=!updating_accuracy] if score @s mb.id = @e[tag=updating_accuracy,limit=1] mb.id run scoreboard players operation @s mb.bpm_accuracy = #new_accuracy mb.bpm_accuracy

tag @s remove updating_accuracy