execute if data entity @s ArmorItems[3].tag.data.notes[0][0][-1].air run function song_load:states/save/air/count
execute unless data entity @s ArmorItems[3].tag.data.notes[0][0][-1].air run function song_load:states/save/air/push

execute if score @s sload_mov >= song_length sload_tmp run data remove entity @s ArmorItems[3].tag.data.notes[0][0][-1]