data modify entity @s ArmorItems[3].tag.event.position set value [0, 0, 0]

scoreboard players operation #x_pos sload_tmp = #x_pos sload
scoreboard players remove #x_pos sload_tmp 1
execute if score #x_pos sload_tmp = #middle sload_tmp2 run scoreboard players set #x_pos sload_tmp -1

execute store result entity @s ArmorItems[3].tag.event.position[0] int 1 run scoreboard players get #x_pos sload_tmp
execute store result entity @s ArmorItems[3].tag.event.position[1] int 1 run scoreboard players get #y_pos sload_tmp
execute store result entity @s ArmorItems[3].tag.event.position[2] int 1 run scoreboard players get #z_pos sload_tmp

data modify entity @s ArmorItems[3].tag.data.events append from entity @s ArmorItems[3].tag.event
data remove entity @s ArmorItems[3].tag.event
