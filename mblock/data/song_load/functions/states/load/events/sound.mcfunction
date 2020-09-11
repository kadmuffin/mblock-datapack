# Load Sound
setblock ~ ~ ~ blue_glazed_terracotta

execute store result score #sound _mbtmp run data get entity @s ArmorItems[3].tag.event.sound

function song_load:states/load/note/detect_sound_dir
function mblock:sound/sounds/xyz_private/set_sound_block_dir
