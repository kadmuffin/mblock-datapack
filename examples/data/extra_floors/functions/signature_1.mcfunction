execute if score @s mb.floor matches 5..9 run setblock ~ ~-1 ~ black_concrete

execute if block ~ ~ ~ chiseled_stone_bricks run setblock ~ ~ ~ air
execute if score @s mb.floor matches 8 if score @s _aparse.x >= @s aparse.xsize run setblock ~ ~ ~ chiseled_stone_bricks

