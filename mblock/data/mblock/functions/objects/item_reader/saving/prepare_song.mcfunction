#data modify entity @s Item.tag.data 
tellraw @p ["",{"text":"[MusicBlocks] ","color":"dark_gray"},{"text":"Saving Song...","color":"gray"}]

execute store result score bpm _array_tmp run scoreboard players get @e[tag=music_player,sort=nearest,limit=1] mb.bpm
execute store result entity @s Item.tag.song.bpm int 1 run scoreboard players get @e[tag=music_player,sort=nearest,limit=1] mb.bpm
execute store result entity @s Item.tag.song.xsize int 1 run scoreboard players get @e[tag=music_player,sort=nearest,limit=1] aparse.xsize
execute store result entity @s Item.tag.song.ysize int 1 run scoreboard players get @e[tag=music_player,sort=nearest,limit=1] aparse.ysize
execute store result score @s aparse.zsize run scoreboard players get @e[tag=music_player,sort=nearest,limit=1] aparse.zsize
execute store result score @s aparse.ysize run scoreboard players get @e[tag=music_player,sort=nearest,limit=1] aparse.ysize
execute store result score @s aparse.xsize run scoreboard players get @e[tag=music_player,sort=nearest,limit=1] aparse.xsize

scoreboard players remove @s aparse.zsize 2

scoreboard players operation ylength _array_tmp = @e[tag=music_player,sort=nearest,limit=1] aparse.ysize

scoreboard players reset estimated_zsize _array_tmp
scoreboard players reset internal_zsize _array_tmp
scoreboard players set array_size _array_tmp 0

#scoreboard players reset total_air _array_tmp
#scoreboard players operation zsize _array_tmp = length _array_tmp

tellraw @p ["",{"text":"[MusicBlocks] ","color":"dark_gray"},{"text":"BPM: ","color":"gray"},{"score":{"objective":"mb.bpm","name":"@e[tag=music_player,sort=nearest,limit=1]"},"color":"blue"}]
execute if entity @s[tag=optimize_data] run tellraw @p ["",{"text":"[MusicBlocks] ","color":"dark_gray"},{"text":"Data Optimization: ","color":"gray"},{"text":"Enabled","color":"blue"}]
execute if entity @s[tag=!optimize_data] run tellraw @p ["",{"text":"[MusicBlocks] ","color":"dark_gray"},{"text":"Data Optimization: ","color":"gray"},{"text":"Disabled","color":"red"}]

tag @s add middle
tag @s add on_y_zero
tag @s add y_zero
execute positioned ~ ~-1 ~ run function mblock:objects/item_reader/saving/y_axis/y_axis_loop
tag @s remove middle

execute positioned ~ ~ ~ run function mblock:objects/item_reader/saving/x_axis/main

tellraw @p ["",{"text":"[MusicBlocks] ","color":"dark_gray"},{"text":"Travel Time: ","color":"gray"},{"score":{"objective":"_array_tmp","name":"estimated_zsize"},"color":"blue"}]

execute store result entity @s Item.tag.song.zsize int 1 run scoreboard players get estimated_zsize _array_tmp

execute store result entity @s Item.tag.song.array_size int 1 run data get entity @s Item.tag.data


function mblock:objects/item_reader/saving/metadata/bpm
function mblock:objects/item_reader/saving/metadata/travel_time
function mblock:objects/item_reader/saving/metadata/array_size

data modify entity @s Item.tag.display.Lore append value "\"§6Optimized on Save:\""
data modify entity @s[tag=!optimize_data] Item.tag.display.Lore append value "\"§4False\""
data modify entity @s[tag=optimize_data] Item.tag.display.Lore append value "\"§aTrue\""

data modify entity @s PickupDelay set value 0s

#data remove entity @s Item.tag.tmp

tag @s remove new_song

tellraw @p ["",{"text":"[MusicBlocks] ","color":"dark_gray"},{"text":"Array Size: ","color":"gray"},{"score":{"objective":"_array_tmp","name":"array_size"},"color":"blue"}]
tellraw @p ["",{"text":"[MusicBlocks] ","color":"dark_gray"},{"text":"Operation Finished","color":"gray"}]

tp @s @p[nbt={OnGround:1b},dx=0,limit=1]