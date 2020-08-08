execute unless data entity @s ArmorItems[3].tag.data.notes[0][0][0].tone if data entity @s ArmorItems[3].tag.data.notes[0][0][0].air run function song_load:states/load/air

execute if data entity @s ArmorItems[3].tag.data.notes[0][0][0].tone run function song_load:states/load/note
