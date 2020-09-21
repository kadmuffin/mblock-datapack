# Main Install file
scoreboard objectives remove _mbtmp
scoreboard objectives remove _mbtmp1
scoreboard objectives remove mb_player
scoreboard objectives remove flying

# Area Parser folder
# tmp -> y axis, tmp1 -> x axis, tmp2 -> z axis
scoreboard objectives remove _aparse_tmp
scoreboard objectives remove _aparse_tmp1
scoreboard objectives remove _aparse_tmp2
# Used for x, z pos storing
scoreboard objectives remove _aparse_tmp3
scoreboard objectives remove _aparse_tmp4
# Redirect Tp Count
scoreboard objectives remove _aparse_tmp5
scoreboard objectives remove _aparse_tmp6
scoreboard objectives remove _aparse_tmp7

scoreboard objectives remove aparse.xsize
scoreboard objectives remove aparse.ysize
scoreboard objectives remove aparse.zsize
scoreboard objectives remove aparse.dir

# Used to differentiate between the user and the entity on steps
scoreboard objectives remove aparse.id

# Item Reader folder
scoreboard objectives remove _array_tmp
scoreboard objectives remove _array_tmp2

# MusicPlayer folder
scoreboard objectives remove mb_ztravel
scoreboard objectives remove mb.bpm
scoreboard objectives remove mb.true_bpm
scoreboard objectives remove mb.dir
scoreboard objectives remove mb.arrow_dir
scoreboard objectives remove mb_tmp
scoreboard objectives remove mb_tmp1
scoreboard objectives remove mb_tmp2
scoreboard objectives remove mb_tmpx
scoreboard objectives remove mb_tmpz
scoreboard objectives remove mb.id

# NoteWand folder
scoreboard objectives remove _rayc_tmp
scoreboard objectives remove carrot
scoreboard objectives remove sneak

# Interface folder
scoreboard objectives remove mb.menu.lang
scoreboard objectives remove mb.menu.page

scoreboard objectives remove mb.menu.tp
scoreboard objectives remove mb.menu.play
scoreboard objectives remove mb.menu.stop
scoreboard objectives remove mb.menu.bpm
scoreboard objectives remove mb.menu.zsize
scoreboard objectives remove mb.menu.ysize
scoreboard objectives remove mb.menu.xsize
scoreboard objectives remove mb.menu.floor
scoreboard objectives remove mb.gb.box_speed
scoreboard objectives remove mb.gb.floor_type

scoreboard objectives remove mb_x_pos
scoreboard objectives remove mb_y_pos
scoreboard objectives remove sload
scoreboard objectives remove sload_run
scoreboard objectives remove sload_tick
scoreboard objectives remove sload_tmp

scoreboard objectives remove mb.event
scoreboard objectives remove _mb.floor

tellraw @a {"text":"MusicBlocks was uninstalled!, Please disable the datapack or close your world and remove the mblock file from your datapack folder", "color": "green"}
