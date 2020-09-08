tag @s remove floor
tag @s remove center

scoreboard players operation #x_pos sload_tmp = @e[tag=x_pointer,limit=1] sload
scoreboard players remove #x_pos sload_tmp 1
scoreboard players operation #y_pos sload_tmp = @e[tag=y_pointer,limit=1] sload

execute if score #y_pos sload_tmp matches 0 run tag @s add floor
execute if score #x_pos sload_tmp = #middle sload_tmp2 run tag @s add center

data modify entity @s ArmorItems[3].tag.event set value {}