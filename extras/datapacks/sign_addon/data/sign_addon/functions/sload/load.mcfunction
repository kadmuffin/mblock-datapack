# Set Sign
setblock ~ ~ ~ oak_sign

# Copy Text to Sign
data modify block ~ ~ ~ Text1 set from entity @s ArmorItems[3].tag.note.text
data modify block ~ ~ ~ Text2 set from entity @s ArmorItems[3].tag.note.text2
data modify block ~ ~ ~ Text3 set from entity @s ArmorItems[3].tag.note.text3
data modify block ~ ~ ~ Text4 set from entity @s ArmorItems[3].tag.note.text4

# Load Color
execute store result score #color_id _mbtmp run data get entity @s ArmorItems[3].tag.note.sign
execute if score #color_id _mbtmp matches 0..15 run function sign_addon:x_private/set_from_color_id

function song_load:utils/notes/pop