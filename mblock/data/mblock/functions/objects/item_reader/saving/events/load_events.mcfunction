execute store result score #event_id _array_tmp run data get entity @s Item.tag.tmp_events[0].event
execute store result score #event_pos _array_tmp run data get entity @s Item.tag.tmp_events[0].z_pos
execute store result score @s _aparse_tmp5 run data get entity @s Item.tag.tmp_events[0].dir


execute if score internal_zsize _array_tmp >= #event_pos _array_tmp run function mblock:objects/item_reader/saving/events/compute_event

#execute store result score events_length _array_tmp run data get entity @s Item.tag.tmp_events
#execute unless score events_length _array_tmp matches 1.. run tag @s remove contains_events
