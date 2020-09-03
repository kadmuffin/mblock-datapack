execute store result score compress_bpm sload run data get entity @s ArmorItems[3].tag.song.comp_bpm
execute if score compress_bpm sload matches 0 run function mblock:interface/commands/not_compress_bpm
execute if score compress_bpm sload matches 1 run function mblock:interface/commands/compress_bpm
