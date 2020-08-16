scoreboard players reset #sound_dir _mbtmp

execute store result score #tone _mbtmp run data get entity @s ArmorItems[3].tag.data.notes[0][0][-1].tone
execute store result score #sound _mbtmp run data get entity @s ArmorItems[3].tag.data.notes[0][0][-1].sound
execute if data entity @s ArmorItems[3].tag.data.notes[0][0][-1].sound_dir store result score #sound_dir _mbtmp run data get entity @s ArmorItems[3].tag.data.notes[0][0][-1].sound_dir

execute unless score #sound_dir _mbtmp matches 0.. run function mblock:objects/item_reader/utils/xyz_private/sound_dir_not_specified

execute store result score #tone_count sload_tmp run data get entity @s ArmorItems[3].tag.data.notes[0][0][-1].count
scoreboard players remove #tone_count sload_tmp 1

execute if score #tone_count sload_tmp matches 1.. store result entity @s ArmorItems[3].tag.data.notes[0][0][-1].count int 1 run scoreboard players get #tone_count sload_tmp
execute unless score #tone_count sload_tmp matches 1.. run data remove entity @s ArmorItems[3].tag.data.notes[0][0][-1]


function mblock:sound/tones/set_tone_block
function mblock:sound/sounds/xyz_private/set_sound_block_dir

function mblock:sound/play