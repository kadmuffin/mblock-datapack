execute at @s positioned ~ ~ ~0.75 align xyz positioned ~.5 ~.5 ~.5 run function mblock:block/player/play_block
execute at @s positioned ~ ~ ~-0.75 align xyz positioned ~.5 ~.5 ~.5 run function mblock:block/player/play_block

execute at @s if block ~ ~ ~0.75 air positioned ~ ~ ~1.75 align xyz positioned ~.5 ~.5 ~.5 run function mblock:block/player/play_block
execute at @s if block ~ ~ ~-0.75 air positioned ~ ~ ~-1.75 align xyz positioned ~.5 ~.5 ~.5 run function mblock:block/player/play_block

execute at @s if block ~ ~ ~0.75 air positioned ~ ~1 ~1.75 align xyz positioned ~.5 ~.5 ~.5 run function mblock:block/player/play_block
execute at @s if block ~ ~ ~-0.75 air positioned ~ ~1 ~-1.75 align xyz positioned ~.5 ~.5 ~.5 run function mblock:block/player/play_block

execute at @s positioned ~ ~-1 ~0.75 align xyz positioned ~.5 ~.5 ~.5 run function mblock:block/player/play_block
execute at @s positioned ~ ~-1 ~-0.75 align xyz positioned ~.5 ~.5 ~.5 run function mblock:block/player/play_block

execute at @s positioned ~ ~1 ~0.75 align xyz positioned ~.5 ~.5 ~.5 run function mblock:block/player/play_block
execute at @s positioned ~ ~1 ~-0.75 align xyz positioned ~.5 ~.5 ~.5 run function mblock:block/player/play_block
