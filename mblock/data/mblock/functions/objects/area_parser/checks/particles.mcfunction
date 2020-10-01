execute if entity @s[tag=show_top] positioned ~ ~.1 ~ run function mblock_events:get_particle
execute unless entity @s[tag=show_top] as @s[tag=!on_top] positioned ~ ~.1 ~ run function mblock_events:get_particle
