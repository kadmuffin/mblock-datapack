execute as @s[scores={mb.dir=0}] run scoreboard players operation @s mb_z_pos += @s mb.true_bpm
execute as @s[scores={mb.dir=1}] run scoreboard players operation @s mb_z_pos -= @s mb.true_bpm
execute as @s[scores={mb.dir=3}] run scoreboard players operation @s mb_x_pos += @s mb.true_bpm
execute as @s[scores={mb.dir=2}] run scoreboard players operation @s mb_x_pos -= @s mb.true_bpm
