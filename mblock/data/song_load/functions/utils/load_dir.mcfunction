scoreboard players operation @s mb.dir = @e[tag=mplayer_block,limit=1] mb.dir

# Direction Table:
# South = 0
# North = 1
# West = 2
# East = 3

execute as @s[scores={mb.dir=0}] at @s run tp ~ ~ ~1
execute as @s[scores={mb.dir=3}] at @s run tp ~1 ~ ~

execute as @s[scores={mb.dir=1}] at @s run tp ~ ~ ~-1
execute as @s[scores={mb.dir=2}] at @s run tp ~-1 ~ ~

