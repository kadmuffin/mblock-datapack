data remove entity @s ArmorItems[3].tag.event
execute if data entity @s ArmorItems[3].tag.data.events[0][0][-1] run data modify entity @s ArmorItems[3].tag.event set from entity @s ArmorItems[3].tag.data.events[0][0][-1]

execute if data entity @s ArmorItems[3].tag.event store result score #event_z sload_tmp run data get entity @s ArmorItems[3].tag.event.position
execute if data entity @s ArmorItems[3].tag.event if data entity @s ArmorItems[3].tag.event.id store result score #event_id sload_tmp run data get entity @s ArmorItems[3].tag.event.id
execute if data entity @s ArmorItems[3].tag.event unless data entity @s ArmorItems[3].tag.event.id store result score #event_id sload_tmp run data get entity @s ArmorItems[3].tag.event.event
