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

scoreboard objectives add mb_ztravel dummy
scoreboard objectives add mb.bpm dummy
scoreboard objectives add mb.true_bpm dummy
scoreboard objectives add mb.dir dummy
scoreboard objectives add mb.arrow_dir dummy
scoreboard objectives add mb_tmp dummy
scoreboard objectives add mb_tmp1 dummy
scoreboard objectives add mb_tmp2 dummy
scoreboard objectives add mb_tmpx dummy
scoreboard objectives add mb_x_pos dummy
scoreboard objectives add mb_tmpz dummy
scoreboard objectives add mb_z_pos dummy
scoreboard objectives add mb_id dummy

scoreboard players set global mb_id 0
scoreboard players set .scale mb.true_bpm 100
scoreboard players set .bpm_div mb.true_bpm 112
scoreboard players set #2 mb.true_bpm 2
scoreboard players set .multiplier mb.true_bpm 2


# Schedule functions at start
#function mblock:objects/music_player/plugins/note_player/schedule_update
#function mblock:objects/music_player/xyz_private/schedule_run_arrow
