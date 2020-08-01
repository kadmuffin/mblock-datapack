execute if block ~ ~ ~ #mblock:soundable run function mblock:sound/sounds/block_index
execute unless block ~ ~ ~ #mblock:soundable if score #external_sounds _mbtmp matches 1.. if block ~ ~ ~ #mbe_sound:soundable run function mbe_sound:block_index

execute if block ~ ~ ~ #mblock:soundable run scoreboard players operation #sound_dir _mbtmp = #tmp_sound_dir _mbtmp
execute unless block ~ ~ ~ #mblock:soundable if score #external_sounds _mbtmp matches 1.. if block ~ ~ ~ #mbe_sound:soundable run scoreboard players operation #sound_dir _mbtmp = #tmp_sound_dir _mbtmp
