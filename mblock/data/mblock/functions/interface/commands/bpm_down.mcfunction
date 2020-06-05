scoreboard players remove @s mb.bpm 5

scoreboard players operation @s mb.true_bpm = @s mb.bpm
scoreboard players operation @s mb.true_bpm *= .scale mb.true_bpm
scoreboard players operation @s mb.true_bpm /= .bpm_div mb.true_bpm


tag @s add updating_bpm
execute at @s as @e[tag=note_player] if score @s mb_id = @e[tag=updating_bpm,sort=nearest,limit=1] mb_id run scoreboard players operation @s mb.bpm = @e[tag=updating_bpm,sort=nearest,limit=1] mb.bpm
tag @s remove updating_bpm
