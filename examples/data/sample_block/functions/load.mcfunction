setblock ~ ~ ~ gray_glazed_terracotta

# Count Block
# The Load Util removes the element at count 0
execute if data entity @s ArmorItems[3].tag.data.notes[0][0][-1].test_block run function song_load:utils/notes/load/count