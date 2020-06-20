scoreboard players operation #last_direction _mbtmp = @s mb.dir
scoreboard players set @s mb.dir -2
function mblock:block/get_sound_dir
scoreboard players operation @s mb.dir = #last_direction _mbtmp
function mblock:sound/play_test
