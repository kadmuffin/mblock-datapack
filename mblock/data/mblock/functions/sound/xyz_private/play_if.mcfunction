execute if score #sound _mbtmp >= #external_min _mbtmp if score #sound _mbtmp <= #external_max _mbtmp run function mbe_sound:play
execute unless score #sound _mbtmp >= #external_min _mbtmp unless score #sound _mbtmp <= #external_max _mbtmp run function mblock:sound/xyz_private/play
