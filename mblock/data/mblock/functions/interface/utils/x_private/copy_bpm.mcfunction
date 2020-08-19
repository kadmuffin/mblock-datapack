tag @s add copying_bpm

execute as @e[tag=note_player] if score @e[tag=copying_bpm,limit=1] mb_id = @s mb_id run scoreboard players operation @s mb.bpm = @e[tag=copying_bpm,limit=1] mb.bpm
execute as @e[tag=note_player] if score @e[tag=copying_bpm,limit=1] mb_id = @s mb_id run scoreboard players operation @s mb.true_bpm = @e[tag=copying_bpm,limit=1] mb.true_bpm

tag @s remove copying_bpm
