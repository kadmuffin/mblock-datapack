scoreboard players add @s sload 1
execute store result bossbar song_load:progress value run scoreboard players get @s sload

execute as @s[tag=!look_neg,scores={aparse.dir=0}] at @s run tp ~ ~ ~1
execute as @s[tag=!look_neg,scores={aparse.dir=1}] at @s run tp ~1 ~ ~

execute as @s[tag=look_neg,scores={aparse.dir=0}] at @s run tp ~ ~ ~-1
execute as @s[tag=look_neg,scores={aparse.dir=1}] at @s run tp ~-1 ~ ~

execute as @e[tag=z_pointer_extra,tag=!look_neg,scores={aparse.dir=0}] at @s run tp ~ ~ ~1
execute as @e[tag=z_pointer_extra,tag=!look_neg,scores={aparse.dir=1}] at @s run tp ~1 ~ ~

execute as @e[tag=z_pointer_extra,tag=look_neg,scores={aparse.dir=0}] at @s run tp ~ ~ ~-1
execute as @e[tag=z_pointer_extra,tag=look_neg,scores={aparse.dir=1}] at @s run tp ~-1 ~ ~

kill @e[tag=y_pointer]
kill @e[tag=x_pointer]

