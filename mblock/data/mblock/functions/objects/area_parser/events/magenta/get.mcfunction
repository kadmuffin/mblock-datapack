execute if block ~ ~ ~ magenta_glazed_terracotta[facing=north] run scoreboard players set @s _aparse.tmp1 0
execute if block ~ ~ ~ magenta_glazed_terracotta[facing=south] run scoreboard players set @s _aparse.tmp1 1
execute if block ~ ~ ~ magenta_glazed_terracotta[facing=east] run scoreboard players set @s _aparse.tmp1 2
execute if block ~ ~ ~ magenta_glazed_terracotta[facing=west] run scoreboard players set @s _aparse.tmp1 3

# Direction Table:
# South = 0
# North = 1
# West = 2
# East = 3
