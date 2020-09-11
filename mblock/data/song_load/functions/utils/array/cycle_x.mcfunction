data modify entity @e[tag=z_pointer,limit=1] ArmorItems[3].tag.data.notes append from entity @e[tag=z_pointer,limit=1] ArmorItems[3].tag.data.notes[0]
data remove entity @e[tag=z_pointer,limit=1] ArmorItems[3].tag.data.notes[0]

data modify entity @e[tag=z_pointer,tag=load,tag=!preprocessing,limit=1] ArmorItems[3].tag.data.events append from entity @e[tag=z_pointer,limit=1] ArmorItems[3].tag.data.events[0]
data remove entity @e[tag=z_pointer,tag=load,tag=!preprocessing,limit=1] ArmorItems[3].tag.data.events[0]
