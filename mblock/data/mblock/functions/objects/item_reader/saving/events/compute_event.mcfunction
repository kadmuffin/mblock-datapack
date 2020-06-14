execute if score #event_id _array_tmp matches 1 run tag @s add end_recursion

execute if score #event_id _array_tmp matches 2 run tag @s add end_recursion

execute if score #event_id _array_tmp matches 3 run function mblock:objects/item_reader/saving/events/load_magenta

data remove entity @s Item.tag.tmp_events[0]