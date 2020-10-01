tag @s add saving_pos

#scoreboard players operation #tmp mb_x_pos = @s mb_x_pos
#scoreboard players operation #tmp mb_z_pos = @s mb_z_pos

function mblock:objects/music_player/plugins/note_player/utils/bpm_accuracy/get

#execute if score #tmp mb_x_pos = @s mb_x_pos run kill @s
#execute if score #tmp mb_z_pos = @s mb_z_pos run kill @s

tag @s remove saving_pos