#execute if entity @s[tag=show_top] as @s[tag=!repeating_end,tag=!dir_end] if entity @s[distance=0..25] run particle end_rod ~ ~.1 ~ 0 0 0 0 1
execute if entity @s[tag=show_top] positioned ~ ~.1 ~ run function mblock_events:get_particle

execute unless entity @s[tag=show_top] as @s[tag=!on_top] positioned ~ ~.1 ~ run function mblock_events:get_particle

#execute if entity @s[tag=!show_top] as @s[tag=!repeating_end,tag=!dir_end,tag=!on_top,scores={_aparse_tmp=2..}] if entity @s[distance=0..25] run particle end_rod ~ ~.1 ~ 0 0 0 0 1
#execute if entity @s[tag=!show_top] as @s[tag=!repeating_end,tag=dir_end,tag=!on_top,scores={_aparse_tmp=2..}] if entity @s[distance=0..25] run particle dust 0.96078 0.38823 0.74117 1 ~ ~.1 ~ 0 0 0 0 5
#execute if entity @s[tag=!show_top] as @s[tag=repeating_end,tag=!dir_end,tag=!on_top] if entity @s[distance=0..25] run particle dust 0.7098 0.39 0.89 1 ~ ~.1 ~ 0 0 0 0 5

#execute if entity @s[tag=!show_top] as @s[tag=!repeating_end,tag=!dir_end,tag=on_top,tag=on_corner,scores={_aparse_tmp=2..}] if entity @s[distance=0..25] run particle end_rod ~ ~.1 ~ 0 0 0 0 1
#execute if entity @s[tag=!show_top] as @s[tag=!repeating_end,tag=dir_end,tag=on_top,tag=on_corner,scores={_aparse_tmp=2..}] if entity @s[distance=0..25] run particle dust 0.96078 0.38823 0.74117 1 ~ ~.1 ~ 0 0 0 0 5
#execute if entity @s[tag=!show_top] as @s[tag=repeating_end,tag=!dir_end,tag=on_top,tag=on_corner,scores={_aparse_tmp=2..}] if entity @s[distance=0..25] run particle dust 0.7098 0.39 0.89 1 ~ ~.1 ~ 0 0 0 0 5

#execute if entity @s[tag=!show_top] as @s[tag=!repeating_end,tag=!dir_end,scores={_aparse_tmp=0..1}] if entity @s[distance=0..25] run particle end_rod ~ ~.1 ~ 0 0 0 0 1
#execute if entity @s[tag=!show_top] as @s[tag=!repeating_end,tag=dir_end,scores={_aparse_tmp=0..1}] if entity @s[distance=0..25] run particle dust 0.96078 0.38823 0.74117 1 ~ ~.1 ~ 0 0 0 0 5
#execute if entity @s[tag=!show_top] as @s[tag=repeating_end,tag=!dir_end,scores={_aparse_tmp=0..1}] if entity @s[distance=0..25] run particle dust 0.7098 0.39 0.89 1 ~ ~.1 ~ 0 0 0 0 5
