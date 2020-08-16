#summon armor_stand ~ ~ ~ {DisabledSlots: 72672, Invisible: 1b, NoGravity: 1b, Tags: [load, z_pointer, new_pointer, space_precompute], ArmorItems: [{}, {}, {}, {id: "emerald_block", Count: 1b, tag: {}}]}

execute store result score song_length sload run data get entity @s Item.tag.song.zsize
execute store result score song_xsize sload run data get entity @s Item.tag.data.notes
execute store result score song_ysize sload run data get entity @s Item.tag.song.ysize
execute store result score song_bpm sload run data get entity @s Item.tag.song.bpm

scoreboard players operation song_xmiddle sload = song_xsize sload
scoreboard players add song_xmiddle sload 1
scoreboard players operation song_xmiddle sload /= #2 sload

scoreboard players operation maxRuns_x sload_run = song_xsize sload
scoreboard players remove maxRuns_x sload_run 1
scoreboard players operation #maxDefault sload_run = maxRuns_x sload_run
scoreboard players operation #maxMin sload_run = song_xsize sload
scoreboard players remove #maxMin sload_run 3

scoreboard players reset #middle sload_tmp
execute as @e[tag=music_player,sort=nearest,limit=1] run function song_load:utils/summon/z_axis_2
scoreboard players reset #middle sload_tmp
execute as @e[tag=music_player,sort=nearest,limit=1] run function song_load:utils/summon/z_axis

execute as @e[tag=new_pointer] at @s facing entity @e[tag=z_pointer_extra,limit=1] eyes run tp ~ ~ ~

function song_load:utils/copy_data
execute as @e[tag=new_pointer] run function song_load:utils/load_dir
execute as @e[tag=z_pointer_extra] run function song_load:utils/load_dir

tag @e[tag=new_pointer,limit=1] add asking

tag @e[tag=new_pointer] remove new_pointer