# Set Data
data modify entity @s ArmorItems[3].tag.note set value {sign: -1b}

# Copy Sign Text
data modify entity @s ArmorItems[3].tag.note.text set from block ~ ~ ~ Text1
data modify entity @s ArmorItems[3].tag.note.text2 set from block ~ ~ ~ Text2
data modify entity @s ArmorItems[3].tag.note.text3 set from block ~ ~ ~ Text3
data modify entity @s ArmorItems[3].tag.note.text4 set from block ~ ~ ~ Text4

# Save Color
execute if block ~ ~-1 ~ #sign_addon:colors run function sign_addon:x_private/get_color_id
execute store result entity @s ArmorItems[3].tag.note.sign byte 1 run scoreboard players get #color_id _mbtmp

# Push Block
function song_load:utils/notes/push