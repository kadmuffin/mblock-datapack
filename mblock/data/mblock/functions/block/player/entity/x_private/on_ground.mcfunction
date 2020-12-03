tag @s remove flying

execute as @s[gamemode=!spectator] at @s positioned ~ ~-1 ~ align xyz positioned ~.5 ~.5 ~.5 run function mblock:block/player/play_block

execute as @s[tag=extended] run function mblock:block/player/entity/x_private/extended