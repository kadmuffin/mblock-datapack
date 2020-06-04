execute as @s[tag=!_played] at @s run function mblock:block/check_at_pos
tag @s add _played

execute if block ~ ~ ~ air run kill @s
execute unless entity @e[tag=note_player,distance=0..1.2] run kill @s
