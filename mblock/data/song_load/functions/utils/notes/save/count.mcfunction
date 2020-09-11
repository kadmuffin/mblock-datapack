execute if data entity @s ArmorItems[3].tag.data.notes[0][0][-1].count run function song_load:utils/notes/save/x_private/has_count
execute unless data entity @s ArmorItems[3].tag.data.notes[0][0][-1].count run function song_load:utils/notes/save/x_private/no_count
function song_load:utils/notes/continue