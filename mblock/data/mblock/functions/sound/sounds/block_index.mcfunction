execute if score #sound _mbtmp = .last_sound _mbtmp if score #external_sounds _mbtmp matches 1.. if score #sound _mbtmp >= #external_min _mbtmp if score #sound _mbtmp <= #external_max _mbtmp run function mbe_sound:block_index
execute if score #sound _mbtmp = .last_sound _mbtmp run function mblock:sound/sounds/xyz_private/extras/block_index
