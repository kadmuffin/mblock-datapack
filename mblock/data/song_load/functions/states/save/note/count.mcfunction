execute store result score #last_tone sload_tmp run data get entity @s ArmorItems[3].tag.data.notes[0][0][-1].tone
execute store result score #last_sound sload_tmp run data get entity @s ArmorItems[3].tag.data.notes[0][0][-1].sound

execute if score #last_tone sload_tmp = #tone _mbtmp if score #last_sound sload_tmp = #sound _mbtmp run tag @s add counted
execute if score #last_tone sload_tmp = #tone _mbtmp if score #last_sound sload_tmp = #sound _mbtmp run function song_load:utils/notes/save/count