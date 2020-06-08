tag @s remove save_stage_5

data modify entity @s CustomName set value "\"§8[MusicBlocks] §aData Ready\""

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

scoreboard players reset @s _array_tmp2
tag @s remove _save_scheduled
