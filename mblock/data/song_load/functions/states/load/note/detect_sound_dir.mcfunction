execute unless score #sound_dir _mbtmp matches 0.. unless block ~ ~-1 ~ #mblock:octaves unless block ~ ~-1 ~ #mblock:soundable run scoreboard players set #sound_dir _mbtmp 0
execute unless score #sound_dir _mbtmp matches 0.. unless block ~ ~1 ~ #mblock:octaves unless block ~ ~1 ~ #mblock:soundable run scoreboard players set #sound_dir _mbtmp 1

execute unless score #sound_dir _mbtmp matches 0.. unless block ~1 ~ ~ #mblock:octaves unless block ~1 ~ ~ #mblock:soundable run scoreboard players set #sound_dir _mbtmp 2
execute unless score #sound_dir _mbtmp matches 0.. unless block ~-1 ~ ~ #mblock:octaves unless block ~-1 ~ ~ #mblock:soundable run scoreboard players set #sound_dir _mbtmp 3
execute unless score #sound_dir _mbtmp matches 0.. unless block ~ ~ ~1 #mblock:octaves unless block ~ ~ ~1 #mblock:soundable run scoreboard players set #sound_dir _mbtmp 4
execute unless score #sound_dir _mbtmp matches 0.. unless block ~ ~ ~-1 #mblock:octaves unless block ~ ~ ~-1 #mblock:soundable run scoreboard players set #sound_dir _mbtmp 5
execute unless score #sound_dir _mbtmp matches 0.. run scoreboard players set #sound_dir _mbtmp 0
