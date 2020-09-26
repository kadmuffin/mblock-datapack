execute if score #sound_dir _mbtmp matches 0 positioned ~ ~-1 ~ run function mblock:note/sound/set
execute if score #sound_dir _mbtmp matches 1 positioned ~ ~1 ~ run function mblock:note/sound/set
execute if score #sound_dir _mbtmp matches 2 positioned ~-1 ~ ~ run function mblock:note/sound/set
execute if score #sound_dir _mbtmp matches 3 positioned ~-1 ~ ~ run function mblock:note/sound/set
execute if score #sound_dir _mbtmp matches 4 positioned ~ ~ ~1 run function mblock:note/sound/set
execute if score #sound_dir _mbtmp matches 5 positioned ~ ~ ~-1 run function mblock:note/sound/set