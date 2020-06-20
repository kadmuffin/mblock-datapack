tag @s add player
tag @s[scores={flying=1..}] add flying
tag @s[nbt={OnGround:1b}] remove flying
tag @s remove extended
tag @s[nbt={Inventory:[{Slot: 100b, id:"minecraft:leather_boots", tag:{player:1b}}]},gamemode=!spectator] add extended
execute as @s[tag=!anim_boots,tag=extended] run particle note ~ ~1 ~ 1 1 1 0.1 8
execute as @s[tag=!anim_boots,tag=extended] run playsound minecraft:block.note_block.bit player @a[distance=0..15] ~ ~1 ~ 1 1.65
tag @s[tag=extended] add anim_boots
execute as @s[tag=anim_boots,tag=!extended] run playsound minecraft:block.note_block.bit player @a[distance=0..15] ~ ~1 ~ 1 1.35

tag @s[tag=!extended] remove anim_boots

execute as @s[tag=extended] at @s run function mblock:objects/music_player/xyz_private/parse_player_direction

#execute as @s[nbt={OnGround:1b},gamemode=!spectator] at @s positioned ~ ~ ~ align xz positioned ~.5 ~ ~.5 run function mblock:block/player/play_block
execute as @s[nbt={OnGround:1b},gamemode=!spectator] at @s positioned ~ ~-1 ~ align xyz positioned ~.5 ~.5 ~.5 run function mblock:block/player/play_block
execute as @s[nbt={OnGround:1b},tag=extended] at @s positioned ~ ~1 ~ align xyz positioned ~.5 ~.5 ~.5 run function mblock:block/player/play_block

execute as @s[nbt={OnGround:1b},tag=extended,scores={aparse.dir=0}] at @s run function mblock:objects/music_player/plugins/entity_play/dir_0
execute as @s[nbt={OnGround:1b},tag=extended,scores={aparse.dir=1}] at @s run function mblock:objects/music_player/plugins/entity_play/dir_1

execute as @s[tag=flying,gamemode=!survival,gamemode=!adventure] at @s positioned ~ ~-0.65 ~ align xz positioned ~.5 ~ ~.5 if block ~ ~ ~ #mblock:octaves run function mblock:block/player/play_block
#execute as @s[nbt={OnGround:1b}] at @s positioned ~1 ~ ~ align xz positioned ~.5 ~ ~.5 run function mblock:block/player/play_block
#execute as @s[nbt={OnGround:1b}] at @s positioned ~-1 ~ ~ align xz positioned ~.5 ~ ~.5 run function mblock:block/player/play_block
#execute as @s[nbt={OnGround:1b}] at @s positioned ~ ~ ~1 align xz positioned ~.5 ~ ~.5 run function mblock:block/player/play_block
#execute as @s[nbt={OnGround:1b}] at @s positioned ~ ~ ~-1 align xz positioned ~.5 ~ ~.5 run function mblock:block/player/play_block

#execute as @s at @s positioned ~-1 ~ ~ run function mblock:block/player/play_block
#execute as @s at @s positioned ~ ~ ~1 run function mblock:block/player/play_block
#execute as @s at @s positioned ~ ~ ~-1 run function mblock:block/player/play_block
#execute as @s[nbt={OnGround:1b}] at @s positioned ^2 ^ ^ run function mblock:block/player/play_block
#execute as @s[nbt={OnGround:1b}] at @s positioned ^-2 ^ ^ run function mblock:block/player/play_block

scoreboard players reset @s flying
