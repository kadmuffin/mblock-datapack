tag @s add runned
tag @s add playing
tag @s remove play_next_tick
tag @e[tag=restarting_song] remove restarting_song

#execute if entity @s[scores={aparse.xsize=9..,aparse.ysize=9..}] run tellraw @p ["", {"text": "[MusicBlocks] ", "color":"gray"}, {"text": "Your Area is above the recommended limit, Disabling box rendering to increase performance!", "color":"yellow"}]

function mblock:interface/commands/kill_player

# Compute backend BPM
execute if entity @s[tag=!direct_bpm,tag=compress_bpm] run tag @s add instant_start
function mblock:objects/music_player/plugins/note_player/utils/bpm_update

tag @s add _summon_player
tag @s add _not_align
scoreboard players operation #x mb.travel = @s aparse.xsize
scoreboard players remove @s aparse.xsize 1

# Direction Table:
# South = 0
# North = 1
# West = 2
# East = 3

execute as @s[tag=instant_start,scores={mb.dir=0}] align xz positioned ~.5 ~ ~.5 positioned ~ ~ ~1.5 run function mblock:objects/area_parser/play_wall
execute as @s[tag=instant_start,scores={mb.dir=1}] align xz positioned ~.5 ~ ~.5 positioned ~ ~ ~-1.5 run function mblock:objects/area_parser/play_wall
execute as @s[tag=instant_start,scores={mb.dir=2}] align xz positioned ~.5 ~ ~.5 positioned ~-1.5 ~ ~ run function mblock:objects/area_parser/play_wall
execute as @s[tag=instant_start,scores={mb.dir=3}] align xz positioned ~.5 ~ ~.5 positioned ~1.5 ~ ~ run function mblock:objects/area_parser/play_wall

execute as @s[tag=!instant_start,scores={mb.dir=0}] align xz positioned ~.5 ~ ~.5 positioned ~ ~ ~.5 run function mblock:objects/area_parser/play_wall
execute as @s[tag=!instant_start,scores={mb.dir=1}] align xz positioned ~.5 ~ ~.5 positioned ~ ~ ~-.5 run function mblock:objects/area_parser/play_wall
execute as @s[tag=!instant_start,scores={mb.dir=2}] align xz positioned ~.5 ~ ~.5 positioned ~-.5 ~ ~ run function mblock:objects/area_parser/play_wall
execute as @s[tag=!instant_start,scores={mb.dir=3}] align xz positioned ~.5 ~ ~.5 positioned ~.5 ~ ~ run function mblock:objects/area_parser/play_wall

scoreboard players operation @s aparse.xsize = #x mb.travel

tag @s remove _summon_player
tag @s remove _not_align
tag @s remove instant_start

playsound minecraft:block.barrel.close block @s ~ ~ ~ 1 1.8
