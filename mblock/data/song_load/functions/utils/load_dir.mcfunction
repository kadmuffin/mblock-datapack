execute if entity @s[tag=!in_box] run scoreboard players operation @s aparse.dir = @e[tag=music_player,sort=nearest,limit=1] aparse.dir
execute if entity @s[tag=in_box] run scoreboard players operation @s aparse.dir = @e[tag=z_step,sort=nearest,limit=1] aparse.dir
tag @s add tmp
execute if entity @s[tag=!in_box] as @e[tag=music_player,sort=nearest,limit=1] if entity @s[tag=look_neg] run tag @e[tag=tmp] add look_neg
execute if entity @s[tag=in_box] as @e[tag=z_step,sort=nearest,limit=1] if entity @s[tag=look_neg] run tag @e[tag=tmp] add look_neg
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

