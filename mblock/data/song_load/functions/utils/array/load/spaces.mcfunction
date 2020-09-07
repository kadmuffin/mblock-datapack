execute store result score @e[tag=z_pointer,limit=1] sload_tmp run data get entity @e[tag=z_pointer,limit=1] ArmorItems[3].tag.data.notes

execute if score @e[tag=z_pointer,limit=1] sload_tmp matches 1.. run tellraw @a[tag=debug] ["",{"text": "[MusicBlocks] ","color":"dark_gray"},{"text": "Searching for missing spaces", "color":"gold"}]
execute if score @e[tag=z_pointer,limit=1] sload_tmp matches 1.. run tag @s add spacing
execute if score @e[tag=z_pointer,limit=1] sload_tmp matches 1.. run function song_load:utils/array/load/timers/spaces