execute at @s as @e[type=item,distance=0..1,limit=1,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] at @s as @p run function mblock:objects/note_wand/get_wand
execute at @s as @e[type=item,distance=0..1,limit=1,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] at @s run particle cloud ~ ~1 ~ 0.1 0.1 0.1 0.1 10
execute at @s as @e[type=item,distance=0..1,limit=1,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] at @s run playsound minecraft:block.lava.extinguish block @a[distance=0..15] ~ ~ ~ 1 1.5
execute at @s as @e[type=item,distance=0..1,limit=1,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] at @s run kill @s

execute at @s as @e[type=item,distance=0..1,limit=1,nbt={Item:{id:"minecraft:note_block"}},nbt={Item:{tag:{contains_song:1b}}},tag=!_loaded,tag=!_saved] at @s run particle minecraft:witch ~ ~0.3 ~ 0.1 0.1 0.1 0.1 10
execute at @s as @e[type=item,distance=0..1,limit=1,nbt={Item:{id:"minecraft:note_block"}},nbt={Item:{tag:{contains_song:1b}}},tag=!_loaded,tag=!_saved] at @s run playsound minecraft:block.ender_chest.open block @a[distance=0..15] ~ ~ ~ 1 0.7
execute at @s as @e[type=item,distance=0..1,limit=1,nbt={Item:{id:"minecraft:note_block"}},nbt={Item:{tag:{contains_song:1b}}},tag=!_loaded,tag=!_saved] at @s run function mblock:objects/item_reader/extract_song
execute at @s as @e[type=item,distance=0..1,limit=1,nbt={Item:{id:"minecraft:note_block"}},nbt={Item:{tag:{contains_song:1b}}},tag=!_loaded,tag=!_saved] at @s run tag @s add _loaded

execute at @s as @e[type=item,distance=0..1,limit=1,nbt={Item:{id:"minecraft:note_block"}},nbt=!{Item:{tag:{contains_song:1b}}},tag=!_saved,tag=!_loaded] at @s run particle minecraft:sneeze ~ ~0.3 ~ 0.1 0.1 0.1 0.1 10
execute at @s as @e[type=item,distance=0..1,limit=1,nbt={Item:{id:"minecraft:note_block"}},nbt=!{Item:{tag:{contains_song:1b}}},tag=!_saved,tag=!_loaded] at @s run playsound minecraft:block.ender_chest.open block @a[distance=0..15] ~ ~ ~ 1 1.5
execute at @s as @e[type=item,distance=0..1,limit=1,nbt={Item:{id:"minecraft:note_block"}},nbt=!{Item:{tag:{contains_song:1b}}},tag=!_saved,tag=!_loaded] at @s run function mblock:objects/item_reader/save_song

scoreboard players set @s mb_tmp2 0
scoreboard players set @s mb.dir 1
execute positioned ~ ~-1 ~ align xyz positioned ~.5 ~.5 ~.5 if block ~ ~-1 ~ #mblock:soundable run function mblock:block/get_sound_dir
execute positioned ~ ~-1 ~ align xyz positioned ~.5 ~.5 ~.5 if block ~ ~-1 ~ #mblock:soundable run scoreboard players operation @s mb_tmp2 = #sound _mbtmp
tag @s add updating_sound
execute at @s as @e[tag=note_player] if score @s mb_id = @e[tag=updating_sound,sort=nearest,limit=1] mb_id run scoreboard players operation @s mb_tmp2 = @e[tag=updating_sound,sort=nearest,limit=1] mb_tmp2
tag @s remove updating_sound


execute store result score @s mb_tmp run data get entity @s ItemRotation

execute if score @s mb_tmp matches 0 run function mblock:objects/area_parser/step/step_functions/kill_last
execute if score @s mb_tmp matches 0 run data merge entity @s {ItemRotation: 1b}
execute if score @s mb_tmp matches 0 run scoreboard players add @s mb_tmp 1
execute if score @s mb_tmp matches 2 run function mblock:objects/area_parser/step/step_functions/kill_last
execute if score @s mb_tmp matches 2 run data merge entity @s {ItemRotation: 3b}
execute if score @s mb_tmp matches 2 run scoreboard players add @s mb_tmp 1
execute if score @s mb_tmp matches 4 run function mblock:objects/area_parser/step/step_functions/kill_last
execute if score @s mb_tmp matches 4 run data merge entity @s {ItemRotation: 5b}
execute if score @s mb_tmp matches 4 run scoreboard players add @s mb_tmp 1
execute if score @s mb_tmp matches 6 run function mblock:objects/area_parser/step/step_functions/kill_last
execute if score @s mb_tmp matches 6 run data merge entity @s {ItemRotation: 7b}
execute if score @s mb_tmp matches 6 run scoreboard players add @s mb_tmp 1

particle minecraft:witch -36 15 -47 0.2 1 0.2 0 1
execute if score @s mb_tmp matches 1 run scoreboard players set @s aparse.dir 1
execute if score @s mb_tmp matches 1 run tag @s remove look_neg
execute if score @s mb_tmp matches 3 run scoreboard players set @s aparse.dir 0
execute if score @s mb_tmp matches 3 run tag @s remove look_neg
execute if score @s mb_tmp matches 5 run scoreboard players set @s aparse.dir 1
execute if score @s mb_tmp matches 5 run tag @s add look_neg
execute if score @s mb_tmp matches 7 run scoreboard players set @s aparse.dir 0
execute if score @s mb_tmp matches 7 run tag @s add look_neg

execute as @s[tag=update_box] run function mblock:objects/music_player/plugins/box_display/main

tag @s remove _show_path
tag @s remove update_box