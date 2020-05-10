execute store result score .x _mbtmp run data get entity @s Pos[0] 100
execute store result score .z _mbtmp run data get entity @s Pos[2] 100

execute if score #dir _mbtmp matches 0 run scoreboard players operation .x _mbtmp -= #BPM _mbtmp
execute if score #dir _mbtmp matches 1 run scoreboard players operation .x _mbtmp += #BPM _mbtmp
execute if score #dir _mbtmp matches 2 run scoreboard players operation .z _mbtmp -= #BPM _mbtmp
execute if score #dir _mbtmp matches 3 run scoreboard players operation .z _mbtmp += #BPM _mbtmp

execute store result entity @s Pos[0] double 0.01 run scoreboard players get .x _mbtmp
execute store result entity @s Pos[2] double 0.01 run scoreboard players get .z _mbtmp

