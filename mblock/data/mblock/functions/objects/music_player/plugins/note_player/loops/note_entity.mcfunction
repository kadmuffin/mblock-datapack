execute as @s[tag=!_played] at @s run function mblock:block/check_at_pos
execute as @s[tag=!_played] at @s if score #sound _mbtmp matches 1..4 align xyz positioned ~.5 ~.5 ~.5 run particle minecraft:explosion ~ ~ ~ 0.3 0.3 0.3 0.4 1

tag @s add _played

execute if block ~ ~ ~ air run kill @s
execute unless entity @e[tag=note_player,distance=0..1.6] run kill @s
