#tag @s[tag=!child_updated] add child_updated

scoreboard players add @s _mbtmp1 1

scoreboard players set @e[tag=side_3] _mbtmp1 0
scoreboard players set @e[tag=side_4] _mbtmp1 0
summon armor_stand ~ ~ ~ {Tags:["side_3"],NoGravity:1b,Invisible:1b,Marker:1b}
summon armor_stand ~ ~ ~ {Tags:["side_4"],NoGravity:1b,Invisible:1b,Marker:1b}

execute if score @s _mb_dir_g matches 0 as @e[tag=side_3] at @s facing ~ ~ ~1 run tp ~ ~ ~
execute if score @s _mb_dir_g matches 0 as @e[tag=side_4] at @s facing ~ ~ ~-1 run tp ~ ~ ~
execute if score @s _mb_dir_g matches 1 as @e[tag=side_3] at @s facing ~1 ~ ~ run tp ~ ~ ~
execute if score @s _mb_dir_g matches 1 as @e[tag=side_4] at @s facing ~-1 ~ ~ run tp ~ ~ ~


execute if score @s _mb_dir_g matches 0 as @e[tag=side_3] at @s run function mblock:block/player/get_blocks_2
execute if score @s _mb_dir_g matches 0 as @e[tag=side_4] at @s run function mblock:block/player/get_blocks_2
execute if score @s _mb_dir_g matches 1 as @e[tag=side_3] at @s run function mblock:block/player/get_blocks_2
execute if score @s _mb_dir_g matches 1 as @e[tag=side_4] at @s run function mblock:block/player/get_blocks_2

execute as @s if score @s _mbtmp1 < $.y_size _mbtmp positioned ~ ~1 ~ run function mblock:block/player/get_all_blocks_box