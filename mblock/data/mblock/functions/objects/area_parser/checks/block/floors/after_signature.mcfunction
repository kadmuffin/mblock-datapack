execute if score @s mb.floor matches 0 run setblock ~ ~-1 ~ chiseled_quartz_block
execute if score @s mb.floor matches 1 run setblock ~ ~-1 ~ grass_block
execute if score @s mb.floor matches 2 run setblock ~ ~-1 ~ smooth_stone
execute if score @s mb.floor matches 3 run setblock ~ ~-1 ~ stone_bricks
execute if score @s mb.floor matches 4 run setblock ~ ~-1 ~ dark_prismarine

function #mb_plugin:floor/main