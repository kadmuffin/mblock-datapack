data modify entity @s ArmorItems[3].tag.event.z_pos set value 0

execute store result entity @s ArmorItems[3].tag.event.z_pos int 1 run scoreboard players get #z_pos sload_tmp

data modify entity @s ArmorItems[3].tag.data.events append from entity @s ArmorItems[3].tag.event
data remove entity @s ArmorItems[3].tag.event
