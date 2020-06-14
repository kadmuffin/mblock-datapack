# Save Array Length
execute store result score @s _array_tmp run data get entity @s Item.tag.data.notes
execute store result score ylength _array_tmp run data get entity @s Item.tag.data.notes
execute store result score bpm _array_tmp run data get entity @s Item.tag.song.bpm
execute store result score zsize _array_tmp run data get entity @s Item.tag.song.zsize
execute store result score events_length _array_tmp run data get entity @s Item.tag.data.events

scoreboard players add zsize _array_tmp 2

execute if score events_length _array_tmp matches 1.. run tag @s add _contains_events
tag @s add on_y_zero
tag @s add y_zero
execute positioned ~ ~-1 ~ run function mblock:objects/item_reader/y_axis/y_axis_loop

execute if entity @s[tag=!disable_bpm] if score @s _array_tmp matches 1.. as @e[tag=music_player,sort=nearest,limit=1] at @s run scoreboard players operation @s mb.bpm = bpm _array_tmp
execute if entity @s[tag=!disable_size] if score @s _array_tmp matches 1.. as @e[tag=music_player,sort=nearest,limit=1] at @s run scoreboard players operation @s aparse.zsize = zsize _array_tmp

execute if score @s[tag=self_align] _array_tmp matches 1.. run tellraw @a {"text":"Notes Loaded!"}
execute if score @s[tag=!self_align] _array_tmp matches 1.. run tellraw @a {"text":"Song and Settings Loaded!"}

kill @s