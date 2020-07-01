tag @e[tag=checking_entities,limit=1] add finished

#execute if entity @e[tag=same_id] run kill @e[tag=same_id,sort=random,limit=1]
#tag @s add same_id