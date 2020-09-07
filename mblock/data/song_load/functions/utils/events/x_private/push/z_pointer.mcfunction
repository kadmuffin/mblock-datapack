data modify entity @s ArmorItems[3].tag.event.position set value [0, 0, 0]

execute store result entity @s ArmorItems[3].tag.event.position[0] int 1 run scoreboard players get @e[tag=x_pointer,limit=1] sload
execute store result entity @s ArmorItems[3].tag.event.position[1] int 1 run scoreboard players get @e[tag=y_pointer,limit=1] sload
execute store result entity @s ArmorItems[3].tag.event.position[2] int 1 run scoreboard players get @s sload

data modify entity @s ArmorItems[3].tag.data.events append from entity @s ArmorItems[3].tag.event
data remove entity @s ArmorItems[3].tag.event
