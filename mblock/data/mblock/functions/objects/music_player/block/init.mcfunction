tag @s add music_player
tag @s add _ancled_pos
tag @s add check_air
tag @s add show_area
tag @s add mb_menu
tag @s remove dying_item_frame

particle firework ~ ~ ~ 0.1 0.5 0.1 0.1 15

playsound minecraft:block.beacon.power_select neutral @a[distance=0..25] ~ ~ ~ 1 1.8

fill ~1 ~-2 ~1 ~-1 ~-2 ~-1 black_glazed_terracotta[facing=west] replace air

scoreboard players set @s mb.bpm 90
# Time Signature: 4/4
scoreboard players set @s mb.sig.a 4
scoreboard players set @s mb.sig.b 4

scoreboard players set @s aparse.xsize 3
scoreboard players set @s aparse.ysize 3
scoreboard players set @s aparse.zsize 9


scoreboard players set @s mb.floor 0
scoreboard players operation @s mb.id > @e[tag=music_player] mb.id
scoreboard players add @s mb.id 1

function mblock:objects/music_player/xyz_private/get_player_view

function mblock:objects/music_player/xyz_private/update_dir

tag @s add _show_path

function mblock:objects/music_player/plugins/box_display/main

tag @s remove _show_path