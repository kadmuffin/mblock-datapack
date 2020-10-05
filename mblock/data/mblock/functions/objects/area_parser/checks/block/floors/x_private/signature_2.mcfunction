execute if score @s mb.floor matches 0 run setblock ~ ~-1 ~ cyan_terracotta
execute if score @s mb.floor matches 1 run setblock ~ ~-1 ~ stripped_oak_log
execute if score @s mb.floor matches 2..3 run setblock ~ ~-1 ~ stripped_birch_wood
execute if score @s mb.floor matches 4 run setblock ~ ~-1 ~ prismarine_bricks
function #mb_plugin:floor/signature_2