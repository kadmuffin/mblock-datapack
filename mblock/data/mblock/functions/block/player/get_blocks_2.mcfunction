scoreboard players add @s _mbtmp 1
#execute if score #z_travelled _mbtmp1 >= $.z_size _mbtmp1 at @s as @e[tag=_box, tag=!wait_for_end] run function mblock:block/player/update_dir_2
#execute if score @s _mbtmp >= $.x_size _mbtmp1 at @s as @e[tag=_box, tag=!wait_for_end] run function mblock:block/player/update_dir_2



#execute as @s at @s if block ~ ~ ~ #mblock:playable run summon armor_stand ~ ~ ~ {Tags:["player","player_child"],NoGravity:1b,Invisible:1b,Small:1b}
execute as @s at @s if score @s _mb_particle matches 0 unless entity @e[tag=ignore_zero] if block ~ ~ ~ air if score #z_travelled _mbtmp1 matches 0 run particle minecraft:fishing ~ ~ ~ 0 0 0 0 4
execute as @s at @s if score @s _mb_particle matches 0 if block ~ ~ ~ air unless entity @e[tag=ignore_zero] if score #z_travelled _mbtmp1 > $.z_size _mbtmp1 run particle minecraft:fishing ~ ~ ~ 0 0 0 0 4
execute as @s at @s if score @s _mb_particle matches 0 if block ~ ~ ~ air if entity @e[tag=ignore_zero] if score #z_travelled _mbtmp1 > $.z_size _mbtmp1 run particle minecraft:fishing ~ ~ ~ 0 0 0 0 4

#execute as @s at @s if score @s _mb_particle matches 0 if block ~ ~ ~ air if entity @e[tag=_box,tag=wait_for_end] run particle minecraft:fishing ~ ~ ~ 0 0 0 0 4
execute as @s at @s if score @s _mb_particle matches 0 if block ~ ~ ~ air if score @s _mbtmp >= $.x_size _mbtmp1 run particle minecraft:fishing ~ ~ ~ 0 0 0 0 4

execute as @s at @s if score @s _mb_particle matches 1 unless entity @e[tag=ignore_zero] if block ~ ~ ~ air if score #z_travelled _mbtmp1 matches 0 run particle minecraft:end_rod ~ ~ ~ 0 0 0 0 4
execute as @s at @s if score @s _mb_particle matches 1 if block ~ ~ ~ air if score #z_travelled _mbtmp1 > $.z_size _mbtmp1 run particle minecraft:end_rod ~ ~ ~ 0 0 0 0 4
#execute as @s at @s if score @s _mb_particle matches 1 if block ~ ~ ~ air unless score #z_travelled _mbtmp1 > $.z_size _mbtmp1 if score #z_travelled _mbtmp1 >= $.z_size _mbtmp1 run particle minecraft:end_rod ~ ~ ~ 0 0 0 0 4
execute as @s at @s if score @s _mb_particle matches 1 if block ~ ~ ~ air if score @s _mbtmp >= $.x_size _mbtmp1 run particle minecraft:end_rod ~ ~ ~ 0 0 0 0 4

execute as @s at @s if score @s _mb_particle matches 2 unless entity @e[tag=ignore_zero] if block ~ ~ ~ air if score #z_travelled _mbtmp1 matches 0 run particle minecraft:dripping_lava ~ ~ ~ 0 0 0 0 4
execute as @s at @s if score @s _mb_particle matches 2 if block ~ ~ ~ air if score #z_travelled _mbtmp1 > $.z_size _mbtmp1 run particle minecraft:dripping_lava ~ ~ ~ 0 0 0 0 4
#execute as @s at @s if score @s _mb_particle matches 2 if block ~ ~ ~ air unless score #z_travelled _mbtmp1 > $.z_size _mbtmp1 if score #z_travelled _mbtmp1 >= $.z_size _mbtmp1 run particle minecraft:dripping_lava ~ ~ ~ 0 0 0 0 4
execute as @s at @s if score @s _mb_particle matches 2 if block ~ ~ ~ air if score @s _mbtmp >= $.x_size _mbtmp1 run particle minecraft:dripping_lava ~ ~ ~ 0 0 0 0 4

execute as @s at @s if score @s _mb_particle matches 3 unless entity @e[tag=ignore_zero] if block ~ ~ ~ air if score #z_travelled _mbtmp1 matches 0 run particle minecraft:witch ~ ~ ~ 0 0 0 0 4
execute as @s at @s if score @s _mb_particle matches 3 if block ~ ~ ~ air if score #z_travelled _mbtmp1 > $.z_size _mbtmp1 run particle minecraft:witch ~ ~ ~ 0 0 0 0 4
#execute as @s at @s if score @s _mb_particle matches 3 if block ~ ~ ~ air unless score #z_travelled _mbtmp1 > $.z_size _mbtmp1 if score #z_travelled _mbtmp1 >= $.z_size _mbtmp1 run particle minecraft:witch ~ ~ ~ 0 0 0 0 4
execute as @s at @s if score @s _mb_particle matches 3 if block ~ ~ ~ air if score @s _mbtmp >= $.x_size _mbtmp1 run particle minecraft:witch ~ ~ ~ 0 0 0 0 4


execute as @s at @s run tp ^ ^ ^1
execute if score @s _mbtmp < $.x_size _mbtmp1 run function mblock:block/player/get_blocks_2
execute unless score @s _mbtmp < $.x_size _mbtmp1 run kill @s