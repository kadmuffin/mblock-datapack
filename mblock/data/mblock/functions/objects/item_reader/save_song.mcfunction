tag @s add _saved

execute as @s[tag=self_align] at @s align xyz positioned ~.5 ~.5 ~.5 run tp ~ ~1 ~
execute as @s[tag=!self_align] at @e[tag=music_player,sort=nearest,limit=1] align xyz positioned ~.5 ~.5 ~.5 run tp ~ ~ ~

data merge entity @s {NoGravity: 1b, PickupDelay: -32760s, Motion: [0.0d, 0.0d, 0.0d]}

execute if entity @e[tag=z_pointer] run tellraw @p ["",{"text":"[MusicBlocks] ","color":"dark_gray"},{"text":"A Song is already saving/loading, waiting for it.","color":"red"}]
execute if entity @e[tag=z_pointer] run data modify entity @s CustomName set value '"§8[MBlock] §4Waiting for process"'
execute if entity @e[tag=z_pointer] run data modify entity @s CustomNameVisible set value 1b

tag @s add save_sequence