scoreboard players add @s sload 1

execute if entity @e[tag=z_pointer,tag=!look_neg,scores={aparse.dir=0}] run tp ~1 ~ ~
execute if entity @e[tag=z_pointer,tag=!look_neg,scores={aparse.dir=1}] run tp ~ ~ ~1

execute if entity @e[tag=z_pointer,tag=look_neg,scores={aparse.dir=0}] run tp ~-1 ~ ~
execute if entity @e[tag=z_pointer,tag=look_neg,scores={aparse.dir=1}] run tp ~ ~ ~-1

function song_load:utils/array/cycle_x