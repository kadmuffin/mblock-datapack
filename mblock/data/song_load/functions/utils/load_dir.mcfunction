scoreboard players operation @s aparse.dir = @e[tag=music_player,sort=nearest] aparse.dir
tag @s add tmp
execute as @e[tag=music_player,sort=nearest] if entity @s[tag=look_neg] run tag @e[tag=tmp] add look_neg
tag @s remove tmp

execute as @s[tag=!look_neg,scores={aparse.dir=0}] at @s run tp ~ ~ ~1
execute as @s[tag=!look_neg,scores={aparse.dir=1}] at @s run tp ~1 ~ ~

execute as @s[tag=look_neg,scores={aparse.dir=0}] at @s run tp ~ ~ ~-1
execute as @s[tag=look_neg,scores={aparse.dir=1}] at @s run tp ~-1 ~ ~
