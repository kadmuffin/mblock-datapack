execute as @s[tag=instant_start,scores={mb.dir=0}] align xz positioned ~.5 ~ ~.5 positioned ~ ~ ~1.5 run function mblock:objects/area_parser/play_wall
execute as @s[tag=instant_start,scores={mb.dir=1}] align xz positioned ~.5 ~ ~.5 positioned ~ ~ ~-1.5 run function mblock:objects/area_parser/play_wall
execute as @s[tag=instant_start,scores={mb.dir=2}] align xz positioned ~.5 ~ ~.5 positioned ~-1.5 ~ ~ run function mblock:objects/area_parser/play_wall
execute as @s[tag=instant_start,scores={mb.dir=3}] align xz positioned ~.5 ~ ~.5 positioned ~1.5 ~ ~ run function mblock:objects/area_parser/play_wall

execute as @s[tag=!instant_start,scores={mb.dir=0}] align xz positioned ~.5 ~ ~.5 positioned ~ ~ ~.5 run function mblock:objects/area_parser/play_wall
execute as @s[tag=!instant_start,scores={mb.dir=1}] align xz positioned ~.5 ~ ~.5 positioned ~ ~ ~-.5 run function mblock:objects/area_parser/play_wall
execute as @s[tag=!instant_start,scores={mb.dir=2}] align xz positioned ~.5 ~ ~.5 positioned ~-.5 ~ ~ run function mblock:objects/area_parser/play_wall
execute as @s[tag=!instant_start,scores={mb.dir=3}] align xz positioned ~.5 ~ ~.5 positioned ~.5 ~ ~ run function mblock:objects/area_parser/play_wall
