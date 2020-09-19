tag @s add _loaded

execute as @s[tag=self_align] at @s align xyz positioned ~.5 ~.5 ~.5 run tp ~ ~1 ~
execute as @s[tag=!self_align] at @e[tag=music_player,sort=nearest,limit=1] align xyz positioned ~.5 ~.5 ~.5 run tp ~ ~ ~

data merge entity @s {NoGravity: 1b, PickupDelay: -32760s, Motion: [0.0d, 0.0d, 0.0d]}

execute if entity @e[tag=z_pointer] run function mblock:objects/item_reader/wait

tag @s add load_sequence