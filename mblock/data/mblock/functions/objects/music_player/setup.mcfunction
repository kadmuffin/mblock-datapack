# > Music Player
#
# Matches any music block in the
# specified area and plays it.
#
# This folder isn't recommended 
# to be used outside the datapack.
#
# Dependencies:
#  - ../area_parser 
#    * Set of functions for 
#      scanning throught an area.
#
#  - ../note_wand (not directly required)
#    * Used for music player interaction.

scoreboard objectives add mb.xsize dummy
scoreboard objectives add mb.ysize dummy
scoreboard objectives add mb.zdepth dummy
scoreboard objectives add mb.ztravelled dummy
