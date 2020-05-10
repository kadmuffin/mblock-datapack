execute as @s at @s if block ~ ~ ~ #mblock:playable run summon armor_stand ~ ~ ~ {Tags:["player","player_child"],NoGravity:1b,Invisible:1b,Small:1b}
execute as @s at @s unless block ~ ~ ~ #mblock:playable run summon armor_stand ~ ~ ~ {Tags:["player","player_child"],NoGravity:1b,Invisible:1b,Small:1b,ArmorItems:[{},{},{},{id: "light_blue_concrete",Count:1b}],DisabledSlots:72689}
scoreboard players add @s _mbtmp 1

execute as @s at @s run tp ^ ^ ^1
execute if score @s _mbtmp < $.x_size _mbtmp run function mblock:block/player/get_blocks
execute unless score @s _mbtmp < $.x_size _mbtmp run kill @s