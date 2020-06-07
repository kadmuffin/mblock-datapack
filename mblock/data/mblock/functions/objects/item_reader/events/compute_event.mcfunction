# Remove Spacing when load from Box Area
execute if entity @s[tag=on_area] if score #event_id _array_tmp matches 1..3 if data entity @s Item.tag.z_data[0].air run data modify entity @s Item.tag.z_data[0].air set value 1
execute if entity @s[tag=on_area] if score #event_id _array_tmp matches 1..3 if data entity @s Item.tag.z_data[1].air run data modify entity @s Item.tag.z_data[1].air set value 1

execute if entity @s[tag=y_zero] if score #event_id _array_tmp matches 1 run setblock ~ ~ ~ black_glazed_terracotta
execute if score #event_id _array_tmp matches 1 run tag @s add end_recursion

execute if entity @s[tag=y_zero] if score #event_id _array_tmp matches 2 run setblock ~ ~ ~ purple_glazed_terracotta
execute if score #event_id _array_tmp matches 2 run tag @s add end_recursion

execute if score #event_id _array_tmp matches 3 run function mblock:objects/item_reader/events/load_magenta

data remove entity @s Item.tag.tmp_events[0]
