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
#  - aparse.dir
#    * When set to 0 runs on x axis,
#      on 1 runs in z axis.
#
# Avaliable tags before run:
# - "look_neg"
#   * Invert the area direction
# - "_ancled"
#   * Resets the area parser each time
#     the z limit is hit (multiplies the direction by -1
#     so end position may vary).
# - "_ancled_pos"
#   * Resets the area but using data modify to restart the position
#     so expect some lag hit in small areas.

# tmp -> y axis, tmp1 -> x axis, tmp2 -> z axis
scoreboard objectives add _aparse_tmp dummy
scoreboard objectives add _aparse_tmp1 dummy
scoreboard objectives add _aparse_tmp2 dummy
# Used for x, z pos storing (remove if _ancled_pos tag isn't used)
scoreboard objectives add _aparse_tmp3 dummy
scoreboard objectives add _aparse_tmp4 dummy
# Redirect Tp Count
scoreboard objectives add _aparse_tmp5 dummy
scoreboard objectives add _aparse_tmp6 dummy

scoreboard objectives add aparse.xsize dummy
scoreboard objectives add aparse.ysize dummy
scoreboard objectives add aparse.zsize dummy
scoreboard objectives add aparse.dir dummy

# Used to differentiate between the user and the entity on steps
scoreboard objectives add aparse.id dummy
scoreboard players set .global aparse.id 0

# Schedules functions at start
scoreboard players set schedule_y _aparse_tmp 0
scoreboard players set schedule_z _aparse_tmp 0
