execute as @e[tag=_block] at @s if block ~ ~ ~ air run kill @s
execute as @e[tag=_block] at @s positioned ~ ~ ~ unless entity @e[tag=player,distance=0..1.2] run kill @s