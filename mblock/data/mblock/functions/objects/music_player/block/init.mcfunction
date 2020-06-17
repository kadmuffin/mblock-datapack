tag @s add music_player
tag @s add _ancled_pos
tag @s add check_air
tag @s add show_area
tag @s remove dying_item_frame

particle firework ~ ~ ~ 0.1 0.5 0.1 0.1 15

playsound minecraft:block.beacon.power_select neutral @a[distance=0..25] ~ ~ ~ 1 1.8

fill ~1 ~-2 ~1 ~-1 ~-2 ~-1 black_glazed_terracotta[facing=west]

data merge entity @s {ItemRotation: 1b}

scoreboard players set @s mb.bpm 90

# Compute a backend BPM using this formula: (BPM * 100) / 112
scoreboard players operation @s mb.true_bpm = @s mb.bpm
scoreboard players operation @s mb.true_bpm *= .scale mb.true_bpm
scoreboard players operation @s mb.true_bpm /= .bpm_div mb.true_bpm

scoreboard players set @s aparse.dir 1
scoreboard players set @s aparse.xsize 3
scoreboard players set @s aparse.ysize 3
scoreboard players set @s aparse.zsize 15

scoreboard players add global mb_id 1
scoreboard players operation @s mb_id = global mb_id

function mblock:objects/music_player/xyz_private/store_arrow_position

tag @s add _show_path

function mblock:objects/music_player/plugins/box_display/main

tag @s remove _show_path