execute if score #event_id sload_tmp matches 1 run setblock ~ ~ ~ black_glazed_terracotta
execute if score #event_id sload_tmp matches 2 run setblock ~ ~ ~ purple_glazed_terracotta
execute if score #event_id sload_tmp matches 3 run function mblock:objects/item_reader/events/load_magenta
execute if score #event_id sload_tmp matches 4 run setblock ~ ~ ~ blue_glazed_terracotta
execute if score #event_id sload_tmp matches 1..2 run scoreboard players operation @e[tag=z_pointer,limit=1] sload = song_length sload
execute if score #event_id sload_tmp matches 1..4 run function song_load:utils/events/pop
