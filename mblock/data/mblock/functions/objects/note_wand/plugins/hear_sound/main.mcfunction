scoreboard players operation #last_direction _mbtmp = #direction _mbtmp
scoreboard players set #direction _mbtmp -2
function mblock:block/get_sound_dir
scoreboard players operation #direction _mbtmp = #last_direction _mbtmp
function mblock:sound/play_test
