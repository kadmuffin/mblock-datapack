tag @s add runned

function mblock:interface/commands/kill_player

# Compute backend BPM
function mblock:objects/music_player/plugins/note_player/utils/compute_bpm

tag @s add _summon_player
tag @s add _not_align
scoreboard players operation @s mb_tmpz = @s aparse.zsize
scoreboard players set @s aparse.zsize 0

execute as @s[tag=instant_start,tag=!look_neg,scores={aparse.dir=0}] align xz positioned ~.5 ~ ~.5 positioned ~ ~ ~2.5 run function mblock:objects/area_parser/run_instant
execute as @s[tag=instant_start,tag=look_neg,scores={aparse.dir=0}] align xz positioned ~.5 ~ ~.5 positioned ~ ~ ~-2.5 run function mblock:objects/area_parser/run_instant
execute as @s[tag=instant_start,tag=!look_neg,scores={aparse.dir=1}] align xz positioned ~.5 ~ ~.5 positioned ~2.5 ~ ~ run function mblock:objects/area_parser/run_instant
execute as @s[tag=instant_start,tag=look_neg,scores={aparse.dir=1}] align xz positioned ~.5 ~ ~.5 positioned ~-2.5 ~ ~ run function mblock:objects/area_parser/run_instant

execute as @s[tag=!instant_start,tag=!look_neg,scores={aparse.dir=0}] align xz positioned ~.5 ~ ~.5 positioned ~ ~ ~2 run function mblock:objects/area_parser/run_instant
execute as @s[tag=!instant_start,tag=look_neg,scores={aparse.dir=0}] align xz positioned ~.5 ~ ~.5 positioned ~ ~ ~-2 run function mblock:objects/area_parser/run_instant
execute as @s[tag=!instant_start,tag=!look_neg,scores={aparse.dir=1}] align xz positioned ~.5 ~ ~.5 positioned ~2 ~ ~ run function mblock:objects/area_parser/run_instant
execute as @s[tag=!instant_start,tag=look_neg,scores={aparse.dir=1}] align xz positioned ~.5 ~ ~.5 positioned ~-2 ~ ~ run function mblock:objects/area_parser/run_instant

scoreboard players operation @s aparse.zsize = @s mb_tmpz
tag @s remove _summon_player
tag @s remove _not_align
tag @s remove instant_start

playsound minecraft:block.barrel.close block @s ~ ~ ~ 1 1.8
