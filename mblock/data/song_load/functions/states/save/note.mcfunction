function mblock:block/check_at_pos

execute if data entity @s ArmorItems[3].tag.data.notes[0][0][-1].tone run function song_load:states/save/note/count
execute unless entity @s[tag=counted] run function song_load:states/save/note/push

tag @s remove counted