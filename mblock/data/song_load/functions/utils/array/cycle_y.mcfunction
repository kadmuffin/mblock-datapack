
execute as @e[tag=z_pointer,limit=1] run data modify entity @s ArmorItems[3].tag.data.notes[0] append from entity @s ArmorItems[3].tag.data.notes[0][0]
execute as @e[tag=z_pointer,limit=1] run data remove entity @s ArmorItems[3].tag.data.notes[0][0]
function song_load:utils/array/cycle_x