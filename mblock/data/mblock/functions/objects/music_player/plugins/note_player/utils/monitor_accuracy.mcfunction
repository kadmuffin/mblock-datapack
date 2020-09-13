tag @s remove invalid_pos

scoreboard players operation #last_accuracy mb.bpm_accuracy = @s mb.bpm_accuracy
function mblock:objects/music_player/xyz_private/accuracy_selector

execute unless score @s mb.bpm_accuracy matches 0.. run tellraw @a ["",{"text": "[MBlock - Error] ", "color": "red"},{"text": "This feature is not supported at [x|z] > 8.000.000 blocks!"}]
execute unless score @s mb.bpm_accuracy matches 0.. run tag @s add invalid_pos

execute as @s[tag=!invalid_pos] unless score @s mb.bpm_accuracy = #last_accuracy mb.bpm_accuracy run function mblock:objects/music_player/plugins/note_player/utils/bpm_accuracy/update_msg
execute as @s[tag=invalid_pos] run function mblock:objects/music_player/plugins/note_player/utils/stop