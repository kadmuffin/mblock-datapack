tag @s remove _in_wait_for_load

data modify entity @e[type=item,tag=_loaded,sort=nearest,limit=1] PickupDelay set value -32760s

execute store result score @s _array_tmp run data get entity @s Item.tag.data.notes[0]
execute store result score ylength _array_tmp run data get entity @s Item.tag.data.notes[0]
execute store result score bpm _array_tmp run data get entity @s Item.tag.song.bpm
execute store result score xsize _array_tmp run data get entity @s Item.tag.song.xsize
execute store result score ysize _array_tmp run data get entity @s Item.tag.song.ysize
execute store result score zsize _array_tmp run data get entity @s Item.tag.song.zsize
execute store result score events_length _array_tmp run data get entity @s Item.tag.data.events
execute store result score @s aparse.xsize run data get entity @s Item.tag.song.xsize
scoreboard players add @s aparse.xsize 1

tellraw @p ["",{"text":"[MusicBlocks] ","color":"dark_gray"},{"text":"Loading Song... (WIP)","color":"gray"}]

execute at @e[tag=music_player,sort=nearest,limit=1] if entity @e[tag=music_player,distance=0,limit=1,tag=look_neg] run tag @s add look_neg
execute at @e[tag=music_player,sort=nearest,limit=1] if entity @e[tag=music_player,distance=0,limit=1,scores={aparse.dir=0}] run scoreboard players set @s aparse.dir 0
execute at @e[tag=music_player,sort=nearest,limit=1] if entity @e[tag=music_player,distance=0,limit=1,scores={aparse.dir=1}] run scoreboard players set @s aparse.dir 1


scoreboard players add zsize _array_tmp 2

execute if score events_length _array_tmp matches 1.. run tag @s add _contains_events

tag @s add on_ground

tag @s add load_stage_2
tag @s add _load_scheduled

scoreboard players set @s _array_tmp2 0
scoreboard players reset counted_blocks _array_tmp
scoreboard players reset #bar_max _array_tmp
scoreboard players set #xsize aparse.xsize -1
