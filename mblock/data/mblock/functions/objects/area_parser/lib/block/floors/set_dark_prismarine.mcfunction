fill ~ ~-1 ~ ~ ~-1 ~ dark_prismarine replace #mblock:floor
execute as @s[scores={aparse.dir=0},tag=look_neg] run fill ~ ~-1 ~1 ~ ~-1 ~ dark_prismarine replace #mblock:floor
execute as @s[scores={aparse.dir=0},tag=!look_neg] run fill ~ ~-1 ~-1 ~ ~-1 ~ dark_prismarine replace #mblock:floor
execute as @s[scores={aparse.dir=1},tag=look_neg] run fill ~1 ~-1 ~ ~ ~-1 ~ dark_prismarine replace #mblock:floor
execute as @s[scores={aparse.dir=1},tag=!look_neg] run fill ~-1 ~-1 ~ ~ ~-1 ~ dark_prismarine replace #mblock:floor

