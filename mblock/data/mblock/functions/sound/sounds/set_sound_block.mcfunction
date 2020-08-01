execute if score #external_sounds _mbtmp matches 1.. unless score #sound _mbtmp >= #external_min _mbtmp unless score #sound _mbtmp <= #external_max _mbtmp run function mbe_sound:set_to_block
execute if score #external_sounds _mbtmp matches 1.. if score #sound _mbtmp >= #external_min _mbtmp if score #sound _mbtmp <= #external_max _mbtmp run function mblock:sound/sounds/xyz_private/extras/set_sound_block

execute unless score #external_sounds _mbtmp matches 1.. run function mblock:sound/sounds/xyz_private/extras/set_sound_block