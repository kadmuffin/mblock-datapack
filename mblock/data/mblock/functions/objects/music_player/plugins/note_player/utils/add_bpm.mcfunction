execute as @s[tag=!look_neg,scores={aparse.dir=0}] run scoreboard players operation @s mb_z_pos += @s mb.true_bpm
execute as @s[tag=look_neg,scores={aparse.dir=0}] run scoreboard players operation @s mb_z_pos -= @s mb.true_bpm
execute as @s[tag=!look_neg,scores={aparse.dir=1}] run scoreboard players operation @s mb_x_pos += @s mb.true_bpm
execute as @s[tag=look_neg,scores={aparse.dir=1}] run scoreboard players operation @s mb_x_pos -= @s mb.true_bpm
