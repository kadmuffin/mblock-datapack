execute store result score nbs_bpm sload run data get entity @s ArmorItems[3].tag.song.nbs_bpm
execute if score nbs_bpm sload matches 0 run function mblock:interface/commands/nbs_bpm_off
execute if score nbs_bpm sload matches 1 run function mblock:interface/commands/nbs_bpm_on
