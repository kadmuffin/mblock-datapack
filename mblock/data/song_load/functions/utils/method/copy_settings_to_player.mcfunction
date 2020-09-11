tellraw @a[tag=debug] ["",{"text": "[MusicBlocks] ","color":"dark_gray"},{"text": "Copying song data to MusicPlayer", "color":"gold"}]

tag @s add calculate_xsize
execute if data entity @s ArmorItems[3].tag.song.xsize if score #force_xsize sload_tmp matches 1.. run function song_load:utils/parse/parse_xsize
execute as @s[tag=calculate_xsize] run function song_load:utils/xsize_to_width

# Paste Box Size
scoreboard players operation @e[tag=music_player,sort=nearest,limit=1] aparse.xsize = song_width sload
scoreboard players operation @e[tag=music_player,sort=nearest,limit=1] aparse.ysize = song_ysize sload
scoreboard players operation @e[tag=music_player,sort=nearest,limit=1] aparse.zsize = song_length sload
scoreboard players add @e[tag=music_player,sort=nearest,limit=1] aparse.zsize 2

execute if data entity @s ArmorItems[3].tag.song.bpm store result score @e[tag=music_player,sort=nearest,limit=1] mb.bpm run data get entity @s ArmorItems[3].tag.song.bpm
execute unless data entity @s ArmorItems[3].tag.song.bpm run tellraw @a[tag=debug] ["",{"text": " + ","color":"red","hoverEvent": {"action": "show_text","value": "Error"}},{"text": "Couldn't find BPM on song.bpm", "color":"gray"}]

# Parse Raw BPM
execute if data entity @s ArmorItems[3].tag.song.raw_bpm run function song_load:utils/parse/raw_nbs
# Parse Compress BPM
execute if data entity @s ArmorItems[3].tag.song.comp_bpm run function song_load:utils/parse/compress_bpm
# Parse NBS BPM
execute if data entity @s ArmorItems[3].tag.song.nbs_bpm run function song_load:utils/parse/nbs_bpm

function mblock:interface/utils/x_private/update_size