execute store result score #event_id _array_tmp run data get entity @s Item.tag.tmp_events[0].event
execute store result score #event_pos _array_tmp run data get entity @s Item.tag.tmp_events[0].z_pos
scoreboard players remove #event_pos _array_tmp 1
execute store result score @s _aparse_tmp5 run data get entity @s Item.tag.tmp_events[0].dir


execute if score internal_zsize _array_tmp >= #event_pos _array_tmp run function mblock:objects/item_reader/events/compute_event
