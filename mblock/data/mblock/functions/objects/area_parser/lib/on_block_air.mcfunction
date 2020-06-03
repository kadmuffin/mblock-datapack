# > On Block Air
#
# Disabled by default, run for enabling it:
#  /tag @s check_air
#
# Put here any code that should be run 
# when the block is air.
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

# Example code (show box when player is between 0 and 25 blocks)
# Limited range is set for reducing the amount of commands added
# to the execution stack
execute store result score @s mb_tmp1 run time query daytime
execute as @s[scores={mb_tmp1=12500..},tag=!on_top,tag=on_side,tag=!on_side_center] if entity @a[distance=0..25] run particle end_rod ~ ~ ~ 0 0 0 0 1

execute as @s[scores={mb_tmp1=..12490},tag=!on_top,tag=on_side,tag=!on_side_center] if entity @a[distance=0..25] run particle minecraft:dragon_breath ~ ~ ~ 0 0 0 0 5
#execute as @s[tag=!on_top,tag=on_side] run setblock ~ ~ ~ black_stained_glass_pane

tag @s remove dir_change
