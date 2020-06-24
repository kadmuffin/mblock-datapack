execute if entity @s[scores={aparse.dir=0}] positioned ~1 ~ ~ run function mblock:objects/area_parser/lib/movement/horizontal_plus_x
execute if entity @s[scores={aparse.dir=1}] positioned ~ ~ ~1 run function mblock:objects/area_parser/lib/movement/horizontal_plus_z

scoreboard players reset @s _aparse_tmp1

execute if entity @s[scores={aparse.dir=0}] positioned ~-1 ~ ~ run function mblock:objects/area_parser/lib/movement/horizontal_neg_x
execute if entity @s[scores={aparse.dir=1}] positioned ~ ~ ~-1 run function mblock:objects/area_parser/lib/movement/horizontal_neg_z

execute as @s[tag=_summon_player,scores={_aparse_tmp3=0}] run tag @s add middle_layer
execute as @s[tag=_summon_player,scores={_aparse_tmp3=1..2}] run tag @s remove middle_layer

scoreboard players reset @s _aparse_tmp1

