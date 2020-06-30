# Save Array Length
tag @s add no_sound

execute store result score @s _array_tmp run data get entity @s Item.tag.data.notes[0]
execute store result score ylength _array_tmp run data get entity @s Item.tag.data.notes[0]
execute store result score bpm _array_tmp run data get entity @s Item.tag.song.bpm
execute store result score xsize _array_tmp run data get entity @s Item.tag.song.xsize
execute store result score ysize _array_tmp run data get entity @s Item.tag.song.ysize
execute store result score zsize _array_tmp run data get entity @s Item.tag.song.zsize
execute store result score events_length _array_tmp run data get entity @s Item.tag.data.events
execute store result score @s aparse.xsize run data get entity @s Item.tag.song.xsize

tellraw @p ["",{"text":"[MusicBlocks] ","color":"dark_gray"},{"text":"Loading Song... (WIP)","color":"gray"}]

execute at @e[tag=music_player,sort=nearest,limit=1] if entity @e[tag=music_player,distance=0,limit=1,tag=look_neg] run tag @s add has_look_neg
execute at @e[tag=music_player,sort=nearest,limit=1] if entity @e[tag=music_player,distance=0,limit=1,scores={aparse.dir=0}] run scoreboard players set #dir aparse.dir 0
execute at @e[tag=music_player,sort=nearest,limit=1] if entity @e[tag=music_player,distance=0,limit=1,scores={aparse.dir=1}] run scoreboard players set #dir aparse.dir 1


scoreboard players add zsize _array_tmp 2

execute if score events_length _array_tmp matches 1.. run tag @s add _contains_events

tag @s add on_ground

function mblock:objects/item_reader/utils/load_dir

function mblock:objects/item_reader/x_axis/main


execute store result score bpm _array_tmp run data get entity @s Item.tag.song.bpm
execute store result score xsize _array_tmp run data get entity @s Item.tag.song.xsize
execute store result score ysize _array_tmp run data get entity @s Item.tag.song.ysize
execute store result score zsize _array_tmp run data get entity @s Item.tag.song.zsize

scoreboard players add zsize _array_tmp 2


execute if entity @s[tag=!disable_bpm,tag=!disable_size] as @e[tag=music_player,sort=nearest,limit=1] run data modify entity @s Item.tag.display.Name set from entity @e[tag=song,sort=nearest,limit=1] Item.tag.display.Name
execute if entity @s[tag=!disable_bpm] as @e[tag=music_player,sort=nearest,limit=1] at @s run scoreboard players operation @s mb.bpm = bpm _array_tmp
execute if entity @s[tag=!disable_size] as @e[tag=music_player,sort=nearest,limit=1] at @s run scoreboard players operation @s aparse.zsize = zsize _array_tmp
execute if entity @s[tag=!disable_size] as @e[tag=music_player,sort=nearest,limit=1] at @s run scoreboard players operation @s aparse.ysize = ysize _array_tmp
execute if entity @s[tag=!disable_size] as @e[tag=music_player,sort=nearest,limit=1] at @s run scoreboard players operation @s aparse.xsize = xsize _array_tmp

execute if entity @s[tag=self_align] run tellraw @a ["",{"text":"[MusicBlocks] ","color":"dark_gray"},{"text":"Notes loaded!","color":"green"}]

execute if entity @s[tag=!self_align] run tellraw @a ["",{"text":"[MusicBlocks] ","color":"dark_gray"},{"text":"Notes & Settings loaded!","color":"green"}]

kill @s
