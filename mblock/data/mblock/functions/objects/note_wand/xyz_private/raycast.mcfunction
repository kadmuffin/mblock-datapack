# > Raycast Function
#
# Raycast function made to bypass 1.14 bug with anchored eyes.
# When a block is hit the raycast function will call the plugins loop.

scoreboard players add @s _rayc_tmp 1

execute as @s anchored eyes positioned ^ ^ ^0.5 align xyz positioned ~.5 ~ ~.5 unless block ~ ~ ~ air run function mblock:objects/note_wand/xyz_private/force_end_raycast
execute as @s anchored eyes positioned ^ ^ ^0.5 align xyz positioned ~.5 ~ ~.5 unless block ~ ~ ~ air run function mblock:objects/note_wand/plugins/on_block_hit
execute as @s anchored eyes positioned ^ ^ ^0.5 if block ~ ~ ~ air run function mblock:objects/note_wand/plugins/while_raycasting

execute as @s if score @s _rayc_tmp <= #LimitDistance _rayc_tmp positioned ^ ^ ^0.5 run function mblock:objects/note_wand/xyz_private/raycast
execute unless score @s _rayc_tmp <= #LimitDistance _rayc_tmp run scoreboard players reset @s _rayc_tmp
