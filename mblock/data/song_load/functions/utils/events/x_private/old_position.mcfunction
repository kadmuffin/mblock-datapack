scoreboard players set #x_event sload_tmp -1
scoreboard players set #y_event sload_tmp -1
execute store result score #y_event sload_tmp run data get entity @s ArmorItems[3].tag.data.events[0].z_pos