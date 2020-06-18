tag @s add player
execute as @s[nbt={OnGround:1b},gamemode=!spectator] at @s positioned ~ ~ ~ align xz positioned ~.5 ~ ~.5 run function mblock:block/player/play_block
execute as @s[nbt={OnGround:1b},gamemode=!spectator] at @s positioned ~ ~-1 ~ align xz positioned ~.5 ~ ~.5 run function mblock:block/player/play_block
execute as @s[nbt={OnGround:0b},gamemode=creative] at @s positioned ~ ~-.45 ~ align xz positioned ~.5 ~ ~.5 if block ~ ~ ~ #mblock:octaves align y positioned ~ ~.5 ~ run function mblock:block/player/play_block
#execute as @s[nbt={OnGround:1b}] at @s positioned ~1 ~ ~ align xz positioned ~.5 ~ ~.5 run function mblock:block/player/play_block
#execute as @s[nbt={OnGround:1b}] at @s positioned ~-1 ~ ~ align xz positioned ~.5 ~ ~.5 run function mblock:block/player/play_block
#execute as @s[nbt={OnGround:1b}] at @s positioned ~ ~ ~1 align xz positioned ~.5 ~ ~.5 run function mblock:block/player/play_block
#execute as @s[nbt={OnGround:1b}] at @s positioned ~ ~ ~-1 align xz positioned ~.5 ~ ~.5 run function mblock:block/player/play_block

#execute as @s at @s positioned ~-1 ~ ~ run function mblock:block/player/play_block
#execute as @s at @s positioned ~ ~ ~1 run function mblock:block/player/play_block
#execute as @s at @s positioned ~ ~ ~-1 run function mblock:block/player/play_block
#execute as @s[nbt={OnGround:1b}] at @s positioned ^2 ^ ^ run function mblock:block/player/play_block
#execute as @s[nbt={OnGround:1b}] at @s positioned ^-2 ^ ^ run function mblock:block/player/play_block
