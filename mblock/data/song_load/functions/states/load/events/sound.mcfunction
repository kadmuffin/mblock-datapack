# Load Sound
setblock ~ ~ ~ blue_glazed_terracotta

execute store result score #sound _mbtmp run data get entity @s ArmorItems[3].tag.event.sound

function mblock:objects/item_reader/utils/xyz_private/sound_dir_not_specified
function mblock:sound/sounds/xyz_private/set_sound_block_dir
