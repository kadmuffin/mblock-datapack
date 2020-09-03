scoreboard players add @s sload 1
scoreboard players set @s sload_run 0

execute store result bossbar song_load:progress value run scoreboard players get @s sload

function song_load:utils/tp/x_private/main_movement
