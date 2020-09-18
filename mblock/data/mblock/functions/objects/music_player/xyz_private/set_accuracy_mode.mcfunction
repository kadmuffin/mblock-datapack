execute as @s at @s store result score .x_1 _mbtmp run data get entity @s Pos[0] 1
execute as @s at @s store result score .z_1 _mbtmp run data get entity @s Pos[2] 1

tag @s remove invalid_pos

function mblock:objects/music_player/xyz_private/accuracy_selector

execute unless score @s mb.bpm_accuracy matches 0.. run tellraw @a ["",{"text": "[MBlock - Error] ", "color": "red"},{"text": "This feature is not supported at [x|z] > 8.000.000 blocks!"}]
execute unless score @s mb.bpm_accuracy matches 0.. run tag @s add invalid_pos

execute as @s[tag=!invalid_pos] if score @s mb.bpm_accuracy matches 0 run title @a actionbar [{"text": "BPM Accuracy: ", "color": "gold"},{"text": "Low", "color": "red"}]
execute as @s[tag=!invalid_pos] if score @s mb.bpm_accuracy matches 1 run title @a actionbar [{"text": "BPM Accuracy: ", "color": "gold"},{"text": "Medium", "color": "yellow"}]
execute as @s[tag=!invalid_pos] if score @s mb.bpm_accuracy matches 2 run title @a actionbar [{"text": "BPM Accuracy: ", "color": "gold"},{"text": "Normal", "color": "green"}]
execute as @s[tag=!invalid_pos] if score @s mb.bpm_accuracy matches 3 run title @a actionbar [{"text": "BPM Accuracy: ", "color": "gold"},{"text": "High", "color": "blue"}]
execute as @s[tag=!invalid_pos] run scoreboard players set @s mb.max_accuracy 4

execute as @s[tag=invalid_pos] run function mblock:objects/music_player/block/end