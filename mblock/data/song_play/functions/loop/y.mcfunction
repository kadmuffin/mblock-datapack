execute as @s[scores={mb.dir=0..1}] run function song_play:utils/x_private/x1
execute as @s[scores={mb.dir=2..3}] run function song_play:utils/x_private/x2

execute if score @s sload_tmp matches 1.. run function song_play:state/event

scoreboard players add @s sload_tmp 1
execute unless score @s sload_tmp > @s aparse.ysize positioned ~ ~1 ~ run function song_play:loop/y