execute unless data entity @s ArmorItems[3].tag.data.notes[0][0][-1].tone if data entity @s ArmorItems[3].tag.data.notes[0][0][-1].air run function song_load:states/load/air

execute if data entity @s ArmorItems[3].tag.data.notes[0][0][-1].tone run function song_load:states/load/note
