data modify entity @s ArmorItems[3].tag.data.notes[0][0] set from entity @s ArmorItems[3].tag.tmp2

execute as @e[tag=z_pointer,limit=1] run data modify entity @s ArmorItems[3].tag.data.notes[0] append from entity @s ArmorItems[3].tag.data.notes[0][0]
execute as @e[tag=z_pointer,limit=1] run data remove entity @s ArmorItems[3].tag.data.notes[0][0]

scoreboard players remove #y_length sload_tmp 1
scoreboard players reset #length sload_tmp

data modify entity @s ArmorItems[3].tag.tmp2 set value []

