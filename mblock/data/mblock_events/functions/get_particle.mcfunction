execute if score @s mb.event matches 0..1 run particle end_rod ~ ~ ~ 0 0 0 0 1
execute if score @s mb.event matches 2 run particle dust 0.7098 0.39 0.89 1.5 ~ ~ ~ 0 0 0 0 5
execute if score @s mb.event matches 3 run particle dust 0.96078 0.38823 0.74117 1.5 ~ ~ ~ 0 0 0 0 5
execute if score @s mb.event matches 4 run particle dust 0.396 0.388 0.89 1.5 ~ ~ ~ 0 0 0 0 5

execute if score #external_events _mbtmp matches 1.. run function mbe_event:get_particle