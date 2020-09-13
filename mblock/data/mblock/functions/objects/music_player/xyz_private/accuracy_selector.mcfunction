scoreboard players reset @s mb.bpm_accuracy

execute if score .x_1 _mbtmp matches ..10000 run scoreboard players set @s mb.bpm_accuracy 3
execute if score .x_1 _mbtmp matches 10001..100000 run scoreboard players set @s mb.bpm_accuracy 2
execute if score .x_1 _mbtmp matches 100001..1000000 run scoreboard players set @s mb.bpm_accuracy 1
execute if score .x_1 _mbtmp matches 1000001..8000000 run scoreboard players set @s mb.bpm_accuracy 0

execute if score .z_1 _mbtmp matches ..10000 run scoreboard players set #tmp mb.bpm_accuracy 3
execute if score .z_1 _mbtmp matches 10001..100000 run scoreboard players set #tmp mb.bpm_accuracy 2
execute if score .z_1 _mbtmp matches 100001..1000000 run scoreboard players set #tmp mb.bpm_accuracy 1
execute if score .z_1 _mbtmp matches 1000001..8000000 run scoreboard players set #tmp mb.bpm_accuracy 0

execute if score #tmp mb.bpm_accuracy < @s mb.bpm_accuracy run scoreboard players operation @s mb.bpm_accuracy = #tmp mb.bpm_accuracy
