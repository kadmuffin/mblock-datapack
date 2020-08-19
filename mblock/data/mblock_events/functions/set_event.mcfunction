execute if score @s mb.event matches 1 run setblock ~ ~ ~ black_glazed_terracotta
execute if score @s mb.event matches 2 run setblock ~ ~ ~ purple_glazed_terracotta
execute if score @s mb.event matches 3 run setblock ~ ~ ~ magenta_glazed_terracotta
execute if score @s mb.event matches 4 run setblock ~ ~ ~ blue_glazed_terracotta

execute if score #external_events _mbtmp matches 1.. run function mbe_event:set_event