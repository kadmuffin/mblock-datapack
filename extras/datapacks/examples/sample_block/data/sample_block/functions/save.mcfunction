# Set Data
data modify entity @s ArmorItems[3].tag.note set value {test_block: 1b}

# Count Block for saving memory
execute if data entity @s ArmorItems[3].tag.data.notes[0][0][-1].test_block run function song_load:utils/notes/save/count

# Push Block (if last wasn't this block)
execute unless data entity @s ArmorItems[3].tag.data.notes[0][0][-1].test_block run function song_load:utils/notes/push