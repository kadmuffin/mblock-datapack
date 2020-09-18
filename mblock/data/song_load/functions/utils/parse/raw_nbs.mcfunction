execute store result score raw_bpm sload run data get entity @s ArmorItems[3].tag.song.raw_bpm
execute if score raw_bpm sload matches 0 run tag @e[tag=mplayer_block,limit=1] remove compress_bpm
execute if score raw_bpm sload matches 1.. run tag @e[tag=mplayer_block,limit=1] add compress_bpm
execute if score raw_bpm sload matches 1 run tag @e[tag=mplayer_block,limit=1] add double_bpm
execute if score raw_bpm sload matches 2 run tag @e[tag=mplayer_block,limit=1] remove double_bpm

