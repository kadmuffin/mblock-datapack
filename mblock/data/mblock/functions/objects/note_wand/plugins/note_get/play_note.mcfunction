scoreboard players operation #last_direction _mbtmp = #direction _mbtmp
scoreboard players set #direction _mbtmp 1
function mblock:block/get_sound
scoreboard players operation #direction _mbtmp = #last_direction _mbtmp
function mblock:sound/play