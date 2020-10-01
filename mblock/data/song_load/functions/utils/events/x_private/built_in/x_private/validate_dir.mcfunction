execute as @s[scores={mb.dir=0..1}] if score @s _aparse.tmp1 matches 0..1 run tag @s remove dir_change
execute as @s[scores={mb.dir=2..3}] if score @s _aparse.tmp1 matches 2..3 run tag @s remove dir_change

execute as @s[tag=dir_change] run function song_load:utils/events/x_private/built_in/x_private/update_direction