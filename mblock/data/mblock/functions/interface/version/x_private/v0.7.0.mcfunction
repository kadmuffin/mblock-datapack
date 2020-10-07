execute as @e[tag=music_player] at @s run function mblock:interface/version/x_private/v0.7.0_players

scoreboard objectives remove mb_player
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

scoreboard objectives remove _array_tmp
scoreboard objectives remove _array_tmp2
scoreboard objectives remove mb_ztravel

scoreboard objectives remove mb.arrow_dir
scoreboard objectives remove mb_tmp
scoreboard objectives remove mb_tmp1
scoreboard objectives remove mb_tmp2
scoreboard objectives remove mb_tmpx
scoreboard objectives remove mb_tmpz
scoreboard objectives remove mb_id

scoreboard objectives remove mb.menu.tp
scoreboard objectives remove mb.menu.play
scoreboard objectives remove mb.menu.stop
scoreboard objectives remove mb.menu.bpm
scoreboard objectives remove mb.menu.zsize
scoreboard objectives remove mb.menu.ysize
scoreboard objectives remove mb.menu.xsize
execute store success score #tmp _mbtmp run scoreboard objectives remove mb.menu.floor

scoreboard objectives remove mb.gb.floor_type
scoreboard objectives remove _mb.floor

scoreboard players set #version_x _mbtmp 0
scoreboard players set #version_y _mbtmp 7
scoreboard players set #version_z _mbtmp 0

execute if score #tmp _mbtmp matches 0 run scoreboard players set #version_y _mbtmp 6
execute if score #tmp _mbtmp matches 0 run scoreboard players set #version_z _mbtmp 2