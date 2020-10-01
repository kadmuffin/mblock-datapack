execute as @s if block ~ ~ ~ #mblock:event_block at @s unless block ~ ~ ~ #mblock:event_block run particle minecraft:totem_of_undying ~ ~1 ~ 0 0.3 0 0 4
execute as @s[scores={mb.dir=2}] positioned ~-1 ~ ~ if block ~ ~ ~ #mblock:event_block at @s positioned ~-1 ~ ~ unless block ~ ~ ~ #mblock:event_block run particle minecraft:totem_of_undying ~ ~1 ~ 0 0.3 0 0 4
execute as @s[scores={mb.dir=3}] positioned ~1 ~ ~ if block ~ ~ ~ #mblock:event_block at @s positioned ~1 ~ ~ unless block ~ ~ ~ #mblock:event_block run particle minecraft:totem_of_undying ~ ~1 ~ 0 0.3 0 0 4
execute as @s[scores={mb.dir=1}] positioned ~ ~ ~-1 if block ~ ~ ~ #mblock:event_block at @s positioned ~ ~ ~-1 unless block ~ ~ ~ #mblock:event_block run particle minecraft:totem_of_undying ~ ~1 ~ 0 0.3 0 0 4
execute as @s[scores={mb.dir=0}] positioned ~ ~ ~1 if block ~ ~ ~ #mblock:event_block at @s positioned ~ ~ ~1 unless block ~ ~ ~ #mblock:event_block run particle minecraft:totem_of_undying ~ ~1 ~ 0 0.3 0 0 4
