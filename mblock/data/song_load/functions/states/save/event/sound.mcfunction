# Set Data
data modify entity @s ArmorItems[3].tag.event set value {id: 4, sound: 0}

# Save Sound
function mblock:block/get_sound
execute store result entity @s ArmorItems[3].tag.event.sound int 1 run scoreboard players get #sound _mbtmp


# Push Event using Util
function song_load:utils/events/push
