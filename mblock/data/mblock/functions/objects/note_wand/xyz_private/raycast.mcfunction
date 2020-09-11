# > Raycast Function
#
# Raycast function made to bypass 1.14 bug with anchored eyes.
# When a block is hit the raycast function will call the plugins loop.

scoreboard players add @s _rayc_tmp 1

execute as @s anchored eyes positioned ^ ^ ^1 align xyz positioned ~.5 ~ ~.5 unless block ~ ~ ~ #mblock:raycast/not_hittable run function mblock:objects/note_wand/xyz_private/force_end_raycast
execute as @s anchored eyes positioned ^ ^ ^1 align xyz positioned ~.5 ~ ~.5 unless block ~ ~ ~ #mblock:raycast/not_hittable run function mblock:objects/note_wand/plugins/on_block_hit
execute as @s anchored eyes positioned ^ ^ ^1 align xyz positioned ~.5 ~ ~.5 unless block ~ ~ ~ #mblock:raycast/not_hittable run tag @s add block_hitted
execute as @s anchored eyes positioned ^ ^ ^1 if block ~ ~ ~ #mblock:raycast/not_hittable run function mblock:objects/note_wand/plugins/while_raycasting

execute unless score @s _rayc_tmp <= #LimitDistance _rayc_tmp as @s[tag=!block_hitted] anchored eyes positioned ^ ^ ^1 align xyz positioned ~.5 ~ ~.5 run function mblock:objects/note_wand/plugins/on_block_not_hit
tag @s remove block_hitted

execute unless score @s _rayc_tmp <= #LimitDistance _rayc_tmp run scoreboard players reset @s _rayc_tmp
execute as @s if score @s _rayc_tmp <= #LimitDistance _rayc_tmp positioned ^ ^ ^1 run function mblock:objects/note_wand/xyz_private/raycast
