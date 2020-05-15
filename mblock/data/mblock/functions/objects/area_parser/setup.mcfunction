# > Area Parser:
#
# Goes thought an area based on
# size declared in a scoreboard.
#
# Avaliable modes:
#  - on_block_air
#  - on_block_not_air
#  - on_every_block
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


# tmp -> y axis, tmp1 -> x axis, tmp2 -> z axis
scoreboard objectives add _aparse_tmp dummy
scoreboard objectives add _aparse_tmp1 dummy
scoreboard objectives add _aparse_tmp2 dummy

scoreboard objectives add aparse.xsize dummy
scoreboard objectives add aparse.ysize dummy
scoreboard objectives add aparse.zsize dummy
