execute as @s[tag=note_player,scores={aparse.dir=0}] at @s run tp ~ ~ ~
execute as @s[tag=note_player,scores={aparse.dir=1}] at @s run tp ~ ~ ~
execute as @s[tag=!note_player,scores={aparse.dir=0},tag=look_neg] at @s run tp ~1 ~ ~
execute as @s[tag=!note_player,scores={aparse.dir=0},tag=!look_neg] at @s run tp ~-1 ~ ~
execute as @s[tag=!note_player,scores={aparse.dir=1},tag=!look_neg] at @s run tp ~ ~ ~-1
execute as @s[tag=!note_player,scores={aparse.dir=1},tag=look_neg] at @s run tp ~ ~ ~1
