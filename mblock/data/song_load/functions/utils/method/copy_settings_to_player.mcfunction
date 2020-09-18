tellraw @a[tag=debug] ["",{"text": "[MusicBlocks] ","color":"dark_gray"},{"text": "Copying song data to MusicPlayer", "color":"gold"}]

tag @s add calculate_xsize
execute if data entity @s ArmorItems[3].tag.song.xsize if score #force_xsize sload_tmp matches 1.. run function song_load:utils/parse/parse_xsize
execute as @s[tag=calculate_xsize] run function song_load:utils/xsize_to_width

# Reset Trigger Saves
scoreboard players reset @a mb_id

# Paste Box Size
scoreboard players operation @e[tag=mplayer_block,limit=1] aparse.xsize = song_width sload
scoreboard players operation @e[tag=mplayer_block,limit=1] aparse.ysize = song_ysize sload
scoreboard players operation @e[tag=mplayer_block,limit=1] aparse.zsize = song_length sload

execute if data entity @s ArmorItems[3].tag.song.bpm store result score @e[tag=mplayer_block,limit=1] mb.bpm run data get entity @s ArmorItems[3].tag.song.bpm
execute unless data entity @s ArmorItems[3].tag.song.bpm run tellraw @a[tag=debug] ["",{"text": " + ","color":"red","hoverEvent": {"action": "show_text","value": "Error"}},{"text": "Couldn't find BPM on song.bpm", "color":"gray"}]

# Parse Raw BPM
execute if entity @p[tag=debug] if data entity @s ArmorItems[3].tag.song.raw_bpm run function song_load:utils/parse/raw_nbs
# Parse Compress BPM
execute if data entity @s ArmorItems[3].tag.song.comp_bpm run function song_load:utils/parse/compress_bpm
# Parse NBS BPM
execute if data entity @s ArmorItems[3].tag.song.nbs_bpm run function song_load:utils/parse/nbs_bpm
# Parse Global Sound
execute if data entity @s ArmorItems[3].tag.song.gb_sound run function song_load:utils/parse/gb_sound


execute as @e[tag=z_step] if score @s aparse.id = @e[tag=mplayer_block,limit=1] aparse.id run kill @s
tag @e[tag=mplayer_block,limit=1] remove mplayer_block