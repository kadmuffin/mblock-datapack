scoreboard players set #else _mbtmp 1
execute if score #sound _mbtmp >= #external_min _mbtmp if score #sound _mbtmp <= #external_max _mbtmp run function mbe_sound:play
execute if score #sound _mbtmp >= #external_min _mbtmp if score #sound _mbtmp <= #external_max _mbtmp run scoreboard players set #else _mbtmp 0

execute if score #else _mbtmp matches 1.. run function mblock:sound/xyz_private/play
