tag @s[tag=look_neg] add _look_neg

execute if block ~ ~ ~ magenta_glazed_terracotta[facing=west] run scoreboard players set .new_direction _aparse_tmp5 1
execute if block ~ ~ ~ magenta_glazed_terracotta[facing=west] run tag @s remove _look_neg

execute if block ~ ~ ~ magenta_glazed_terracotta[facing=east] run scoreboard players set .new_direction _aparse_tmp5 1
execute if block ~ ~ ~ magenta_glazed_terracotta[facing=east] run tag @s add _look_neg

execute if block ~ ~ ~ magenta_glazed_terracotta[facing=north] run scoreboard players set .new_direction _aparse_tmp5 0
execute if block ~ ~ ~ magenta_glazed_terracotta[facing=north] run tag @s remove _look_neg

execute if block ~ ~ ~ magenta_glazed_terracotta[facing=south] run scoreboard players set .new_direction _aparse_tmp5 0
execute if block ~ ~ ~ magenta_glazed_terracotta[facing=south] run tag @s add _look_neg
