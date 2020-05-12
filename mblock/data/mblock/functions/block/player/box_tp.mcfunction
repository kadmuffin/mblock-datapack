execute if block ~ ~-1 ~ black_glazed_terracotta run kill @s
execute as @s[tag=!wait_for_end] if score @s _mb_z_trav > $.z_size _mbtmp1 run function mblock:block/player/end

scoreboard players set @s _mbtmp1 0
execute as @s[tag=!wait_for_end] at @s run function mblock:block/player/update_dir_2

execute as @s[tag=wait_for_end] if score @s _mb_z_trav > $.z_size _mbtmp1 run function mblock:block/player/tp_to_redirect

scoreboard players operation #z_travelled_1 _mbtmp1 = @s _mb_z_trav
scoreboard players add #z_travelled_1 _mbtmp1 1
execute as @s at @s run function mblock:block/player/get_all_blocks_box
tag @s remove ignore_zero

execute as @s[tag=!wait_for_update] at @s run function mblock:block/player/update_pos_2

execute unless entity @e[tag=mb_player] if block ~ ~ ~ air run particle minecraft:sweep_attack ~ ~ ~ 0 0 0 0 1