tag @s[tag=!child_updated] add child_updated

scoreboard players add @s _mbtmp 1

scoreboard players set @e[tag=side_1] _mbtmp 0
scoreboard players set @e[tag=side_2] _mbtmp 0
summon armor_stand ~ ~ ~ {Tags:["side_1"],NoGravity:1b,Invisible:1b}
summon armor_stand ~ ~ ~ {Tags:["side_2"],NoGravity:1b,Invisible:1b}

execute if score @s _mb_dir_g matches 0 as @e[tag=side_1] at @s facing ~ ~ ~1 run tp ~ ~ ~
execute if score @s _mb_dir_g matches 0 as @e[tag=side_2] at @s facing ~ ~ ~-1 run tp ~ ~ ~
execute if score @s _mb_dir_g matches 1 as @e[tag=side_1] at @s facing ~1 ~ ~ run tp ~ ~ ~
execute if score @s _mb_dir_g matches 1 as @e[tag=side_2] at @s facing ~-1 ~ ~ run tp ~ ~ ~


execute if score @s _mb_dir_g matches 0 as @e[tag=side_1] at @s run function mblock:block/player/get_blocks
execute if score @s _mb_dir_g matches 0 as @e[tag=side_2] at @s run function mblock:block/player/get_blocks
execute if score @s _mb_dir_g matches 1 as @e[tag=side_1] at @s run function mblock:block/player/get_blocks
execute if score @s _mb_dir_g matches 1 as @e[tag=side_2] at @s run function mblock:block/player/get_blocks

execute as @s if score @s _mbtmp < $.y_size _mbtmp positioned ~ ~1 ~ run function mblock:block/player/get_all_blocks