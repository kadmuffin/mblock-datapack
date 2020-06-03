# Save Array Length
execute store result score @s _array_tmp run data get entity @s Item.tag.data
execute store result score length _array_tmp run data get entity @s Item.tag.data
execute store result score bpm _array_tmp run data get entity @s Item.tag.song.bpm
execute store result score zsize _array_tmp run data get entity @s Item.tag.song.zsize

scoreboard players add zsize _array_tmp 2

execute at @e[tag=music_player,sort=nearest,limit=1] if entity @e[tag=music_player,distance=0,limit=1,tag=look_neg] run tag @s add look_neg
execute at @e[tag=music_player,sort=nearest,limit=1] if entity @e[tag=music_player,distance=0,limit=1,scores={aparse.dir=0}] run scoreboard players set @s aparse.dir 0
execute at @e[tag=music_player,sort=nearest,limit=1] if entity @e[tag=music_player,distance=0,limit=1,scores={aparse.dir=1}] run scoreboard players set @s aparse.dir 1

execute if entity @s[tag=!self_align] if score @s _array_tmp matches 1.. as @s[tag=!look_neg,scores={aparse.dir=0}] positioned ~ ~-1 ~3 run function mblock:objects/item_reader/loop_in_data
execute if entity @s[tag=!self_align] if score @s _array_tmp matches 1.. as @s[tag=!look_neg,scores={aparse.dir=1}] positioned ~3 ~-1 ~ run function mblock:objects/item_reader/loop_in_data

execute if entity @s[tag=!self_align] if score @s _array_tmp matches 1.. as @s[tag=look_neg,scores={aparse.dir=0}] positioned ~ ~-1 ~-3 run function mblock:objects/item_reader/loop_in_data
execute if entity @s[tag=!self_align] if score @s _array_tmp matches 1.. as @s[tag=look_neg,scores={aparse.dir=1}] positioned ~-3 ~-1 ~ run function mblock:objects/item_reader/loop_in_data


execute if entity @s[tag=self_align] if score @s _array_tmp matches 1.. as @s positioned ~ ~-1 ~ run function mblock:objects/item_reader/loop_in_data

execute if score @s _array_tmp matches 1.. as @e[tag=music_player,sort=nearest,limit=1] if entity @s[tag=!disable_bpm] at @s run scoreboard players operation @s mb.bpm = bpm _array_tmp
execute if score @s _array_tmp matches 1.. as @e[tag=music_player,sort=nearest,limit=1] if entity @s[tag=!disable_size] at @s run scoreboard players operation @s aparse.zsize = zsize _array_tmp

execute if score @s[tag=self_align] _array_tmp matches 1.. run tellraw @a {"text":"Notes Loaded!"}
execute if score @s[tag=!self_align] _array_tmp matches 1.. run tellraw @a {"text":"Song and Settings Loaded!"}

kill @s