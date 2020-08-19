scoreboard players set @s mb.event 0
execute if block ~ ~ ~ black_glazed_terracotta run scoreboard players set @s mb.event 1
execute if block ~ ~ ~ purple_glazed_terracotta run scoreboard players set @s mb.event 2
execute if block ~ ~ ~ magenta_glazed_terracotta run scoreboard players set @s mb.event 3
execute if block ~ ~ ~ blue_glazed_terracotta run scoreboard players set @s mb.event 4

execute if score #external_events _mbtmp matches 1.. run function mbe_event:get_event