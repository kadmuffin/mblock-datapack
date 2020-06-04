#data modify entity @s Item.tag.data 
tellraw @p ["",{"text":"[MusicBlocks] ","color":"dark_gray"},{"text":"Saving Song...","color":"gray"}]

execute store result score bpm _array_tmp run scoreboard players get @e[tag=music_player,sort=nearest,limit=1] mb.bpm
execute store result entity @s Item.tag.song.bpm int 1 run scoreboard players get @e[tag=music_player,sort=nearest,limit=1] mb.bpm
execute store result entity @s Item.tag.song.xsize int 1 run scoreboard players get @e[tag=music_player,sort=nearest,limit=1] aparse.xsize
execute store result score @s aparse.zsize run scoreboard players get @e[tag=music_player,sort=nearest,limit=1] aparse.zsize
execute store result score @s aparse.xsize run scoreboard players get @e[tag=music_player,sort=nearest,limit=1] aparse.xsize

scoreboard players operation length _array_tmp = @e[tag=music_player,sort=nearest,limit=1] aparse.zsize
scoreboard players reset estimated_zsize _array_tmp
scoreboard players reset air_count _array_tmp
#scoreboard players reset total_air _array_tmp
#scoreboard players operation zsize _array_tmp = length _array_tmp

execute if entity @e[tag=music_player,tag=look_neg,distance=0..1,limit=1] run tag @s add look_neg
execute if entity @e[tag=music_player,scores={aparse.dir=0},distance=0..1,limit=1] run scoreboard players set @s aparse.dir 0
execute if entity @e[tag=music_player,scores={aparse.dir=1},distance=0..1,limit=1] run scoreboard players set @s aparse.dir 1

tellraw @p ["",{"text":"[MusicBlocks] ","color":"dark_gray"},{"text":"BPM: ","color":"gray"},{"score":{"objective":"mb.bpm","name":"@e[tag=music_player,sort=nearest,limit=1]"},"color":"blue"}]
tellraw @p ["",{"text":"[MusicBlocks] ","color":"dark_gray"},{"text":"Travel Time: ","color":"gray"},{"score":{"objective":"aparse.zsize","name":"@e[tag=music_player,sort=nearest,limit=1]"},"color":"blue"}]

execute as @s[tag=!look_neg,scores={aparse.dir=0}] positioned ~ ~-1 ~3 run function mblock:objects/item_reader/saving/loop_in_blocks
execute as @s[tag=!look_neg,scores={aparse.dir=1}] positioned ~3 ~-1 ~ run function mblock:objects/item_reader/saving/loop_in_blocks

execute as @s[tag=look_neg,scores={aparse.dir=0}] positioned ~ ~-1 ~-3 run function mblock:objects/item_reader/saving/loop_in_blocks
execute as @s[tag=look_neg,scores={aparse.dir=1}] positioned ~-3 ~-1 ~ run function mblock:objects/item_reader/saving/loop_in_blocks


execute store result entity @s Item.tag.song.zsize int 1 run scoreboard players get estimated_zsize _array_tmp

execute store result entity @s Item.tag.song.array_size int 1 run data get entity @s Item.tag.data

execute store result score array_size _array_tmp run data get entity @s Item.tag.data


function mblock:objects/item_reader/saving/metadata/bpm
function mblock:objects/item_reader/saving/metadata/travel_time
function mblock:objects/item_reader/saving/metadata/array_size


data modify entity @s PickupDelay set value 0s

data remove entity @s Item.tag.tmp

tag @s remove new_song

tellraw @p ["",{"text":"[MusicBlocks] ","color":"dark_gray"},{"text":"Array Size: ","color":"gray"},{"score":{"objective":"_array_tmp","name":"array_size"},"color":"blue"}]
tellraw @p ["",{"text":"[MusicBlocks] ","color":"dark_gray"},{"text":"Operation Finished","color":"gray"}]

tp @s @p[nbt={OnGround:1b},dx=0,limit=1]