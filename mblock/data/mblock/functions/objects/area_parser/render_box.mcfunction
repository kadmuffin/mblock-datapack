tag @s add checking_entities
tag @e[tag=finished] remove finished

execute as @e[tag=z_step] unless entity @e[tag=finished] if score @s aparse.id = @e[tag=checking_entities,limit=1] aparse.id run function mblock:objects/area_parser/box/utils/check_extra
execute as @s[tag=!finished] run function mblock:objects/area_parser/box/utils/summon_z

tag @s remove finished
tag @s remove checking_entities