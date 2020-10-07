scoreboard players reset #sound_dir _mbtmp

execute store result score #tone _mbtmp run data get entity @s ArmorItems[3].tag.data.notes[0][0][-1].tone
execute store result score #sound _mbtmp run data get entity @s ArmorItems[3].tag.data.notes[0][0][-1].sound
execute if data entity @s ArmorItems[3].tag.data.notes[0][0][-1].sound_dir store result score #sound_dir _mbtmp run data get entity @s ArmorItems[3].tag.data.notes[0][0][-1].sound_dir

function mblock:note/tone/set
execute if score #sound _mbtmp matches 0 if score @s mbn.sound matches 1.. run scoreboard players operation #sound _mbtmp = @s mbn.sound
execute unless score #sound_dir _mbtmp matches 0.. run function song_load:states/load/note/detect_sound_dir

# Use Util for Count
function song_load:utils/notes/load/count

function mblock:note/sound/set_dir
execute if score #sound _mbtmp matches 0 if score gb_sound sload matches 1.. run scoreboard players operation #sound _mbtmp = gb_sound sload
execute as @s[tag=!mute] run function mblock:note/play

function song_load:utils/notes/continue