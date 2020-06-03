tag @s add killing_last
execute at @s as @e[tag=note_player] if score @s mb_id = @e[tag=killing_last,sort=nearest,limit=1] mb_id run kill @s
tag @s remove killing_last

# Compute backend BPM
scoreboard players operation @s mb.true_bpm = @s mb.bpm
scoreboard players operation @s mb.true_bpm *= .scale mb.true_bpm
scoreboard players operation @s mb.true_bpm /= .bpm_div mb.true_bpm

tag @s add _summon_player
tag @s add _not_align
scoreboard players operation @s mb_tmpz = @s aparse.zsize
scoreboard players set @s aparse.zsize 0

execute as @s[tag=!look_neg,scores={aparse.dir=0}] align xz positioned ~.5 ~ ~.5 positioned ~ ~ ~2.5 run function mblock:objects/area_parser/run_instant
execute as @s[tag=look_neg,scores={aparse.dir=0}] align xz positioned ~.5 ~ ~.5 positioned ~ ~ ~-2.5 run function mblock:objects/area_parser/run_instant
execute as @s[tag=!look_neg,scores={aparse.dir=1}] align xz positioned ~.5 ~ ~.5 positioned ~2.5 ~ ~ run function mblock:objects/area_parser/run_instant
execute as @s[tag=look_neg,scores={aparse.dir=1}] align xz positioned ~.5 ~ ~.5 positioned ~-2.5 ~ ~ run function mblock:objects/area_parser/run_instant

scoreboard players operation @s aparse.zsize = @s mb_tmpz
tag @s remove _summon_player
tag @s remove _not_align

#function mblock:objects/music_player/plugins/note_player/schedule_update