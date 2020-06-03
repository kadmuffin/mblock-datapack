execute unless entity @e[distance=0..1,tag=_block] run function mblock:block/player/validate_block
execute as @e[tag=_block] at @s if block ~ ~ ~ air run kill @s
execute as @e[tag=_block] at @s positioned ~ ~ ~ unless entity @e[tag=player,distance=0..1.6] run kill @s