execute if entity @s[tag=!in_box] run scoreboard players operation @s aparse.dir = @e[tag=music_player,sort=nearest,limit=1] aparse.dir
execute if entity @s[tag=in_box] run scoreboard players operation @s aparse.dir = @e[tag=z_step,sort=nearest,limit=1] aparse.dir
tag @s add tmp
execute if entity @s[tag=!in_box] as @e[tag=music_player,sort=nearest,limit=1] if entity @s[tag=look_neg] run tag @e[tag=tmp] add look_neg
execute if entity @s[tag=in_box] as @e[tag=z_step,sort=nearest,limit=1] if entity @s[tag=look_neg] run tag @e[tag=tmp] add look_neg
tag @s remove tmp

execute as @s[tag=!look_neg,scores={aparse.dir=0}] at @s run tp ~ ~ ~1
execute as @s[tag=!look_neg,scores={aparse.dir=1}] at @s run tp ~1 ~ ~

execute as @s[tag=look_neg,scores={aparse.dir=0}] at @s run tp ~ ~ ~-1
execute as @s[tag=look_neg,scores={aparse.dir=1}] at @s run tp ~-1 ~ ~
