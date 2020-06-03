execute as @s[tag=not_update] at @s positioned ~ ~1 ~ run function mblock:objects/music_player/plugins/note_player/summon_new_player

execute as @s[tag=!not_update] store result score .x _mbtmp run data get entity @s Pos[0] 1000
execute as @s[tag=!not_update] store result score .z _mbtmp run data get entity @s Pos[2] 1000

execute as @s[tag=!not_update,tag=!look_neg,scores={aparse.dir=0}] run scoreboard players operation .z _mbtmp += @s mb.true_bpm
execute as @s[tag=!not_update,tag=look_neg,scores={aparse.dir=0}] run scoreboard players operation .z _mbtmp -= @s mb.true_bpm
execute as @s[tag=!not_update,tag=!look_neg,scores={aparse.dir=1}] run scoreboard players operation .x _mbtmp += @s mb.true_bpm
execute as @s[tag=!not_update,tag=look_neg,scores={aparse.dir=1}] run scoreboard players operation .x _mbtmp -= @s mb.true_bpm

execute store result entity @s[tag=!not_update] Pos[0] double 0.001 run scoreboard players get .x _mbtmp
execute store result entity @s[tag=!not_update] Pos[2] double 0.001 run scoreboard players get .z _mbtmp

execute as @s[tag=!not_update] store result score .x _mbtmp run data get entity @s Pos[0] 1
execute as @s[tag=!not_update] store result score .z _mbtmp run data get entity @s Pos[2] 1

execute as @s[tag=!not_update] unless score @s mb_tmpx = .x _mbtmp run scoreboard players add @s mb_ztravel 1
execute as @s[tag=!not_update] unless score @s mb_tmpz = .z _mbtmp run scoreboard players add @s mb_ztravel 1

scoreboard players operation @s[tag=!not_update] mb_tmpx = .x _mbtmp
scoreboard players operation @s[tag=!not_update] mb_tmpz = .z _mbtmp

execute if score @s[tag=!not_update] mb_ztravel >= @s aparse.zsize run kill @s

execute as @s[tag=!not_update,tag=note_player_center] positioned ~ ~1 ~ if block ~ ~ ~ black_glazed_terracotta run tag @s add _new_change2
execute as @s[tag=!not_update,tag=_new_change2] at @s positioned ~ ~1 ~ as @e[tag=note_player,tag=!_new_change2] if score @s mb_id = @e[tag=_new_change2,sort=nearest,limit=1] mb_id run kill @s
execute as @s[tag=!not_update,tag=_new_change2] at @s run kill @s

execute as @s[tag=!not_update,tag=note_player_center] positioned ~ ~1 ~ if block ~ ~ ~ purple_glazed_terracotta run tag @s add _new_change4
execute as @s[tag=!not_update,tag=_new_change4] at @s positioned ~ ~1 ~ as @e[tag=music_player,tag=!_new_change4] if score @s mb_id = @e[tag=_new_change4,sort=nearest,limit=1] mb_id at @s positioned ~ ~-1.2 ~ run function mblock:objects/music_player/plugins/note_player/summon_player

execute as @s[tag=!not_update] positioned ~ ~1 ~ run function mblock:objects/music_player/plugins/note_player/prepare_note
execute as @s[tag=!not_update] if block ~ ~ ~ redstone_lamp run setblock ~ ~1 ~ redstone_block
execute as @s[tag=!not_update] if block ~ ~ ~ redstone_lamp positioned ~ ~1 ~ unless entity @e[tag=_run_redstone,distance=0..2,limit=1] run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["_run_redstone"]}
execute as @s[tag=!not_update] positioned ~ ~1 ~ if block ~ ~ ~ note_block positioned ~ ~1 ~ if entity @e[type=item_frame,tag=music_player,distance=0..1,limit=1] run tag @s add activating
execute as @s[tag=!not_update] positioned ~ ~1 ~ if block ~ ~ ~ note_block positioned ~ ~1 ~ as @e[type=item_frame,tag=music_player,distance=0..1,sort=nearest,limit=1] at @s align xyz positioned ~.5 ~-1.2 ~.5 unless score @s mb_tmp = @e[tag=activating,limit=1] mb_id run function mblock:objects/music_player/plugins/note_player/summon_player


execute as @s[tag=!not_update,tag=note_player_center] at @s positioned ~ ~1 ~ if block ~ ~ ~ magenta_glazed_terracotta run tag @s add _new_change
execute as @s[tag=!not_update,tag=_new_change] at @s positioned ~ ~1 ~ as @e[tag=note_player,tag=!_new_change] if score @s mb_id = @e[tag=_new_change,sort=nearest,limit=1] mb_id run kill @s
execute as @s[tag=!not_update,tag=note_player_center] at @s positioned ~ ~1 ~ if block ~ ~ ~ magenta_glazed_terracotta run function mblock:objects/music_player/plugins/note_player/copy_tags

tag @s remove _new_change
tag @s remove activating