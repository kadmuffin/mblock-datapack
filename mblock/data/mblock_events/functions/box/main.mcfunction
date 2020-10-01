scoreboard players set @s mb.event 0
execute if block ~ ~ ~ black_glazed_terracotta run scoreboard players set @s mb.event 1
execute if block ~ ~ ~ purple_glazed_terracotta run scoreboard players set @s mb.event 2
execute if block ~ ~ ~ magenta_glazed_terracotta run scoreboard players set @s mb.event 3
execute if block ~ ~ ~ blue_glazed_terracotta run scoreboard players set @s mb.event 4

execute if score @s mb.event matches 1 run function mblock_events:box/black_glazed_terracotta
execute if score @s mb.event matches 2 run function mblock_events:box/purple_glazed_terracotta
execute if score @s mb.event matches 3 run function mblock_events:box/magenta_glazed_terracotta
execute if score @s mb.event matches 4 run function mblock_events:box/blue_glazed_terracotta
