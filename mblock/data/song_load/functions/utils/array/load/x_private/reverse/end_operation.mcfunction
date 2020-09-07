tag @s remove reversing
tag @s add spacing
#function song_load:utils/array/cycle_x
tellraw @a[tag=debug] ["",{"text": "[MusicBlocks] ", "color":"gray"},{"text": "Preprocessing: Reversing finished!","color":"green"}]
function song_load:utils/array/load/spaces