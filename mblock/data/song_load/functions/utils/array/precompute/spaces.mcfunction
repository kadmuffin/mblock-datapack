execute store result score @e[tag=z_pointer,limit=1] sload_tmp run data get entity @e[tag=z_pointer,limit=1] ArmorItems[3].tag.data.notes

scoreboard players remove @e[tag=z_pointer,limit=1] sload_tmp 1

execute if score @e[tag=z_pointer,limit=1] sload_tmp matches 1.. run function song_load:utils/array/precompute/timers/spaces