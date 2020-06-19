execute store result score #player_view mb.dir run data get entity @p Rotation[0]

execute if score #player_view mb.dir matches -135..-44 run data merge entity @s {ItemRotation: 1b}

execute if score #player_view mb.dir matches -44..0 run data merge entity @s {ItemRotation: 3b}
execute if score #player_view mb.dir matches -360..-315 run data merge entity @s {ItemRotation: 3b}

execute if score #player_view mb.dir matches -315..-225 run data merge entity @s {ItemRotation: 5b}

execute if score #player_view mb.dir matches -225..-135 run data merge entity @s {ItemRotation: 7b}
