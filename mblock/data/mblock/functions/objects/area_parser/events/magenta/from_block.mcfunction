execute if block ~ ~ ~ magenta_glazed_terracotta[facing=north] run scoreboard players set .new_direction _aparse.tmp1 0
execute if block ~ ~ ~ magenta_glazed_terracotta[facing=south] run scoreboard players set .new_direction _aparse.tmp1 1
execute if block ~ ~ ~ magenta_glazed_terracotta[facing=east] run scoreboard players set .new_direction _aparse.tmp1 2
execute if block ~ ~ ~ magenta_glazed_terracotta[facing=west] run scoreboard players set .new_direction _aparse.tmp1 3

execute unless score .new_direction _aparse.tmp1 = @s mb.dir run tag @s add direction_changed

execute as @s[tag=!direction_changed] run function mblock:objects/area_parser/events/magenta/x_private/apply
execute as @s[tag=direction_changed] run function mblock:objects/area_parser/events/magenta/x_private/validate_direction

# Clean tags
tag @s[tag=!note_player] remove direction_changed
tag @s remove disable_redirection
tag @s remove accepted_changes
