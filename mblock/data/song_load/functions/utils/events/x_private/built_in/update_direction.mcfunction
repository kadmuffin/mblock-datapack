tag @s add dir_change
tag @s remove valid_dir

execute if score @s mb.dir = @s _aparse.tmp1 run tag @s remove dir_change

execute as @s[tag=dir_change] run function song_load:utils/events/x_private/built_in/x_private/validate_dir
execute as @s[tag=!dir_change] run function song_load:utils/events/x_private/built_in/x_private/update_direction