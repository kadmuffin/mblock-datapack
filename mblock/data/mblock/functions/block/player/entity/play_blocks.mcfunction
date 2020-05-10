tag @s add player
execute as @s[nbt={OnGround:1b}] at @s positioned ~ ~-1 ~ align xyz positioned ~.5 ~ ~.5 run function mblock:block/player/play_block
execute as @s at @s positioned ^1 ^ ^ run function mblock:block/player/play_block
execute as @s at @s positioned ^-1 ^ ^ run function mblock:block/player/play_block
#execute as @s[nbt={OnGround:1b}] at @s positioned ^2 ^ ^ run function mblock:block/player/play_block
#execute as @s[nbt={OnGround:1b}] at @s positioned ^-2 ^ ^ run function mblock:block/player/play_block