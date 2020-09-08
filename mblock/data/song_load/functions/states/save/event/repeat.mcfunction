# Set Data
data modify entity @s ArmorItems[3].tag.event set value {event: 2}

# Use Old Pos & Push
tag @s add use_zpos
function song_load:utils/events/push

# Force End
scoreboard players operation @s sload = song_length sload