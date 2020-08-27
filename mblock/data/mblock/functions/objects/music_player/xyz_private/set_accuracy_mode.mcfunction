execute as @s at @s store result score @s mb_x_pos run data get entity @s Pos[0] 1
execute as @s at @s store result score @s mb_z_pos run data get entity @s Pos[2] 1

tag @s remove invalid_pos
scoreboard players reset @s mb.bpm_accuracy

execute if score @s mb_x_pos matches ..10000 run scoreboard players set @s mb.bpm_accuracy 3
execute if score @s mb_x_pos matches 10001..100000 run scoreboard players set @s mb.bpm_accuracy 2
execute if score @s mb_x_pos matches 100001..1000000 run scoreboard players set @s mb.bpm_accuracy 1
execute if score @s mb_x_pos matches 1000001..8000000 run scoreboard players set @s mb.bpm_accuracy 0

execute if score @s mb_z_pos matches ..10000 run scoreboard players set #tmp mb.bpm_accuracy 3
execute if score @s mb_z_pos matches 10001..100000 run scoreboard players set #tmp mb.bpm_accuracy 2
execute if score @s mb_z_pos matches 100001..1000000 run scoreboard players set #tmp mb.bpm_accuracy 1
execute if score @s mb_z_pos matches 1000001..8000000 run scoreboard players set #tmp mb.bpm_accuracy 0

execute if score #tmp mb.bpm_accuracy < @s mb.bpm_accuracy run scoreboard players operation @s mb.bpm_accuracy = #tmp mb.bpm_accuracy

execute unless score @s mb.bpm_accuracy matches 0.. run tellraw @a [{"text": "[MBlock - Error] ", "color": "red"},{"text": "This feature is not supported at [x|z] > 8.000.000 blocks!"}]
execute unless score @s mb.bpm_accuracy matches 0.. run tag @s add invalid_pos

execute as @s[tag=!invalid_pos] if score @s mb.bpm_accuracy matches 0 run title @a actionbar [{"text": "BPM Accuracy: ", "color": "gold"},{"text": "Super Low", "color": "red"}]
execute as @s[tag=!invalid_pos] if score @s mb.bpm_accuracy matches 1 run title @a actionbar [{"text": "BPM Accuracy: ", "color": "gold"},{"text": "Low", "color": "yellow"}]
execute as @s[tag=!invalid_pos] if score @s mb.bpm_accuracy matches 2 run title @a actionbar [{"text": "BPM Accuracy: ", "color": "gold"},{"text": "Medium", "color": "green"}]
execute as @s[tag=!invalid_pos] if score @s mb.bpm_accuracy matches 3 run title @a actionbar [{"text": "BPM Accuracy: ", "color": "gold"},{"text": "High", "color": "blue"}]

execute as @s[tag=invalid_pos] run function mblock:objects/music_player/block/end