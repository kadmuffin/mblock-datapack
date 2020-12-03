tag @s add runned
tag @s add playing
tag @s remove play_next_tick
tag @e[tag=restarting_song] remove restarting_song

function mblock:interface/commands/kill_player

# Compute backend BPM
execute if entity @s[tag=!direct_bpm,tag=compress_bpm] run tag @s add instant_start
function mblock:objects/music_player/plugins/note_player/utils/bpm_update

# Direction Table:
# South = 0
# North = 1
# West = 2
# East = 3

scoreboard players operation #x mb.travel = @s aparse.xsize
scoreboard players remove @s aparse.xsize 1

execute as @s[tag=play_2_blocks] run function mblock:objects/music_player/plugins/note_player/xyz_private/experimental/repeat
execute as @s[tag=!play_2_blocks] run function mblock:objects/music_player/plugins/note_player/xyz_private/experimental/normal

scoreboard players operation @s aparse.xsize = #x mb.travel

tag @s remove instant_start
tag @s remove play_2_blocks

playsound minecraft:block.barrel.close block @s ~ ~ ~ 1 1.8
