# Save Array Length

execute store result score @s _array_tmp run data get entity @s Item.tag.data.notes[0]
execute store result score ylength _array_tmp run data get entity @s Item.tag.data.notes[0]
execute store result score bpm _array_tmp run data get entity @s Item.tag.song.bpm
execute store result score xsize _array_tmp run data get entity @s Item.tag.song.xsize
execute store result score ysize _array_tmp run data get entity @s Item.tag.song.ysize
execute store result score zsize _array_tmp run data get entity @s Item.tag.song.zsize
execute store result score events_length _array_tmp run data get entity @s Item.tag.data.events
execute store result score @s aparse.xsize run data get entity @s Item.tag.song.xsize

execute at @e[tag=music_player,sort=nearest,limit=1] if entity @e[tag=music_player,distance=0,limit=1,tag=look_neg] run tag @s add look_neg
execute at @e[tag=music_player,sort=nearest,limit=1] if entity @e[tag=music_player,distance=0,limit=1,scores={aparse.dir=0}] run scoreboard players set @s aparse.dir 0
execute at @e[tag=music_player,sort=nearest,limit=1] if entity @e[tag=music_player,distance=0,limit=1,scores={aparse.dir=1}] run scoreboard players set @s aparse.dir 1


scoreboard players add zsize _array_tmp 2

execute if score events_length _array_tmp matches 1.. run tag @s add _contains_events


function mblock:objects/item_reader/x_axis/main


execute store result score bpm _array_tmp run data get entity @s Item.tag.song.bpm
execute store result score xsize _array_tmp run data get entity @s Item.tag.song.xsize
execute store result score ysize _array_tmp run data get entity @s Item.tag.song.ysize
execute store result score zsize _array_tmp run data get entity @s Item.tag.song.zsize

execute if entity @s[tag=!disable_bpm] if score @s _array_tmp matches 1.. as @e[tag=music_player,sort=nearest,limit=1] at @s run scoreboard players operation @s mb.bpm = bpm _array_tmp
execute if entity @s[tag=!disable_size] if score @s _array_tmp matches 1.. as @e[tag=music_player,sort=nearest,limit=1] at @s run scoreboard players operation @s aparse.zsize = zsize _array_tmp
execute if entity @s[tag=!disable_size] if score @s _array_tmp matches 1.. as @e[tag=music_player,sort=nearest,limit=1] at @s run scoreboard players operation @s aparse.ysize = ysize _array_tmp
execute if entity @s[tag=!disable_size] if score @s _array_tmp matches 1.. as @e[tag=music_player,sort=nearest,limit=1] at @s run scoreboard players operation @s aparse.xsize = xsize _array_tmp

execute if score @s[tag=self_align] _array_tmp matches 1.. run tellraw @a {"text":"Notes Loaded!"}
execute if score @s[tag=!self_align] _array_tmp matches 1.. run tellraw @a {"text":"Song and Settings Loaded!"}

kill @s
