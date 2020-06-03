tag @s add checking_entities

execute as @e[tag=z_step] unless entity @e[tag=finished] if score @s aparse.id = @e[tag=checking_entities,limit=1] aparse.id run tag @e[tag=checking_entities,limit=1] add finished

execute as @s[tag=!finished] run function mblock:objects/area_parser/step/step_functions/summon_tmp
#execute as @s[tag=!finished] at @s run function mblock:objects/area_parser/step/step_functions/summon_tmp

#execute as @s[tag=!finished] at @s run function mblock:objects/area_parser/step/step_functions/summon_tmp

tag @s remove finished
tag @s remove checking_entities