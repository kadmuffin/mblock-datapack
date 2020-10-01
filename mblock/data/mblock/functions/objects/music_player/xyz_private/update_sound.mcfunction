scoreboard players set @s mbn.sound 0
scoreboard players set @s mbn.dir 0
execute positioned ~ ~-1 ~ align xyz positioned ~.5 ~.5 ~.5 if block ~ ~-1 ~ #mblock:soundable run function mblock:note/utils/get_sound_dir
execute positioned ~ ~-1 ~ align xyz positioned ~.5 ~.5 ~.5 if block ~ ~-1 ~ #mblock:soundable run scoreboard players operation @s mbn.sound = #sound _mbtmp

execute if score #external_sounds _mbtmp matches 1.. positioned ~ ~-1 ~ align xyz positioned ~.5 ~.5 ~.5 unless block ~ ~-1 ~ #mblock:soundable if block ~ ~ ~ #mbe_sound:soundable run function mblock:note/utils/get_sound_dir
execute if score #external_sounds _mbtmp matches 1.. positioned ~ ~-1 ~ align xyz positioned ~.5 ~.5 ~.5 unless block ~ ~-1 ~ #mblock:soundable if block ~ ~ ~ #mbe_sound:soundable run scoreboard players operation @s mbn.sound = #sound _mbtmp

tag @s add updating_sound
execute at @s as @e[tag=note_player,tag=!sound_updated] if score @s mb.id = @e[tag=updating_sound,sort=nearest,limit=1] mb.id run scoreboard players operation @s mbn.sound = @e[tag=updating_sound,sort=nearest,limit=1] mbn.sound
tag @s remove updating_sound