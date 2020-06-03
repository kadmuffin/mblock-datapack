# > On Block not Air
#
# Disabled by default, run for enabling it:
#  /tag @s check_air
#
# Put here any code that should be run 
# when the block is not air.
#
# Avaliable tags:
# - "on_side"
# - "on_side_center"
# - "on_center"
# - "on_corner"
# - "on_start"
# - "on_end"
# - "on_top"
# - "on_bottom"
#
# Example code (set stone to wool)
#execute if block ~ ~ ~ stone run setblock ~ ~ ~ white_wool
execute as @s[tag=on_true_end] if block ~ ~ ~ magenta_glazed_terracotta[facing=west] run tag @s add dir_change
execute as @s[tag=on_true_end] if block ~ ~ ~ magenta_glazed_terracotta[facing=west] run scoreboard players set @s _aparse_tmp2 0
