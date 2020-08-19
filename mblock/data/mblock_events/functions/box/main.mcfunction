execute if score @s mb.event matches 1 run function mblock_events:box/black_glazed_terracotta
execute if score @s mb.event matches 2 run function mblock_events:box/purple_glazed_terracotta
execute if score @s mb.event matches 3 run function mblock_events:box/magenta_glazed_terracotta
execute if score @s mb.event matches 4 run function mblock_events:box/blue_glazed_terracotta

execute if score #external_events _mbtmp matches 1.. run function mbe_event:box/main