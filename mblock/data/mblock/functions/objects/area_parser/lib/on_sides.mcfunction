#execute store result score @s mb_tmp1 run time query daytime
execute if entity @s[tag=show_top] as @s[tag=!repeating_end,tag=!dir_end] if entity @s[distance=0..25] run particle end_rod ~ ~ ~ 0 0 0 0 1
execute if entity @s[tag=show_top] as @s[tag=!repeating_end,tag=dir_end] if entity @s[distance=0..25] run particle dust 0.39 0.57 0.96 1 ~ ~ ~ 0 0 0 0 5
execute if entity @s[tag=show_top] as @s[tag=repeating_end,tag=!dir_end] if entity @s[distance=0..25] run particle dust 0.7098 0.39 0.89 1 ~ ~ ~ 0 0 0 0 5

execute if entity @s[tag=!show_top] as @s[tag=!repeating_end,tag=!dir_end,tag=!on_top,scores={_aparse_tmp=2..}] if entity @s[distance=0..25] run particle end_rod ~ ~ ~ 0 0 0 0 1
execute if entity @s[tag=!show_top] as @s[tag=!repeating_end,tag=dir_end,tag=!on_top,scores={_aparse_tmp=2..}] if entity @s[distance=0..25] run particle dust 0.39 0.57 0.96 1 ~ ~ ~ 0 0 0 0 5
execute if entity @s[tag=!show_top] as @s[tag=repeating_end,tag=!dir_end,tag=!on_top] if entity @s[distance=0..25] run particle dust 0.7098 0.39 0.89 1 ~ ~ ~ 0 0 0 0 5

execute if entity @s[tag=!show_top] as @s[tag=!repeating_end,tag=!dir_end,tag=on_top,tag=on_corner,scores={_aparse_tmp=2..}] if entity @s[distance=0..25] run particle end_rod ~ ~ ~ 0 0 0 0 1
execute if entity @s[tag=!show_top] as @s[tag=!repeating_end,tag=dir_end,tag=on_top,tag=on_corner,scores={_aparse_tmp=2..}] if entity @s[distance=0..25] run particle dust 0.39 0.57 0.96 1 ~ ~ ~ 0 0 0 0 5
execute if entity @s[tag=!show_top] as @s[tag=repeating_end,tag=!dir_end,tag=on_top,tag=on_corner,scores={_aparse_tmp=2..}] if entity @s[distance=0..25] run particle dust 0.7098 0.39 0.89 1 ~ ~ ~ 0 0 0 0 5

execute if entity @s[tag=!show_top] as @s[tag=!repeating_end,tag=!dir_end,scores={_aparse_tmp=0..1}] if entity @s[distance=0..25] run particle end_rod ~ ~ ~ 0 0 0 0 1
execute if entity @s[tag=!show_top] as @s[tag=!repeating_end,tag=dir_end,scores={_aparse_tmp=0..1}] if entity @s[distance=0..25] run particle dust 0.39 0.57 0.96 1 ~ ~ ~ 0 0 0 0 5

#execute as @s[scores={mb_tmp1=..12490}] if entity @s[distance=0..25] run particle minecraft:dragon_breath ~ ~ ~ 0 0 0 0 5
#execute as @s[tag=!on_top,tag=on_side] run setblock ~ ~ ~ black_stained_glass_pane

#tag @s remove dir_change
