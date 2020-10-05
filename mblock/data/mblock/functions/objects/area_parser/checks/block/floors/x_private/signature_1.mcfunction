execute if score @s mb.floor matches 0 run setblock ~ ~-1 ~ black_concrete
execute if score @s mb.floor matches 1 run setblock ~ ~-1 ~ oak_wood
execute if score @s mb.floor matches 2..3 run setblock ~ ~-1 ~ stripped_dark_oak_wood
execute if score @s mb.floor matches 4 run setblock ~ ~-1 ~ nether_bricks
function #mb_plugin:floor/signature_1