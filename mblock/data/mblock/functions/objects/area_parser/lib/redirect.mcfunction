scoreboard players add @s _aparse_tmp5 1
execute as @s[tag=z_pointer,tag=!look_neg,scores={aparse.dir=1}] at @s run tp ~ ~ ~1
execute as @s[tag=z_pointer,tag=look_neg,scores={aparse.dir=1}] at @s run tp ~ ~ ~-1
execute as @s[tag=z_pointer,tag=!look_neg,scores={aparse.dir=0}] at @s run tp ~1 ~ ~
execute as @s[tag=z_pointer,tag=look_neg,scores={aparse.dir=0}] at @s run tp ~-1 ~ ~

execute as @s[tag=!z_pointer,tag=!look_neg,scores={aparse.dir=0}] at @s run tp ~ ~ ~1
execute as @s[tag=!z_pointer,tag=look_neg,scores={aparse.dir=0}] at @s run tp ~ ~ ~-1
execute as @s[tag=!z_pointer,tag=!look_neg,scores={aparse.dir=1}] at @s run tp ~1 ~ ~
execute as @s[tag=!z_pointer,tag=look_neg,scores={aparse.dir=1}] at @s run tp ~-1 ~ ~

execute as @s at @s if score @s _aparse_tmp5 <= @s _aparse_tmp6 run function mblock:objects/area_parser/lib/redirect