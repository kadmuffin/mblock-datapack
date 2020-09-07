# Set Sign
setblock ~ ~ ~ oak_sign

# Copy Text to Sign
data modify block ~ ~ ~ Text1 set from entity @s ArmorItems[3].tag.event.text
data modify block ~ ~ ~ Text2 set from entity @s ArmorItems[3].tag.event.text2

# Pop event from array
function song_load:utils/events/pop
