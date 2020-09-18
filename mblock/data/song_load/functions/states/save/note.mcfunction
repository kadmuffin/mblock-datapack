function mblock:block/get_tone
function mblock:block/get_sound

scoreboard players set #block_is_valid _mbtmp 1
execute if data entity @s ArmorItems[3].tag.data.notes[0][0][-1].tone run function song_load:states/save/note/count
execute unless entity @s[tag=counted] run function song_load:states/save/note/push

execute if score #sound _mbtmp matches 0 if score gb_sound sload matches 1.. run scoreboard players operation #sound _mbtmp = gb_sound sload
function mblock:sound/play

tag @s remove counted