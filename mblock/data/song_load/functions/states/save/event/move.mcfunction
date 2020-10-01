# Set Data
data modify entity @s ArmorItems[3].tag.event set value {event: 3, dir: 0}

# Store Direction
function mblock:objects/area_parser/events/magenta/get

scoreboard players operation @s _aparse.tmp2 = @s _aparse.tmp1
scoreboard players operation @s _aparse.tmp2 -= @s mb.dir
execute if score @s _aparse.tmp1 matches ..-1 run scoreboard players operation @s _aparse.tmp2 *= #-1 sload

execute store result entity @s ArmorItems[3].tag.event.dir int 1 run scoreboard players get @s _aparse.tmp2

## Validate Direction
tag @s add valid_dir
execute as @s[scores={mb.dir=0..1}] if score @s _aparse.tmp1 matches 0..1 run tag @s remove valid_dir
execute as @s[scores={mb.dir=2..3}] if score @s _aparse.tmp1 matches 2..3 run tag @s remove valid_dir


# Use Old Pos & Push
tag @s add use_zpos
execute as @s[tag=valid_dir] run function song_load:utils/events/push

# Change Direction
execute as @s[tag=valid_dir] run function song_load:utils/events/x_private/built_in/update_direction

tag @s remove valid_dir