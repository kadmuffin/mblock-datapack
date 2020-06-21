execute store result score @s mb.dir run data get entity @p Rotation[0]

scoreboard players set #360 mb.dir 360

scoreboard players operation @s mb.dir %= #360 mb.dir
scoreboard players operation @s mb.dir += #360 mb.dir
scoreboard players operation @s mb.dir %= #360 mb.dir

tag @s add else_if

# South
execute as @s[tag=else_if] if score @s mb.dir matches 315.. run data merge entity @s {ItemRotation: 3b}
execute as @s[tag=else_if] if score @s mb.dir matches 315.. run tag @s remove else_if
execute as @s[tag=else_if] if score @s mb.dir matches ..44 run data merge entity @s {ItemRotation: 3b}
execute as @s[tag=else_if] if score @s mb.dir matches ..44 run tag @s remove else_if

# West
execute as @s[tag=else_if] if score @s mb.dir matches ..134 run data merge entity @s {ItemRotation: 5b}
execute as @s[tag=else_if] if score @s mb.dir matches ..134 run tag @s remove else_if

# North
execute as @s[tag=else_if] if score @s mb.dir matches ..224 run data merge entity @s {ItemRotation: 7b}
execute as @s[tag=else_if] if score @s mb.dir matches ..224 run tag @s remove else_if

# East
execute as @s[tag=else_if] if score @s mb.dir matches ..314 run data merge entity @s {ItemRotation: 1b}
execute as @s[tag=else_if] if score @s mb.dir matches ..314 run tag @s remove else_if

# North
execute as @s[tag=else_if] run data merge entity @s {ItemRotation: 7b}
execute as @s[tag=else_if] run tag @s remove else_if

tag @s remove else_if
