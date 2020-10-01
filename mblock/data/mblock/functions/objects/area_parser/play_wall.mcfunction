execute unless score @s aparse.ysize matches 1.. run scoreboard players set @s aparse.ysize 1

scoreboard players reset @s _aparse.tmp
scoreboard players reset @s _aparse.x
scoreboard players set @s _aparse.tmp3 5
tag @s remove middle_layer

execute as @s[tag=!_not_align] align xyz positioned ~.5 ~.5 ~.5 run function mblock:objects/area_parser/summon/movement/vertical
execute as @s[tag=_not_align] run function mblock:objects/area_parser/summon/movement/vertical