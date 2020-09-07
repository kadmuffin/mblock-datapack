data modify entity @e[tag=z_pointer,limit=1] ArmorItems[3].tag.event.position set value [0, 0, 0]

execute store result entity @e[tag=z_pointer,limit=1] ArmorItems[3].tag.event.position[0] int 1 run scoreboard players get @s sload
execute store result entity @e[tag=z_pointer,limit=1] ArmorItems[3].tag.event.position[1] int 1 run scoreboard players get @s sload_tmp
execute store result entity @e[tag=z_pointer,limit=1] ArmorItems[3].tag.event.position[2] int 1 run scoreboard players get @s sload_tmp2

data modify entity @e[tag=z_pointer,limit=1] ArmorItems[3].tag.data.events append from entity @e[tag=z_pointer,limit=1] ArmorItems[3].tag.event
data remove entity @e[tag=z_pointer,limit=1] ArmorItems[3].tag.event