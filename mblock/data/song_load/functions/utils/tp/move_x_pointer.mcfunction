execute if entity @s[scores={mb.dir=0}] at @s run tp ~1 ~ ~
execute if entity @s[scores={mb.dir=3}] at @s run tp ~ ~ ~1

execute if entity @s[scores={mb.dir=1}] at @s run tp ~-1 ~ ~
execute if entity @s[scores={mb.dir=2}] at @s run tp ~ ~ ~-1

function song_load:utils/array/cycle_y