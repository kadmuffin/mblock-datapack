# > Run Instant
#
# Runs the operation in the same tick,
# this function is pretty slow at the time
# so don't call it every tick.
#
# Avaliable settings:
#  - aparse.x_size
#  - aparse.y_size
#  - aparse.z_size
#
# Avaliable tags before run:
# - "x_axis"
#   * Scans in the x direction
# - "z_axis"
#   * Scans in the z direction
# - "look_neg"
#   * Invert the looking direction
#

tag @s[tag=!x_axis,tag=!z_axis] add x_axis
tag @s[tag=x_axis,tag=z_axis] remove x_axis

execute unless score @s aparse.ysize matches 1.. run scoreboard players set @s aparse.ysize 1

scoreboard players reset @s _aparse_tmp
execute align xyz positioned ~.5 ~.5 ~.5 run function mblock:objects/area_parser/lib/movement/vertical