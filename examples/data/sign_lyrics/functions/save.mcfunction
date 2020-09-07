# Set Data
data modify entity @s ArmorItems[3].tag.event set value {id: 1234, text: "", text2: ""}

# Copy Sign Text
data modify entity @s ArmorItems[3].tag.event.text set from block ~ ~ ~ Text1
data modify entity @s ArmorItems[3].tag.event.text2 set from block ~ ~ ~ Text2

# Push Event
function song_load:utils/events/push