execute if score @s _mb_dir matches 0 run summon minecraft:armor_stand ~-1 ~-0.5 ~ {Tags:["_box","_new_box"],NoGravity:1b,Invisible:1b,Marker:1b}
execute if score @s _mb_dir matches 1 run summon minecraft:armor_stand ~1 ~-0.5 ~ {Tags:["_box","_new_box"],NoGravity:1b,Invisible:1b,Marker:1b}
execute if score @s _mb_dir matches 2 run summon minecraft:armor_stand ~ ~-0.5 ~-1 {Tags:["_box","_new_box"],NoGravity:1b,Invisible:1b,Marker:1b}
execute if score @s _mb_dir matches 3 run summon minecraft:armor_stand ~ ~-0.5 ~1 {Tags:["_box","_new_box"],NoGravity:1b,Invisible:1b,Marker:1b}

scoreboard players operation @e[tag=_new_box] _mb_last_dir = @s _mb_dir
scoreboard players operation @e[tag=_new_box] _mb_dir = @s _mb_dir
scoreboard players operation @e[tag=_new_box] _mb_dir_tmp = @s _mb_dir
scoreboard players operation @e[tag=_new_box] _mb_dir_g = @s _mb_dir_g
scoreboard players operation @e[tag=_new_box] _mb_dir_g_tmp = @s _mb_dir_g
scoreboard players set @e[tag=_new_box] _mb_particle 0
scoreboard players set @e[tag=_new_box] _mb_z_trav 0
