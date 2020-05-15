scoreboard objectives add _mbtmp dummy
scoreboard objectives add _mbtmp1 dummy

# Deleting in near future
scoreboard objectives add _mb_last_dir dummy
scoreboard objectives add _mb_dir dummy
scoreboard objectives add _mb_dir_g dummy
scoreboard objectives add _mb_dir_tmp dummy
scoreboard objectives add _mb_dir_g_tmp dummy
scoreboard objectives add _mb_z_trav dummy
scoreboard objectives add _mb_particle dummy
scoreboard objectives add mb_player dummy
scoreboard objectives add mb_x_size dummy
scoreboard objectives add mb_y_size dummy
scoreboard objectives add mb_z_size dummy


# Include objects setups
function mblock:objects/note_wand/setup
function mblock:objects/music_player/setup
function mblock:objects/area_parser/setup
