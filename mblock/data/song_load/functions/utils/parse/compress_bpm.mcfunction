execute store result score compress_bpm sload run data get entity @s ArmorItems[3].tag.song.comp_bpm
execute if score compress_bpm sload matches 0 run tag @e[tag=mplayer_block,limit=1] remove compress_bpm
execute if score compress_bpm sload matches 1 run tag @e[tag=mplayer_block,limit=1] add compress_bpm
