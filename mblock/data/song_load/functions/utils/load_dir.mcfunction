scoreboard players operation @s aparse.dir = @e[tag=mplayer_block,limit=1] aparse.dir
tag @s add tmp
execute as @e[tag=mplayer_block,limit=1] if entity @s[tag=look_neg] run tag @e[tag=tmp] add look_neg
tag @s remove tmp

scoreboard players set @s[tag=look_neg,scores={aparse.dir=0}] mb.dir 1
scoreboard players set @s[tag=!look_neg,scores={aparse.dir=0}] mb.dir 0
scoreboard players set @s[tag=look_neg,scores={aparse.dir=1}] mb.dir 2
scoreboard players set @s[tag=!look_neg,scores={aparse.dir=1}] mb.dir 3

# Direction Table:
# South = 0
# North = 1
# West = 2
# East = 3

execute as @s[scores={mb.dir=0}] at @s run tp ~ ~ ~1
execute as @s[scores={mb.dir=3}] at @s run tp ~1 ~ ~

execute as @s[scores={mb.dir=1}] at @s run tp ~ ~ ~-1
execute as @s[scores={mb.dir=2}] at @s run tp ~-1 ~ ~

