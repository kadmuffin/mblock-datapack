execute store result score nbs_bpm sload run data get entity @s ArmorItems[3].tag.song.nbs_bpm
execute if score nbs_bpm sload matches 0 run tag @e[tag=mplayer_block,limit=1] remove nbs_bpm
execute if score nbs_bpm sload matches 1 run tag @e[tag=mplayer_block,limit=1] add nbs_bpm
