# Set Data
data modify entity @s ArmorItems[3].tag.note set value {tone: 0}

# Save Values
execute store result entity @s ArmorItems[3].tag.note.tone int 1 run scoreboard players get #tone _mbtmp
execute if score #sound _mbtmp matches 1.. store result entity @s ArmorItems[3].tag.note.sound int 1 run scoreboard players get #sound _mbtmp

# Push Note
function song_load:utils/notes/push