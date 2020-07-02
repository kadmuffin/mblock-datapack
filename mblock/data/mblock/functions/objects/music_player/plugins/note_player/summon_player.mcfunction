tag @s add runned
tag @s add playing
tag @s remove play_next_tick
tag @e[tag=restarting_song] remove restarting_song

execute if entity @s[scores={aparse.xsize=9..,aparse.ysize=9..}] run tellraw @p ["", {"text": "[MusicBlocks] ", "color":"gray"}, {"text": "Your Area is above the recommended limit, Disabling box rendering to increase performance!", "color":"yellow"}]

function mblock:interface/commands/kill_player

# Compute backend BPM
execute if entity @s[tag=!direct_bpm] run function mblock:objects/music_player/plugins/note_player/utils/compute_bpm
execute if entity @s[tag=direct_bpm] run scoreboard players operation @s mb.true_bpm = @s mb.bpm
execute if entity @s[tag=direct_bpm,tag=!disable_double] run scoreboard players operation @s mb.true_bpm *= #2 mb.true_bpm

tag @s add _summon_player
tag @s add _not_align
scoreboard players operation #x mb_tmpz = @s aparse.xsize
scoreboard players operation #y mb_tmpz = @s aparse.ysize
scoreboard players operation @s mb_tmpz = @s aparse.zsize
scoreboard players remove @s aparse.xsize 1
#scoreboard players remove @s aparse.ysize 1
scoreboard players set @s aparse.zsize 0
scoreboard players set @s mb_ztravel 0

execute as @s[tag=instant_start,tag=!look_neg,scores={aparse.dir=0}] align xz positioned ~.5 ~ ~.5 positioned ~ ~ ~2.6 run function mblock:objects/area_parser/run_instant
execute as @s[tag=instant_start,tag=look_neg,scores={aparse.dir=0}] align xz positioned ~.5 ~ ~.5 positioned ~ ~ ~-2.6 run function mblock:objects/area_parser/run_instant
execute as @s[tag=instant_start,tag=!look_neg,scores={aparse.dir=1}] align xz positioned ~.5 ~ ~.5 positioned ~2.6 ~ ~ run function mblock:objects/area_parser/run_instant
execute as @s[tag=instant_start,tag=look_neg,scores={aparse.dir=1}] align xz positioned ~.5 ~ ~.5 positioned ~-2.6 ~ ~ run function mblock:objects/area_parser/run_instant

execute as @s[tag=!instant_start,tag=!look_neg,scores={aparse.dir=0}] align xz positioned ~.5 ~ ~.5 positioned ~ ~ ~2 run function mblock:objects/area_parser/run_instant
execute as @s[tag=!instant_start,tag=look_neg,scores={aparse.dir=0}] align xz positioned ~.5 ~ ~.5 positioned ~ ~ ~-2 run function mblock:objects/area_parser/run_instant
execute as @s[tag=!instant_start,tag=!look_neg,scores={aparse.dir=1}] align xz positioned ~.5 ~ ~.5 positioned ~2 ~ ~ run function mblock:objects/area_parser/run_instant
execute as @s[tag=!instant_start,tag=look_neg,scores={aparse.dir=1}] align xz positioned ~.5 ~ ~.5 positioned ~-2 ~ ~ run function mblock:objects/area_parser/run_instant

scoreboard players operation @s aparse.zsize = @s mb_tmpz
scoreboard players operation @s aparse.xsize = #x mb_tmpz
scoreboard players operation @s aparse.ysize = #y mb_tmpz
tag @s remove _summon_player
tag @s remove _not_align
tag @s remove instant_start

playsound minecraft:block.barrel.close block @s ~ ~ ~ 1 1.8
