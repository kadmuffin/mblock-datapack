tag @s add saving_pos

#execute if entity @s[scores={aparse.dir=1}] as @e[tag=note_player_center] if score @s mb_id = @e[tag=saving_pos,limit=1] mb_id at @s run data modify entity @e[tag=saving_pos,limit=1] Pos[0] set from entity @s Pos[0]
#execute if entity @s[scores={aparse.dir=0}] as @e[tag=note_player_center] if score @s mb_id = @e[tag=saving_pos,limit=1] mb_id at @s run data modify entity @e[tag=saving_pos,limit=1] Pos[2] set from entity @s Pos[2]

execute if entity @s[scores={aparse.dir=1}] store result entity @s Pos[0] double 0.0001 as @e[tag=note_player_center] if score @s mb_id = @e[tag=saving_pos,limit=1] mb_id run scoreboard players get @s mb_x_pos
execute if entity @s[scores={aparse.dir=0}] store result entity @s Pos[2] double 0.0001 as @e[tag=note_player_center] if score @s mb_id = @e[tag=saving_pos,limit=1] mb_id run scoreboard players get @s mb_z_pos

#execute store result entity @s[scores={aparse.dir=1}] Pos[0] double 0.001 run scoreboard players get .x _mbtmp
#execute store result entity @s[scores={aparse.dir=0}] Pos[2] double 0.001 run scoreboard players get .z _mbtmp

tag @s remove saving_pos