# Set Data
data modify entity @s ArmorItems[3].tag.event set value {event: 3, dir: 0}

# Store Direction
function mblock:objects/area_parser/lib/block/store_magenta

execute store result entity @s ArmorItems[3].tag.event.dir int 1 run scoreboard players get @s _aparse_tmp5

# Use Old Pos & Push
tag @s add use_zpos
function song_load:utils/events/push

# Change Direction
function song_load:utils/events/x_private/built_in/update_direction