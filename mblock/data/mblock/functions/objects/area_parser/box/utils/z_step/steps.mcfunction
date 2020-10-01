execute as @s[tag=_show_path] run particle sweep_attack ~ ~ ~

execute as @s[scores={mb.dir=0}] positioned ~ ~ ~1 if block ~ ~ ~ magenta_glazed_terracotta run function mblock:objects/area_parser/events/magenta/from_block
execute as @s[scores={mb.dir=1}] positioned ~ ~ ~-1 if block ~ ~ ~ magenta_glazed_terracotta run function mblock:objects/area_parser/events/magenta/from_block
execute as @s[scores={mb.dir=3}] positioned ~1 ~ ~ if block ~ ~ ~ magenta_glazed_terracotta run function mblock:objects/area_parser/events/magenta/from_block
execute as @s[scores={mb.dir=2}] positioned ~-1 ~ ~ if block ~ ~ ~ magenta_glazed_terracotta run function mblock:objects/area_parser/events/magenta/from_block