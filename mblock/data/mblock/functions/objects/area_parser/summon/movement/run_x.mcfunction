execute if entity @s[scores={mb.dir=0..1}] positioned ~1 ~ ~ run function mblock:objects/area_parser/summon/movement/x/horizontal_plus_x
execute if entity @s[scores={mb.dir=2..3}] positioned ~ ~ ~1 run function mblock:objects/area_parser/summon/movement/x/horizontal_plus_z

scoreboard players reset @s _aparse.x

execute if entity @s[scores={mb.dir=0..1}] positioned ~-1 ~ ~ run function mblock:objects/area_parser/summon/movement/x/horizontal_neg_x
execute if entity @s[scores={mb.dir=2..3}] positioned ~ ~ ~-1 run function mblock:objects/area_parser/summon/movement/x/horizontal_neg_z

execute as @s[scores={_aparse.tmp3=0}] run tag @s add middle_layer
execute as @s[scores={_aparse.tmp3=1..2}] run tag @s remove middle_layer

scoreboard players reset @s _aparse.x

