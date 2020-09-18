fill ~ ~-1 ~ ~ ~-1 ~ smooth_stone replace #mb_plugin:floor
execute as @s[scores={aparse.dir=0},tag=look_neg] run fill ~ ~-1 ~1 ~ ~-1 ~ smooth_stone replace #mb_plugin:floor
execute as @s[scores={aparse.dir=0},tag=!look_neg] run fill ~ ~-1 ~-1 ~ ~-1 ~ smooth_stone replace #mb_plugin:floor
execute as @s[scores={aparse.dir=1},tag=look_neg] run fill ~1 ~-1 ~ ~ ~-1 ~ smooth_stone replace #mb_plugin:floor
execute as @s[scores={aparse.dir=1},tag=!look_neg] run fill ~-1 ~-1 ~ ~ ~-1 ~ smooth_stone replace #mb_plugin:floor

