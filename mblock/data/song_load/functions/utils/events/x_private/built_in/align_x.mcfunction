scoreboard players add @s _aparse_tmp5 1

execute as @s[scores={mb.dir=0}] at @s run tp ~-1 ~ ~
execute as @s[scores={mb.dir=1}] at @s run tp ~1 ~ ~

execute as @s[scores={mb.dir=2}] at @s run tp ~ ~ ~1
execute as @s[scores={mb.dir=3}] at @s run tp ~ ~ ~-1


execute as @s at @s if score @s _aparse_tmp5 <= @s _aparse_tmp6 run function song_load:utils/events/x_private/built_in/align_x