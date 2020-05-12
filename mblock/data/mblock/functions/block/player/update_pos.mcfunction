execute store result score .x _mbtmp run data get entity @s Pos[0] 100
execute store result score .z _mbtmp run data get entity @s Pos[2] 100

execute if score #dir _mbtmp matches 0 run scoreboard players operation .x _mbtmp -= #BPM _mbtmp
execute if score #dir _mbtmp matches 1 run scoreboard players operation .x _mbtmp += #BPM _mbtmp
execute if score #dir _mbtmp matches 2 run scoreboard players operation .z _mbtmp -= #BPM _mbtmp
execute if score #dir _mbtmp matches 3 run scoreboard players operation .z _mbtmp += #BPM _mbtmp

execute store result entity @s Pos[0] double 0.01 run scoreboard players get .x _mbtmp
execute store result entity @s Pos[2] double 0.01 run scoreboard players get .z _mbtmp

execute store result score #x _mbtmp run data get entity @s[tag=mb_player] Pos[0] 1
execute store result score #z _mbtmp run data get entity @s[tag=mb_player] Pos[2] 1

execute as @s[tag=mb_player] unless score #x _mbtmp = #last_t_x _mbtmp run scoreboard players add #z_travelled _mbtmp 1
execute as @s[tag=mb_player] unless score #z _mbtmp = #last_t_z _mbtmp run scoreboard players add #z_travelled _mbtmp 1

execute as @s[tag=mb_player] run scoreboard players operation #last_t_x _mbtmp = #x _mbtmp
execute as @s[tag=mb_player] run scoreboard players operation #last_t_z _mbtmp = #z _mbtmp