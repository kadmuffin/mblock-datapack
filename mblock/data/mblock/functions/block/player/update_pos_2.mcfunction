execute if score #dir _mbtmp1 matches 0 run tp ~-1 ~ ~
execute if score #dir _mbtmp1 matches 1 run tp ~1 ~ ~
execute if score #dir _mbtmp1 matches 2 run tp ~ ~ ~-1
execute if score #dir _mbtmp1 matches 3 run tp ~ ~ ~1

execute store result score #x _mbtmp1 run data get entity @s Pos[0] 1
execute store result score #z _mbtmp1 run data get entity @s Pos[2] 1

execute as @s unless score #x _mbtmp1 = #last_t_x _mbtmp1 run scoreboard players add #z_travelled _mbtmp1 1
execute as @s unless score #z _mbtmp1 = #last_t_z _mbtmp1 run scoreboard players add #z_travelled _mbtmp1 1

execute as @s run scoreboard players operation #last_t_x _mbtmp1 = #x _mbtmp1
execute as @s run scoreboard players operation #last_t_z _mbtmp1 = #z _mbtmp1