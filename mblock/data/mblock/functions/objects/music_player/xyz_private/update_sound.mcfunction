scoreboard players set @s mb_tmp2 0
scoreboard players set @s mb.dir 1
execute positioned ~ ~-1 ~ align xyz positioned ~.5 ~.5 ~.5 if block ~ ~-1 ~ #mblock:soundable run function mblock:note/utils/get_sound_dir
execute positioned ~ ~-1 ~ align xyz positioned ~.5 ~.5 ~.5 if block ~ ~-1 ~ #mblock:soundable run scoreboard players operation @s mb_tmp2 = #sound _mbtmp

execute if score #external_sounds _mbtmp matches 1.. positioned ~ ~-1 ~ align xyz positioned ~.5 ~.5 ~.5 unless block ~ ~-1 ~ #mblock:soundable if block ~ ~ ~ #mbe_sound:soundable run function mblock:note/utils/get_sound_dir
execute if score #external_sounds _mbtmp matches 1.. positioned ~ ~-1 ~ align xyz positioned ~.5 ~.5 ~.5 unless block ~ ~-1 ~ #mblock:soundable if block ~ ~ ~ #mbe_sound:soundable run scoreboard players operation @s mb_tmp2 = #sound _mbtmp

tag @s add updating_sound
execute at @s as @e[tag=note_player,tag=!sound_updated] if score @s mb_id = @e[tag=updating_sound,sort=nearest,limit=1] mb_id run scoreboard players operation @s mb_tmp2 = @e[tag=updating_sound,sort=nearest,limit=1] mb_tmp2
tag @s remove updating_sound