scoreboard players add @s _box.travel 1

# Direction Table:
# South = 0
# North = 1
# West = 2
# East = 3

execute as @s[scores={mb.dir=0}] positioned ~1 ~ ~ run function mblock:box/loop/x_loop
execute as @s[scores={mb.dir=1}] positioned ~-1 ~ ~ run function mblock:box/loop/x_loop

execute as @s[scores={mb.dir=3}] positioned ~ ~ ~1 run function mblock:box/loop/x_loop
execute as @s[scores={mb.dir=2}] positioned ~ ~ ~-1 run function mblock:box/loop/x_loop