execute if entity @s[scores={mb.dir=2..3}] store result entity @s Pos[0] double 0.001 as @e[tag=note_player_center] if score @s mb.id = @e[tag=saving_pos,limit=1] mb.id run scoreboard players get @s mb_x_pos
execute if entity @s[scores={mb.dir=0..1}] store result entity @s Pos[2] double 0.001 as @e[tag=note_player_center] if score @s mb.id = @e[tag=saving_pos,limit=1] mb.id run scoreboard players get @s mb_z_pos