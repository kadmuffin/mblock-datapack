execute store result score raw_bpm sload run data get entity @s ArmorItems[3].tag.song.raw_bpm
execute if score raw_bpm sload matches 0 run function mblock:interface/commands/not_use_raw_bpm
execute if score raw_bpm sload matches 1.. run function mblock:interface/commands/use_raw_bpm
execute if score raw_bpm sload matches 1 run function mblock:interface/commands/double_bpm
execute if score raw_bpm sload matches 2 run function mblock:interface/commands/disable_double_bpm

