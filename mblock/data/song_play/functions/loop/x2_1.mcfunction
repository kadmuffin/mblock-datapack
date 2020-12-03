scoreboard players add @s sload_tmp2 1
function song_play:state/event

execute if score @s[scores={mb.travel=0..2}] sload_tmp2 >= @s aparse.xsize run particle minecraft:flame ~ ~1 ~ 0 0 0 0 1
execute as @s unless score @s sload_tmp2 >= @s aparse.xsize positioned ~ ~ ~-1 run function song_play:loop/x2_1